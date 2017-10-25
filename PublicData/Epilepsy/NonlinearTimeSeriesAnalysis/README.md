# NTSA - Nonlinear Time Series Analysis Group


Andrzejak RG, Schindler K, Rummel C (2012). Nonrandomness, nonlinear dependence, and nonstationarity of electroencephalographic recordings from epilepsy patients.

Refer to [the study](./Andrzejak-PhysicalReviewE2012.pdf) for details.

Notation: In the following we use the letters ‘F’ and ‘N’ to refer to focal and non-focal signals, respectively. These letters appear in the filenames and some headers of text files as specified below.

Results: Results are given in comma-separated text format. The files Results_F_All.txt and Results_N_All.txt contain the results for all focal and non-focal signal pairs, respectively. The structure of both files is identical. The first row of the files contain the header:

Results_F_All.csv has the header: ‘Index, SF, UxF, UyF, BF’.

Results_N_All.csv has the header: ‘Index, SN, UxN, UyN, BN’.

All subsequent 3750 contain the index of the signal pair and the results of the four hypotheses tests, separated by commas. The results of the hypotheses tests are 0 (test accepted) or 1 (test rejected). The index used in the result files corresponds to the one used in the name of the data files.
 
* The first column (header ‘index’) contains the index of the signal pair, running from 1 to 3750. 
* The second column (header ‘SF’ or ‘SN’ ) contains the results of the stationarity test for the pair of signals. 
* The third column (header ‘UxF’ or ‘UxN’) contains the results of the randomness test for the signal x. 
* The fourth column (header ‘UyF’ or ‘UyN’) contains the results of the randomness test for the signal y. 
* The fifth column (header ‘BF’ or ‘BN’) contains the results of the nonlinear-independence test for the pair of signals x and y.

 
## Access and Use
Must cite this Reference

> Andrzejak RG, Schindler K, Rummel C. Nonrandomness, nonlinear dependence, and nonstationarity of electroencephalographic recordings from epilepsy patients. Phys. Rev. E, 86, 046206, 2012


 


## Source
[ntsa.upf.edu](http://ntsa.upf.edu/downloads/andrzejak-rg-schindler-k-rummel-c-2012-nonrandomness-nonlinear-dependence-and)

The above link also contains all source code for the study.