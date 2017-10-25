# UCI Epilepsy Seizure Recognition

The original dataset consists of 5 different folders, each with 100 files, with each file representing a single subject/person. Each file is a recording of brain activity for 23.6 seconds. The corresponding time-series is sampled into 4097 data points. Each data point is the value of the EEG recording at a different point in time.


The response variable is 'State' in column 179. 'State' contains the category of the 178-dimensional input vector. Specifically state in {1, 2, 3, 4, 5}:

5- eyes open, means when they were recording the EEG signal of the brain the patient had their eyes open

4- eyes closed, means when they were recording the EEG signal the patient had their eyes closed

3- Yes they identify where the region of the tumor was in the brain and recording the EEG activity from the healthy brain area

2- They recorder the EEG from the area where the tumor was located

All subjects falling in classes 2, 3, 4, and 5 are subjects who did not have an epileptic seizure


1- Recording of seizure activity


The Explanatory variables X1, X2, ..., X178

Each 178-dimensional vector contained in a row, represents a randomly selected 1-second long sample picked from the single file. Recall that
each file is a recording of brain activity for 23.6 seconds. The corresponding time-series is sampled into 4097 data points. 


## Source
[UCI Epilepsy Seizure Recognition](https://archive.ics.uci.edu/ml/datasets/Epileptic+Seizure+Recognition)



 