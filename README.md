# Crowdfunding_ETL


For this project we took a crowdfunding file that we extracted, transformed, and loaded into a different platform. We used pandas to extract the data from an excel file and load it into a pandas dataframe. From there we extracted the data from the crowdfunding dataframe to make four dataframes titled contacts, campaign, category, and subcategory.  We used various functions such as for loops, iterrows, and  list comprehensions. 

In order to make the category dataframe we used a split function to split the crowdfunding dataframe column titled “category & sub-category” into two columns. From there we created a list of the unique values in each new column then used the length of each list and a list comprehension to make two new data frames, one for category and one for subcategory.
(https://user-images.githubusercontent.com/118862894/227392568-ed5ce89e-d4d9-4b17-9fa3-6a3cda2f1362.png)


![image](https://user-images.githubusercontent.com/118862894/227389997-b422d489-1bf1-44d5-8e2f-e454f6a3a499.png)

After making the subcategory and category dataframes we made a campaign dataframe by cleaning a copy of the original crowdfunding dataframe. We updated several columns’ data type and merged the category and sub_category dataframes. Then we dropped the columns we did not need.
![image](https://user-images.githubusercontent.com/118862894/227390041-d451355e-ce24-4475-ba0e-197d6f0f2fef.png)

We then imported a contacts excel file, and read it in as a dataframe. We used iterrows to loop through the dataframe and put the data into a list, from there we made a new dataframe called contacts and split the name column into two new columns called first and last name.
![image](https://user-images.githubusercontent.com/118862894/227390084-465974ec-772e-4e92-bfc6-0b0776653718.png)

After making the four new dataframes we exported each dataframe as a csv file. 

For the second part of this project we made a sql schema to make tables that will hold the csv files previously made. First we created the database for the project within pg admin. Then we imported the files into the table and made a query to view the table to make sure it was uploaded. The order in which the csv files must be imported is as follows:
contacts,
subcategory,
category,
campaign
		
The order in which the first three files are uploaded can vary but the last file to be uploaded must be the campaign file. 

!image <img width="190" alt="image" src="https://user-images.githubusercontent.com/118862894/227390317-f8baca0c-594f-4330-8911-7e64b3695b92.png">
!image <img width="662" alt="image" src="https://user-images.githubusercontent.com/118862894/227390440-65c17268-799f-4311-aac6-c9ef2d58a877.png">
!image <img width="188" alt="image" src="https://user-images.githubusercontent.com/118862894/227390545-34115154-cfa2-4c23-857e-10d0909b38d1.png">
!image <img width="358" alt="image" src="https://user-images.githubusercontent.com/118862894/227390583-7eff0e70-ad65-4c63-a754-d46c01b77add.png">



