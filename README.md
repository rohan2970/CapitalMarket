# CapitalMarket
Project in Xebia regarding Capital Market Forecast

Prerequisites :-
1.)	R - v3.0 or higher
2.)	R Studio
3.)	Packages needed to be installed :-
    kknn       –  Used for k-Nearest-Neighbour 
  	quantmod   –  Used for SMA and EMA
  	e1071      –  Used for Support Vector Machine
    twitterR; Bitops; Rcurl; wordcloud; tm

Step1 - Copy the "Testing" folder and Paste it into "htdocs" folder in Xampp directory on your local machine.
Step2 - Open "config.php" file in "Testing" folder.
        Change value of "xampp_dir_name" to the corresponding path of "Xampp/htdocs/Testing" folder on your local machine.
        Change value of "r_dir_name" to the corresponding path of "./R-3.2.0/bin" folder on your local machine.
Step3 - Change the value of "proj_dir_path" in both the R-Scripts i.e. "Trends.R" and "Prediction_knn.R".

Now, you are ready to run the project.
Open the Browser and run "index.html" file stored in "Testing" folder.

When you are running the sentiment analysis scripts, change the working directory to the location where you have stored positive-words.txt and negative-words.txt file.
