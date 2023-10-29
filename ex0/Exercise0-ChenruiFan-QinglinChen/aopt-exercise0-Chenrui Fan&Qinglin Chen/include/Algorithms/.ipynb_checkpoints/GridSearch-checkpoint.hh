#pragma once

#include <Functions/FunctionQuadratic2D.hh>
#include <Functions/FunctionQuadraticND.hh>
#include <Functions/FunctionNonConvex2D.hh>
#include <vector>

//== NAMESPACES ===================================================================

namespace AOPT {

    //== CLASS DEFINITION =========================================================
    class GridSearch {
    public:
        using Vec = FunctionBase::Vec;
        using Mat = FunctionBase::Mat;

        GridSearch(const int _n_cells = 10) : n_cells_(_n_cells){}
        ~GridSearch() {}

    public:

        /** Evaluation of a 2D function over the whole grid to find its minimum
         *
         * \param _func a pointer to any 2D function inheriting from FunctionBase
         *              (see include/FunctionBase/FunctionBase.hh)
         * \param _x_l the coordinates of the lower corner of the grid
         * \param _x_u the coordinates of the upper corner of the grid.
         *             _x_l and _x_u together define a square in which the grid lies
         * \return 0 if all went well, -1 if not.*/
        int grid_search_2d(FunctionBase* _func, const Vec& _x_l, const Vec& _x_u, double& _f_min) const {
            std::cout<<"Grid searching the minimum of a 2-D function..."<<std::endl;
            double f = 0., fmin = std::numeric_limits<double>::max();
            
            Vec x_min(2);
            
            //------------------------------------------------------//
            //Todo: implement the 2d version of the grid search
            // algorithm to find minimum value of _func between _x_l and _x_u
            //------------------------------------------------------//
           
            double step_in_x = (_x_u[0] - _x_l[0]) / n_cells_;
            double step_in_y = (_x_u[1] - _x_l[1]) / n_cells_;
            
            double min_list[100];
            int min_index = 2;
            for (int i = 0; i <= n_cells_; i++) {
                for (int j = 0; j <= n_cells_; j++) {
                    Vec x(2);
                    x[0] = _x_l[0] + i * step_in_x;
                    x[1] = _x_l[1] + j * step_in_y;
                    
                    // if other points are equal to the minimum value, record them!
                    double f = _func->eval_f(x);
                    if (f < fmin) {
                        fmin = f;
                        x_min = x;
                        
                        // when finding new minimum value, forget all the point we have, and record it!
                        double min_list[100];
                        min_list[0] = x_min[0];
                        min_list[1] = x_min[1];
                        min_index = 2;
                        std::cout<<"New Minimum! Num:"<<min_index/2<<" Value:"<<fmin<<" Position:("<<x_min[0]<<" "<<x_min[1]<<")"<<std::endl;
                        
                    }else if (f == fmin) {
                        x_min = x;
                        
                        // save equal minimum value
                        min_list[min_index] = x_min[0];
                        min_list[min_index+1] = x_min[1];
                        min_index += 2;
                        std::cout<<"Same Minimum Num:"<<min_index/2<<" Value:"<<fmin<<" Position:("<<x_min[0]<<" "<<x_min[1]<<")"<<std::endl;
                    }
                }
            }
            
            //------------------------------------------------------//
            _f_min = fmin;
            std::cout<<"Minimum value of the function is: "<<fmin<<" at x:\n"<<std::endl;
            // print all the points that equal to minimum value
            for (int i = 0; i < min_index; i += 2) {
                std::cout << "(" << min_list[i] << "," << min_list[i + 1] << ")" << std::endl;
            }
            return 0;
        }

        int grid_search_nd_with_recursive(FunctionBase* _func, const Vec& _x_l, const Vec& _x_u, Vec& x_current, int dimension, int N_dimension, double& f_min, Vec& x_min, int points_count) const {

            if (dimension == N_dimension) {
                return 0;
            }

            double step = (_x_u[dimension] - _x_l[dimension]) / n_cells_;
            for (int i = 0; i <= n_cells_; i++) {
                x_current[dimension] = _x_l[dimension] + i * step;
                points_count++;
                
                // Analyse the order of traversal of each point
                // std::cout <<"x_current:"<< std::endl;
                // std::cout <<x_current<< std::endl;
                // std::cout <<"points count:"<<points_count<< std::endl;
                // std::cout <<std::endl;
                
                double f = _func->eval_f(x_current);
                if (f < f_min) {
                    f_min = f;
                    x_min = x_current;
                    std::cout << "find new minimum! " << f_min << " at x:\n" << x_min << std::endl;
                }else if (f == f_min) {
                    x_min = x_current;
                    std::cout << "find same minimum " << f_min << " at x:\n" << x_min << std::endl;
                }
                
                grid_search_nd_with_recursive(_func, _x_l, _x_u, x_current, dimension + 1, N_dimension, f_min, x_min, points_count);
            }

            return 0;
        }
        
        /** Evaluation of an ND function over the whole grid to find its minimum
         *  using an iterative approach
         *
         * \param _func a pointer to any ND function inheriting from FunctionBase
         *              (see include/FunctionBase/FunctionBase.hh)
         * \param _x_l the coordinates of the lower corner of the grid
         * \param _x_u the coordinates of the upper corner of the grid.
         *             _x_l and _x_u together define an ND cuboid in which the grid lies
         * \return 0 if all went well, -1 if not.*/
        int grid_search_nd(FunctionBase* _func, const Vec& _x_l, const Vec& _x_u, double& _f_min) const {
            int n = _func->n_unknowns();
            if (_x_l.size() != n || _x_u.size() != n) {
                std::cout << "Error: input limits are not of correct dimension!" << std::endl;
                return -1;
            }
            std::cout << "Grid searching the minimum of a " << n << "-D function..." << std::endl;

            double f_min = std::numeric_limits<double>::max();
            Vec x_min(n);
            //------------------------------------------------------//
            //Todo: implement the nd version of the grid search
            // algorithm to find minimum value of a nd quadratic function
            // set f_min with the minimum, which is then stored in the referenced argument _f_min

            Vec x_current(n);
            
            // record current x
            x_current = _x_l;
            int points_count = 0;
            grid_search_nd_with_recursive(_func, _x_l, _x_u, x_current, 0, n, f_min, x_min, points_count);
            
            //------------------------------------------------------//
            _f_min = f_min;
            std::cout << "Minimum value of the function is: " << f_min << " at x:\n" << x_min << std::endl;

            return 0;
        }



    private:
        int n_cells_;
    };

    //=============================================================================
}





