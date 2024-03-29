[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/JwSLLxUh)

# How it works? 

### 1. Installation
   Download PostgreSQL: https://www.postgresql.org/download/ From this link, you can install PostgreSQL, and run.

### 2. Download repository
   https://github.com/ADA-GWU/2024-a1-db-migration-alizadeht/ 
   
   Enter the repository, click Code, then Download ZIP. This command will download the repository as a zip. UNZIP the file.
   
   OR 
   
   type this command in your command prompt - 
   **git clone https://github.com/ADA-GWU/2024-a1-db-migration-alizadeht** 

### 3. Run
   There are 3 files in this repository:
   tablecreation.sql (1st step of the process), migration.sql (2nd step), and rollback.sql (last step).
   
   There are a bunch of ways to run the script: You can run SQL scripts in the command prompt or the Postgres app.

   
   **1st way**: you can copy and paste the scripts in the right order. In this case, you just have to enter the command prompt or Postgres app.
   
   **2nd way**: in the command prompt of Postgres, you can write the following code:
   
   **\i filepathofsqlscript**

  > **e.g: \i /Users/turalalizada/Desktop/Production\&OperationManagement/2024-a1-db-migration-alizadeht/migration.sql**

## The phases:

#### In the migration phase:
1. The column named st_id changed to student_id in **students** table.
2. Both st_name and st_last columns' lengths changed from 20 to 30 in **students** table.
3. The column named interest changed to interests in **interests** table.
4. In the **interests** table, the type of interests changed to **array of strings**.

#### In the rollback phase: (in short, tables have been restored to their original(first) version).
1. The column named student_id changed to st_id in **students** table.
2. Both st_name and st_last columns' lengths changed from 30 to 20 in **students** table.
3. The column named interests changed to interest in the **interests** table.
4. In the **interests** table, the type of interests changed from **array of strings** to normal type.

### Example of each phase:
#### 1st phase (creation of tables):
<img width="897" alt="image" src="https://github.com/ADA-GWU/2024-a1-db-migration-alizadeht/assets/78111301/4745c328-42bf-4216-a7e3-8c501bebe486">

#### 2nd phase (migration process):
<img width="877" alt="image" src="https://github.com/ADA-GWU/2024-a1-db-migration-alizadeht/assets/78111301/fe107ea4-611e-436b-a35c-77bc630a1627">

#### 3rd phase(last) (rollback process):
<img width="897" alt="image" src="https://github.com/ADA-GWU/2024-a1-db-migration-alizadeht/assets/78111301/61431fe3-fd6c-47ae-90fe-69f080d995f5">






   

   


