function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
% C_mat = [0.01 0.03 0.1 0.3 1 3 10 30];
% sigma_mat = [0.1:0.05:0.45];

C = 1;
sigma = 0.1;

% error_mat = zeros(length(C_mat),length(sigma_mat));

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
% for i=1:(length(C_mat))
%     for j=1:length(sigma_mat)
%         model = svmTrain(X, y, C_mat(i), @(x1, x2) gaussianKernel(x1, x2, sigma_mat(j)));
%         error_mat(i,j) = mean(double(svmPredict(model,Xval) ~= yval));
%     end
% end
% 
% [m1 i1] = min(error_mat);
% [m2 i2] = min(m1);
% 
% j = i2;
% i = i1(j);
% 
% C = C_mat(i)
% sigma = sigma_mat(j)
% =========================================================================

end