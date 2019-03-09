# c_unity_tests
Using ThrowTheSwitch/Unity Test API for C code testing

1. Download the Unity project from https://github.com/ThrowTheSwitch/Unity
   Create inside the lib folder
   Put inside the src folder Makefile, which is needed to produce the .so library from the Unity   project. (In this project all these steps are done... Just copy) 
   After make the libunity.so will be put in the lib folder. 
2. Your library is a dynamic library. You need to tell the operating system where it can locate it at runtime.
   Modify the LD_LIBRARY_PATH variable.
   Example: export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/Desktop/projects/c_unity_tests/Unity/lib
3. Use second Makefile to make the unit test, but first change the 
   UNITY_HOME = ${HOME}/Desktop/projects/c_unity_tests/Unity in this Makefile
   Make the unit test of test_example.c that will test the simple module add.c
4. Run the result program: ./test_example or type make run.

