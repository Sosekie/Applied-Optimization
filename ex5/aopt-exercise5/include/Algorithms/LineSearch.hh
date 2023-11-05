#pragma once

#include <FunctionBase/FunctionBaseSparse.hh>

//== NAMESPACES ===============================================================

namespace AOPT {

    //== CLASS DEFINITION =========================================================

    class LineSearch {
    public:
        typedef FunctionBaseSparse::Vec Vec;
        typedef FunctionBaseSparse::SMat SMat;

        /** Back-tracking line search method
         *
         * \param _problem a pointer to a specific Problem, which can be any type that
         *        has the same interface as FunctionBase's (i.e. with eval_f, eval_gradient, etc.)
         * \param _x starting point of the method. Should be of the same dimension as the Problem's
         * \param _g gradient at the starting point.
         * \param _dx delta x
         * \param _t0 inital step of the method
         * \param _alpha and _tau variation constant, as stated by the method's definition
         * \return the final step t computed by the back-tracking line search */
        template <class Problem>
        static double backtracking_line_search(Problem *_problem,
                                               const Vec &_x,
                                               const Vec &_g,
                                               const Vec &_dx,
                                               const double _t0,
                                               const double _alpha = 0.5,
                                               const double _tau = 0.75) {
            
            double t(0);
            
            //------------------------------------------------------//
            //TODO: implement the backtracking line search algorithm
            
            // Calculate the initial function value and the decrease condition
            double f_x = _problem->eval_f(_x);
            double decrease_condition = _alpha * _g.dot(_dx);

            // Initialize the new function value
            double f_x_new;

            Vec x_new(_x.size());

            while (true) {
                // x_new = x + t * dx
                x_new = _x + t * _dx;

                f_x_new = _problem->eval_f(x_new);

                if (std::isnan(f_x_new)) {
                    t *= _tau;
                    continue;
                }

                if (f_x_new <= f_x + t * decrease_condition) {
                    break;
                }
                
                t *= _tau;
            }

            //------------------------------------------------------//

            return t;
        }


    private:
        
    };
//=============================================================================
}



