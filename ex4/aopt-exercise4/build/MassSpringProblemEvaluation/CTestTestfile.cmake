# CMake generated Testfile for 
# Source directory: /mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation
# Build directory: /mnt/c/4_Code/Optimization/aopt-exercise4/build/MassSpringProblemEvaluation
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(MassSpringSystem.ProblemSetup "/mnt/c/4_Code/Optimization/aopt-exercise4/build/Build/bin/MassSpringProblemEvaluation-test" "--gtest_filter=MassSpringSystem.ProblemSetup" "--gtest_color=yes")
set_tests_properties(MassSpringSystem.ProblemSetup PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.22/Modules/GoogleTest.cmake;400;add_test;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;26;gtest_add_tests;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;0;")
add_test(SpringElements.SpringElement2DFunctions "/mnt/c/4_Code/Optimization/aopt-exercise4/build/Build/bin/MassSpringProblemEvaluation-test" "--gtest_filter=SpringElements.SpringElement2DFunctions" "--gtest_color=yes")
set_tests_properties(SpringElements.SpringElement2DFunctions PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.22/Modules/GoogleTest.cmake;400;add_test;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;26;gtest_add_tests;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;0;")
add_test(SpringElements.SpringElement2DWithLengthFunctions "/mnt/c/4_Code/Optimization/aopt-exercise4/build/Build/bin/MassSpringProblemEvaluation-test" "--gtest_filter=SpringElements.SpringElement2DWithLengthFunctions" "--gtest_color=yes")
set_tests_properties(SpringElements.SpringElement2DWithLengthFunctions PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.22/Modules/GoogleTest.cmake;400;add_test;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;26;gtest_add_tests;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;0;")
add_test(MassSpringProblem.MassSpringProblem2DDenseFunctions "/mnt/c/4_Code/Optimization/aopt-exercise4/build/Build/bin/MassSpringProblemEvaluation-test" "--gtest_filter=MassSpringProblem.MassSpringProblem2DDenseFunctions" "--gtest_color=yes")
set_tests_properties(MassSpringProblem.MassSpringProblem2DDenseFunctions PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.22/Modules/GoogleTest.cmake;400;add_test;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;26;gtest_add_tests;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;0;")
add_test(MassSpringProblem.MassSpringProblem2DSparseFunctions "/mnt/c/4_Code/Optimization/aopt-exercise4/build/Build/bin/MassSpringProblemEvaluation-test" "--gtest_filter=MassSpringProblem.MassSpringProblem2DSparseFunctions" "--gtest_color=yes")
set_tests_properties(MassSpringProblem.MassSpringProblem2DSparseFunctions PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.22/Modules/GoogleTest.cmake;400;add_test;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;26;gtest_add_tests;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;0;")
add_test(MassSpringProblem.MassSpringProblem2DSparseCheckDerivative "/mnt/c/4_Code/Optimization/aopt-exercise4/build/Build/bin/MassSpringProblemEvaluation-test" "--gtest_filter=MassSpringProblem.MassSpringProblem2DSparseCheckDerivative" "--gtest_color=yes")
set_tests_properties(MassSpringProblem.MassSpringProblem2DSparseCheckDerivative PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.22/Modules/GoogleTest.cmake;400;add_test;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;26;gtest_add_tests;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;0;")
add_test(MassSpringSystem.EnergyComputation "/mnt/c/4_Code/Optimization/aopt-exercise4/build/Build/bin/MassSpringProblemEvaluation-test" "--gtest_filter=MassSpringSystem.EnergyComputation" "--gtest_color=yes")
set_tests_properties(MassSpringSystem.EnergyComputation PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.22/Modules/GoogleTest.cmake;400;add_test;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;26;gtest_add_tests;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;0;")
add_test(MassSpringSystem.DenseVersusSparseSpeedComparison "/mnt/c/4_Code/Optimization/aopt-exercise4/build/Build/bin/MassSpringProblemEvaluation-test" "--gtest_filter=MassSpringSystem.DenseVersusSparseSpeedComparison" "--gtest_color=yes")
set_tests_properties(MassSpringSystem.DenseVersusSparseSpeedComparison PROPERTIES  _BACKTRACE_TRIPLES "/usr/share/cmake-3.22/Modules/GoogleTest.cmake;400;add_test;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;26;gtest_add_tests;/mnt/c/4_Code/Optimization/aopt-exercise4/MassSpringProblemEvaluation/CMakeLists.txt;0;")