# Teaching-HEIGVD-AMT-2019-Project-One
## Objectives

The main objective of this project is to apply the patterns and techniques presented during the lectures, and to create a simple multi-tiered application in Java EE.

## description

Our application is a multi-tiered application in Java EE following the  [guidelines](https://github.com/SoftEng-HEIGVD/Teaching-HEIGVD-AMT-2019-Project-One). This is a website about Esport Team where the user can get informations about diferrents players, the team on which they belong and their Match history.



## Functional requirements

- The business domain we have selected is about E-Sport, we have players which belongs to a Team and who play matches.Each match is determined by the name of the two teams conffronting each other and the final endscore of each team. The relation between a player and a match is a N-N relation defined by a table which contains for each player the id of the match he played and in which team he played.

- All of the datas are stored in a database manageable by CRUD operations in the Java EE application.There is 4 Data Managers which implement an interface common for all database Specifiaction in case we want to switch from MYSQL.

- The user have to register and can only see the data that he put in the site.For the demonstration we have two users set-up and we can register new users on the login page.

- If we click on a player Username we can see his real name and his match history.



## Non-functional requirements

* **Automation**
  - The application can be launched by executing the **RunApplication.sh** script and then going to **localhost:9090/TeamEsprt** to access the application
  NB:we encountered the bugs at loggin using Chrome but it worked perfectly in Firefox
  - The automated tests can be launched with the script **RunTest.sh**
* **Usability**
  - The pagination has been implemented at the UI level and in the Sql queries



  ## Testing

  [Documenttion on testing](https://github.com/goturak/Teaching-HEIGVD-AMT-2019-Project-One/blob/master/doc/testing.md)
