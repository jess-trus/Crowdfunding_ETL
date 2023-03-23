# Crowdfunding_ETL


For this project we took a crowdfunding file that we extracted, transformed, and loaded into a different platform. We used pandas to extract the data from an excel file and load it into a pandas dataframe. From there we extracted the data from the crowdfunding dataframe to make four dataframes titled contacts, campaign, category, and subcategory.  We used various functions such as for loops, iterrows, and  list comprehensions. 

In order to make the category dataframe we used a split function to split the crowdfunding dataframe column titled “category & sub-category” into two columns. From there we created a list of the unique values in each new column then used the length of each list and a list comprehension to make two new data frames, one for category and one for subcategory.
!image <img width="121" alt="image" src="https://user-images.githubusercontent.com/118862894/227389923-0759291e-0ef4-46c2-bbcd-b57a04514985.png">


After making the subcategory and category dataframes we made a campaign dataframe by cleaning a copy of the original crowdfunding dataframe. We updated several columns’ data type and merged the category and sub_category dataframes. Then we dropped the columns we did not need.

We then imported a contacts excel file, and read it in as a dataframe. We used iterrows to loop through the dataframe and put the data into a list, from there we made a new dataframe called contacts and split the name column into two new columns called first and last name.

After making the four new dataframes we exported each dataframe as a csv file. 

For the second part of this project we made a sql schema to make tables that will hold the csv files previously made. First we created the database for the project within pg admin. Then we imported the files into the table and made a query to view the table to make sure it was uploaded. The order in which the csv files must be imported is as follows:
contacts,
subcategory,
category,
campaign
		
The order in which the first three files are uploaded can vary but the last file to be uploaded must be the campaign file. 
[CrowdfundingReadme.docx](https://github.com/jesstrus99/Crowdfunding_ETL/files/11057270/CrowdfundingReadme.docx)

