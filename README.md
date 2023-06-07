# CSE-5524-Computer-Vision
Programming assignments from class CSE-5524, Fall 2022, OSU

This repository contains 12 folders, consisting 11 weekly programming assignments and1 final project. Each programming assignment folder (Week 0 - Week 10) contains the assignment PDF, and a separated folder which consists of input data, code (.ipynb file), output images (if any), and a report.

Topic of discussion in each folder is given as follows:

1. Week 0: Basic mathematical operations on given data like read, plot, mean, dot products, etc.

2. Week 1: Read, display, and convert images from RGB to Grayscale format. Also, write a checker-board image.

3. Week 2: Gaussian smoothin, generate and apply 2D gaussian derivative masks, image threshholding, comparison with sobel mask results.

4. Week 3: Three level Gaussian and correspoding Laplacian pyramid, background subtraction I using absolute differences, background subtraction II using statistical distances, dilation, and connected components algorithm.

5. Week 4: Seven-similitude moment shape descriptors, eigen value and eigne vector calculation, data reduction using projection.

6. Week 5: Motion detection between consecutive frames using absolute image differencing, Motion Energy Image (MEI) & Motion History Image (MHI) computation on given image sequence, 7-similitude moments of final MEI & MHI, normal flow calculation between two images, and draw motion vectors on the image.

7. Week 6: Covariance Tracking and Mean Shift Tracking.

8. Week 7: SLIC superpixel segmentation algorithm and template matching using color-based Normalised Cross Correlation (NCC).

9. Week 8: Harris pixel-wise cornerness function R, threshholding of R, non-maximum suppression on R, and FAST feature point detector implementation.

10. Week 9: Compute camera calibration matrix P, projection of 3D homogenous points to 2D using P, Euclidean distances calculation between 3D-2D projected points and given 2D points, Normalized Direct Linear Transformation algorithm to compute final homography H that maps original points from image1 to image2. and Euclidean distance calculation between those set of points.

11. Week 10: Disparity map using basic stereo matching algorithm, NCC for template matching, and K-Nearest Neighbor (KNN) classification.

12. Project: Due to privacy reasons, infant’s faces are blurred out in images posted on social media by people and celebrities. We aim to automate this task using two computer vision algorithms for Template Matching: Normalized Cross Correlation and Covariance Tracking. We have also incorporated image pyramids and gaussian blurring in the algorithms to handle different search image and template image sizes and to improve the performance.
