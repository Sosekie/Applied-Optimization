#pragma once

#include <iostream>
#include <FunctionBase/FunctionBase.hh>
#include <cmath>

//== NAMESPACES ===============================================================

namespace AOPT {

    //== CLASS DEFINITION =========================================================
    /* This implements a generic non-convex function.
     * Its sole purpose is to test the ConvexitTest class */
    class FunctionNonConvex2D final : public FunctionBase {
    public:
        // f(x,y) = (y-x^2)^2+cos^2(4*y)*(1-x)^2+x^2+y^2

        // constructor
        FunctionNonConvex2D() {}

        // number of unknowns
        inline virtual int n_unknowns() { return 2; }

        /** funcion evaluation
         * \param _x the value at which to evaluate the function.
         *           It should be a 2D vector*/
        inline virtual double eval_f(const Vec &_x) {
            //------------------------------------------------------//
            //Todo: implement the function f(x,y) = (y-x^2)^2+cos^2(4*y)*(1-x)^2+x^2+y^2
            
            double x = _x[0];
            double y = _x[1];
            bool with_cmath = false;
            //implement cosine with and without <cmath>:
            if (with_cmath){
                double func = pow(y-x*x, 2) + pow(cos(4*y)*(1-x), 2) + x*x + y*y;
                return func;
            }else {
                //Using Taylor Expansion
                double cos_x = (4*y);
                double cos_manual = 1.0;
                double term = 1.0;
                int n = 1000;
                for (int i=1; i<=n; i++){
                    term *= -cos_x*cos_x / (2*i*(2*i-1));
                    cos_manual += term;
                }
                double func = (y-x*x)*(y-x*x) + (cos_manual*(1-x))*(cos_manual*(1-x)) + x*x + y*y;
                return func;
            }
            
            //------------------------------------------------------//
        }

        // gradient evaluation. Not necessary for this function
        inline virtual void eval_gradient(const Vec &_x, Vec &_g) {}

        // hessian matrix evaluation. Not necessary for this function
        inline virtual void eval_hessian(const Vec &_x, Mat &_H) {}
    };

//=============================================================================
}


