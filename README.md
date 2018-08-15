# WLS-Based-Localization
I) List of files
1.Dsp_gen.m
This file generates the test data on which the algorithm is implemented.

2.Dsp_algo.m
This file implements the algorithm presented in this paper

3. Delcal.m
function to calculate the new "del sub i" at each iteration at one call this function only evaluates one "dell sub i"

4. Weight.m
function for calculating the weight assigned to each term of the cost expression

5. dcdx.m
function to calculate partial derivative of cost function wrt x co-ordinate of blind node location estimated at that iteration.

6. dcdy.m
function to calculate partial derivative of cost function wrt x co-ordinate of blind node location estimated at that iteration.


II) Instructions on running the code
1. First run the dsp_gen.m file to generate the test data. The test data then appears in the work space.
2. Then run the dsp_algo.m file to find the estimated blind node location.
3. Note that the step size of the gradient descent and the initial estimate of the blind node location need to be optimal when the blind node actual location is changed so that the algorithm converges sufficiently close to the actual location within the specified upper limit on no. of iterations which is 300. This optimization of initial estimate and the step size can be considered another research problem (had some discussion along these lines with Sudhir Sir).
4. Also note that the current working directory of MATLAB should be the directory which contains all of the .m files listed above.
