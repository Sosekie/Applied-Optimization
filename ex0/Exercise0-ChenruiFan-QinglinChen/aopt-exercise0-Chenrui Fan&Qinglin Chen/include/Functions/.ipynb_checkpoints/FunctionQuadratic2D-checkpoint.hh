#pragma once

#include <iostream>
#include <FunctionBase/FunctionBase.hh>

//== NAMESPACES ===================================================================

namespace AOPT {

    //== CLASS DEFINITION =========================================================

/* Implements a quadratic 2D function of the form f(x,y) = 0.5(x^2 + gamma *y^2)
 * gamma is given as a constructor parameter (see right below) */
    class FunctionQuadratic2D final : public FunctionBase {
    public:
        // f(x,y) = 0.5(x^2 + gamma *y^2)

        // constructor
        FunctionQuadratic2D(const double _gamma = 1)
                : FunctionBase(), gamma_(_gamma) {}

        // number of unknowns
        inline virtual int n_unknowns() { return 2; }

        /** funcion evaluation
         * \param _x the value at which to evaluate the function.
         *           It should be a 2D vector*/
        inline virtual double eval_f(const Vec &_x) {
            //------------------------------------------------------//
            //Todo: implement the function f(x,y) = 0.5(x^2 + gamma *y^2)

            // because _x is a 2D vector, let x = _x[0], y = _x[1]
            double x = _x[0];
            double y = _x[1];
            double func = 0.5*(x*x + gamma_*y*y);
                
            return func;
            //------------------------------------------------------//
        }

        /** evaluates the quadratic function's gradient
         * \param _x the point on which to evaluate the function
         * \param _g gradient output */
        inline virtual void eval_gradient(const Vec &_x, Vec &_g) {

            double x = _x[0];
            double y = _x[1];
            //due to: d(0.5(x^2 + gamma *y^2))/dx = x
            _g[0] = x;
            //due to: d(0.5(x^2 + gamma *y^2))/dy = gamma*y
            _g[1] = gamma_*y;

        }

        /** evaluates the quadratic function's Hessian
         * \param _x the point on which to evaluate the Hessian.
         *           Actually useless since the Hessian is constant but the method
         *           should still use the same interface as FunctionBase
         * \param _H Hessian output */
        inline virtual void eval_hessian(const Vec &_x, Mat &_H) {

            // why Hessian is constant because:
            double hessian_xx = 1.0;        // d^2f/dx^2
            double hessian_yy = gamma_;     // d^2f/dy^2
            double hessian_xy = 0.0;        // d^2f/dxdy
            double hessian_yx = 0.0;        // d^2f/dydx

            _H << hessian_xx, hessian_xy,
                  hessian_yx, hessian_yy;

        }

        double get_gamma() const { return gamma_; }

    private:
        double gamma_;
    };

//=============================================================================
}
