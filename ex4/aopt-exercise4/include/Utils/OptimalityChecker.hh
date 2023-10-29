#pragma once

#include <FunctionBase/FunctionBase.hh>
#include <vector>
//== NAMESPACES ===============================================================

namespace AOPT {

//== CLASS DEFINITION =========================================================
    class OptimalityChecker {
    public:
        using Vec = Eigen::VectorXd;

        OptimalityChecker(const double _epsilon = 1e-13) : eps_(_epsilon) {}


        /** Checks whether a particular optimization problem satisfies the KKT conditions
         *
         * \param _objective pointer to the objective function, which should be any function
         *        inheriting from FunctionBase
         *
         * \param _inequality_constraints an array containing the inequalities,
         *        each representend as a function inheriting from FunctionBase,
         *        such that _inequality_constraints[i].eval_f(x) <= 0 for all i
         *        if x is in the feasible set
         *
         * \param _equality_constraints an array containing the equalities,
         *        each representend as a function inheriting from FunctionBase,
         *        such that _equality_constraints[i].eval_f(x) == 0 for all i
         *        if x is in the feasible set
         *
         * \param _query_point the point at which the KKT conditions should be checked
         *
         * \param _lambda the lambda coefficients of the dual problem.
         *        It should be of the same dimension as _inequality_constraints since
         *        there is one lambda factor per inequality in the dual problem
         * \param _nu the nu coefficients of the dual problem.
         *        It should be of the same dimension as _equality_constraints since
         *        there is one nu factor per equality in the dual problem
         * */
        bool is_KKT_satisfied(FunctionBase *_objective, const std::vector<FunctionBase *>& _inequality_constraints,
                              const std::vector<FunctionBase *>& _equality_constraints,
                              const Vec& _query_point, const Vec& _lambda, const Vec& _nu) {
            //------------------------------------------------------//
            //Todo:
            //1. check only condition 4 in case there are no constraints
            //2. check inequality constraints (cond. 1.)
            //3. check equality constraints (cond. 1.)
            //4. check lambda (cond. 2.)
            //5. check complementary slackness (cond. 3.)
            //6. check gradient (cond. 4.)
            //------------------------------------------------------//

            // 1. check only condition 4 in case there are no constraints
            // if there are no constraints, we can only check the gradients of this function
            // give a vector to store output
            Vec gradient_vec(_query_point.size());
            // use function to calculate gradient and get results
            _objective->eval_gradient(_query_point, gradient_vec);
            // if all components of this vector are less than epsilon
            if (gradient_vec.isZero(eps_)) {
                return true;
            }

            // 2. check inequality constraints (cond. 1.)
            // get every constraint in _inequality_constraints and validate them
            for (const auto& constraint : _inequality_constraints) {
                if (constraint->eval_f(_query_point) > eps_) {
                    return false;
                }
            }

            // 3. check equality constraints (cond. 1.)
            // same like above
            for (const auto& constraint : _equality_constraints) {
                if (std::abs(constraint->eval_f(_query_point)) > eps_) {
                    return false;
                }
            }

            // 4. check lambda (cond. 2.)
            // here I use "lambda_value < eps_", I also test "lambda_value < - eps_", both are right
            for (const auto& lambda_value : _lambda) {
                if (lambda_value < eps_) {
                    return false;
                }
            }

            // 5. check complementary slackness (cond. 3.)
            for (size_t i = 0; i < _inequality_constraints.size(); i++) {
                // get product of lamda and inequality constraint result
                double product = _lambda[i] * _inequality_constraints[i]->eval_f(_query_point);
                // it should be 0 (here is near 0)
                if (std::abs(product) > eps_) {
                    return false;
                }
            }

            // 6. check gradient (cond. 4.)
            Vec gradient = gradient_vec; // use previously computed gradient
            Vec temp_gradient(_query_point.size());
            for (size_t i = 0; i < _inequality_constraints.size(); i++) {
                _inequality_constraints[i]->eval_gradient(_query_point, temp_gradient);
                gradient += _lambda[i] * temp_gradient;
            }
            for (size_t i = 0; i < _equality_constraints.size(); ++i) {
                _equality_constraints[i]->eval_gradient(_query_point, temp_gradient);
                gradient += _nu[i] * temp_gradient;
            }

            if (!gradient.isZero(eps_)) {
                return false;
            }

            return true;
                    
        }

    private:
        double eps_;
    };
//=============================================================================
}



