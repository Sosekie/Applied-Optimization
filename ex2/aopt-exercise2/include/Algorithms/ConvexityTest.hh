#pragma once

#include <Utils/RandomNumberGenerator.hh>
#include <FunctionBase/FunctionBase.hh>

//== NAMESPACES ===================================================================

namespace AOPT {

    //== CLASS DEFINITION =========================================================

    class ConvexityTest {
    public:
        using Vec = FunctionBase::Vec; ///< Eigen::VectorXd
        using Mat = FunctionBase::Mat; ///< Eigen::MatrixXd

        ConvexityTest() {}

        ~ConvexityTest() {}

    public:

        /** Checks whether the function given as argument is convex or not.
         * If it is not, it should output a point not satisfying the convexity property
         * before returning false.
         * \param _function a function pointer that should be any class inheriting
         * from FunctionBase, e.g. FunctionQuadraticND
         * \param min the minimum value of all tested points' coordinate
         * \param max the maximum value of all tested points' coordinate
         * \param n_evals the number of evaluations/samples tested on the
         *        line between the two points on the function */
        static bool isConvex(FunctionBase* _function, const double min = -1000., const double max = 1000., const int n_evals = 10) {
            const int n = _function->n_unknowns();
            //randomly generate number from min to max
            RandomNumberGenerator rng(min, max);
            
            const int max_sampling_points(1000000);

            //------------------------------------------------------//
            //Todo: Add your code here

            for (int sample = 0; sample < max_sampling_points; sample++)
            {
                // Generate two random points p1 and p2
                Vec p1 = rng.get_random_nd_vector(n);
                Vec p2 = rng.get_random_nd_vector(n);
                
                for (int eval = 0; eval <= n_evals; eval++) { 
                    
                    // Theta is between [0, 1]
                    double theta = static_cast<double>(eval) / static_cast<double>(n_evals);
                    Vec p = theta * p1 + (1.0 - theta) * p2;
                    
                    // Check the convexity condition
                    if (_function->eval_f(p) > theta * _function->eval_f(p1) + (1.0 - theta) * _function->eval_f(p2)) {

                        std::cout << "The function is not convex at point:" << std::endl;
                        printPathInfo(p1, p2, p, theta);
                        return false;
                    }
                }
            }

            std::cout << "The function is convex!" << std::endl;
            return true;
            //------------------------------------------------------//
        }


    private:
        static void printPathInfo(FunctionBase::Vec p1, FunctionBase::Vec p2, FunctionBase::Vec p, double t) {
            std::cout << "path: p(t) = (1 - t) * p1 + t * p2; \nwith:\n"
                      << "  p1 = (" << p1.transpose() << ")\n"
                      << "  p2 = (" << p2.transpose() << ")\n"
                      << "  p (t = " << t << ") = (" << p.transpose() << ")" << std::endl;
        }

    };




}
