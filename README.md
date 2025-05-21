# 🧮 Project Title: Equipment Borrowing Management System

**Developer:** Akaliza M. Racia

**Student ID:** 26628


## 📝 Introduction

In educational institutions, research labs, and office environments, equipment like laptops, projectors, and lab tools are frequently borrowed by students or employees. Unfortunately, poor tracking methods often result in lost items, overdue returns, and administrative confusion.

The Equipment Borrowing Management System is designed to solve these issues using a structured, PL/SQL-based solution. It automates the process of borrowing and returning equipment, enforces accountability, and helps organizations maintain better control over their valuable resources.

## 🔍 Project Overview

The main goal of this system is to track the movement of equipment between users and inventory. This includes recording when an item is borrowed, by whom, for how long, and whether it was returned on time. It reduces manual tracking and adds a layer of responsibility for all parties involved.

## 🎯 Project Objectives

- ✅ Automate equipment borrowing and return processes

- ✅ Track each borrowing transaction for transparency

- ✅ Notify users about due dates and overdue items

- ✅ Maintain a database of borrowing records and penalties

- ✅ Improve equipment availability and reduce losses

## 🌍 Real-World Impact on Society

This system has the potential to improve operational efficiency and reduce costs in a variety of sectors:

- 🏫 Universities will minimize the loss of lab tools and laptops

- 🧪 Research labs will better manage shared scientific equipment

- 🏢 Offices can track the use of devices like projectors or tablets

- 🔐 Encourages accountability and responsible usage through clear record-keeping

- ⏰ Saves time by reducing the administrative burden on staff

# 📦 Phase 1 – Project Planning and Database Design

### 🧾 Phase Cover – What's Included in Phase 1?

The first phase of the project focuses on system analysis, requirement definition, and database design. This foundational phase sets the stage for implementation in later phases.

## 🧱 Phase 1 Covers:

- 📌 Defining the problem and scope

- 🔍 Analyzing target users and real-world usage

- 🏗️ Identifying key entities and relationships

- 🛠️ Designing the initial database structure

- 🎯 Clarifying project goals and outcomes

This phase is crucial as it ensures that the project starts with a clear understanding of its purpose, structure, and desired results. It focuses on planning, not coding yet.

## 📌 Problem Statement

Institutions often struggle to keep track of borrowed items, leading to:

- Lost or misplaced equipment

- Delays due to missing tools

- Disputes over borrowed items

- Lack of accountability

## 🔧 Problem Definition

The current manual or outdated systems are inefficient and do not support:

- Timely return tracking

- Notification alerts

- Borrowing history maintenance

- Fine enforcement mechanisms

### 🧠 Context

- This system is ideal for:

- Universities and schools

- Research laboratories

- Corporate offices

Where borrowing of equipment like laptops, lab kits, or cameras is common.

### 👤 Target Users
- 🎓 Students/Employees – who borrow the equipment

- 🛠️ Equipment Managers – who manage inventory

- 🧑‍💼 Administrators – who oversee the system and generate reports

## 🛠️ System Entities
### 1. 👥 Users
**Attributes:** `User_ID`, `Name`, `Department`, `Contact_Info`

### 2. 🖥️ Equipment
**Attributes:** `Equipment_ID`, `Name`, `Type`,` Condition`, `Availability_Status`

### 3. 📄 Borrowing Records
**Attributes:** `Borrow_ID`, `User_ID`, `Equipment_ID`,` Borrow_Date`, `Due_Date`,` Return_Date`, `Status`

### 4. 💸 Fines/Penalties
**Attributes:** `Fine_ID`, `User_ID`, `Amount`, `Reason`, `Paid_Status`

### 🚀 Expected Outcomes (Phase 1)

- ✅ Efficient tracking from borrowing to return

- ✅ Reduced chances of equipment loss

- ✅ Alerts for due and overdue items

- ✅ Clear borrowing and return history

### 🌟 Anticipated Benefits

  - 📊 Better tracking of borrowed items

  -🔔 Automatic notifications for returns

  - 📚 Full history for accountability

  - 💼 Reduced administrative work

  - 🧾 Enforced policies with fines


---


# 🧩 Phase 2: Business Process Modeling

### 📘 Phase Cover – What’s Included in Phase II?

This phase focuses on designing a business process model that visually illustrates how the Equipment Borrowing System works within a Management Information System (MIS) framework. The model shows how data flows between users and systems, how decisions are made, and how responsibilities are distributed — all essential components of an efficient MIS-based workflow.

### 🧭 Purpose of This Phase:

 - Understand how MIS supports operational processes

 - Define all entities involved and how they interact

 - Show how information is collected, processed, and used for decision-making

 - Set a foundation for development in later phases

### 🛠️ Outputs of This Phase:

 - 📜 Defined scope and process flow

 - 🧑‍🤝‍🧑 Identified key entities and responsibilities

 - 🏊 Swimlane diagrams for clarity

 - 🧩 UML/BPMN workflow for structure

 - 📄 Written explanation of the process logic and flow



## 🎯 Objective
  
The objective of this phase is to model a business process that demonstrates how a Management Information System (MIS) supports efficient equipment borrowing and return tracking in institutions like universities and offices. The model will show how information flows, how key entities interact, and how decision-making is facilitated within the system.

## 🗂️ Define the Scope

## 🔍 Business Process Being Modeled:
## Equipment Borrowing and Return Workflow

This process models how students or employees request to borrow equipment, how it is approved, tracked, returned, and how penalties are managed if rules are broken.

## 💻 Relevance to MIS:

 - Centralizes borrowing records in a database

 - Provides automated alerts and reports for overdue items

 - Supports decision-making with real-time tracking and status updates

 - Improves inventory control and utilization

## 📌 Process Objectives:

 - Automate and record equipment borrowing and returns

 - Notify users of due dates and delays

 - Track availability and usage history

 - Support policy enforcement through fines and logs

## 🎁 Expected Outcomes:

 - Efficient and transparent borrowing process

 - Fewer cases of lost or overdue equipment

 - Better accountability and record-keeping

 - Decision support for administrators via MIS reports

## 🧑‍🤝‍🧑 Identify Key Entities

| 🧩 **Entity**                    | 🧭 **Role / Interaction**                                   |
| -------------------------------- | ----------------------------------------------------------- |
| 🎓 **User (Borrower)**           | Requests, uses, and returns equipment                       |
| 🧰 **Equipment Manager**         | Approves requests, issues equipment, updates return records |
| 👨‍💼 **Administrator**          | Oversees usage, reviews reports, enforces fines             |
| 🗃️ **Database System**          | Stores user data, equipment info, and transaction history   |
| 📬 **Notification Engine**       | Sends alerts for due dates and overdue returns              |
| 🔄 **Automated PL/SQL Workflow** | Executes triggers, updates status, calculates fines         |


## 🏊‍♂️ Use Swimlanes for Clarity

My Swimlane Diagram has the following lanes:

**🧍‍♂️ Lane 1:** User (Borrower)

**🧑‍🔧Lane 2:** Equipment Manager

**🖥️ Lane 3:** System (Database + Notification Engine)

**👨‍🏫 Lane 4:** Administrator


## 🧮 Apply UML/BPMN Notations

## Use BPMN elements like:

 - ⚪ Start/End Events (circles)

 - 📥 Tasks (rounded rectangles)

 - 🔄 Gateways/Decisions (diamonds)

 - 📤 Swimlanes for roles

 - ↗ Arrows for sequence flow

## Key Diagram Components:

 - Start: User submits borrowing request

 - Decision: Equipment available?

 - Task: Issue equipment

 - Task: Record transaction

 - Event: Due date arrives

 - Decision: Equipment returned on time?

 - Task: Update return record

 - Task: Generate penalty (if overdue)

 - End: Close transaction



## 🔁 Ensure a Logical Flow 

## The modeled process should flow from:

⚪ Start →

📝 Borrow Request Submitted →

🔍 Availability Checked →

✅/❌ Approve or Reject →

📦 Equipment Issued →

⏰ Due Date Reached →

📬 Reminder Sent →

📥 Returned or Overdue →

💸 Fine Generated (if needed) →

🔚 End Transaction

## ✅ Tools Used:

 - Diagram Tool: Draw.io

 - Notation Style: BPMN / UML with swimlanes

 - Format: PNG or embedded in documentation


---



 # Phase 3:  🗂 Logical Model Design
 
## 📘 Phase Cover – What’s Included in Phase III?

In Phase III, the focus is on designing a Logical Data Model that reflects both the problem statement defined in Phase I and the business process modeled in Phase II. The logical model will structure data entities, their attributes, relationships, and constraints. This model is foundational for the implementation phase that follows.

## 🎯 Purpose:

 - To define how data will be organized, related, and constrained within the system

 - To reduce redundancy and ensure consistency using normalization principles

 - To visualize relationships between entities before coding begins

## 1️⃣ Entity-Relationship (ER) Model

Below are the core entities, their attributes (with data types), and key designations:

## 👥 Users

| Attribute      | Data Type    | Constraints                   |
| -------------- | ------------ | ----------------------------- |
| `User_ID`      | INT          | PRIMARY KEY, NOT NULL, UNIQUE |
| `Name`         | VARCHAR(100) | NOT NULL                      |
| `Department`   | VARCHAR(100) | NOT NULL                      |
| `Contact_Info` | VARCHAR(150) | NOT NULL, UNIQUE              |

## 💻 Equipment

| Attribute             | Data Type    | Constraints                                             |
| --------------------- | ------------ | ------------------------------------------------------- |
| `Equipment_ID`        | INT          | PRIMARY KEY, NOT NULL, UNIQUE                           |
| `Name`                | VARCHAR(100) | NOT NULL                                                |
| `Type`                | VARCHAR(50)  | NOT NULL                                                |
| `Condition`           | VARCHAR(50)  | DEFAULT 'Good', CHECK IN ('Good', 'Fair', 'Damaged')    |
| `Availability_Status` | VARCHAR(20)  | DEFAULT 'Available', CHECK IN ('Available', 'Borrowed') |

## 📄 Borrowing Records

| Attribute      | Data Type   | Constraints                                                      |
| -------------- | ----------- | ---------------------------------------------------------------- |
| `Borrow_ID`    | INT         | PRIMARY KEY, NOT NULL, UNIQUE                                    |
| `User_ID`      | INT         | FOREIGN KEY REFERENCES Users(User\_ID), NOT NULL                 |
| `Equipment_ID` | INT         | FOREIGN KEY REFERENCES Equipment(Equipment\_ID), NOT NULL        |
| `Borrow_Date`  | DATE        | NOT NULL                                                         |
| `Due_Date`     | DATE        | NOT NULL, CHECK (`Due_Date` > `Borrow_Date`)                     |
| `Return_Date`  | DATE        | NULL (optional)                                                  |
| `Status`       | VARCHAR(20) | DEFAULT 'Borrowed', CHECK IN ('Borrowed', 'Returned', 'Overdue') |

## 💸 Fines

| Attribute     | Data Type     | Constraints                                      |
| ------------- | ------------- | ------------------------------------------------ |
| `Fine_ID`     | INT           | PRIMARY KEY, NOT NULL, UNIQUE                    |
| `User_ID`     | INT           | FOREIGN KEY REFERENCES Users(User\_ID), NOT NULL |
| `Amount`      | DECIMAL(10,2) | NOT NULL, CHECK (`Amount` >= 0), DEFAULT 0.00    |
| `Reason`      | VARCHAR(150)  | NOT NULL                                         |
| `Paid_Status` | VARCHAR(20)   | DEFAULT 'Unpaid', CHECK IN ('Paid', 'Unpaid')    |

## 2️⃣ Relationships & Constraints

| Relationship          | Type        | Description                                   |
| --------------------- | ----------- | --------------------------------------------- |
| Users ↔ Borrowing     | One-to-Many | A user can have many borrow records           |
| Equipment ↔ Borrowing | One-to-Many | Each equipment can be borrowed multiple times |
| Users ↔ Fines         | One-to-Many | A user can be associated with multiple fines  |

## 3️⃣ Normalization

✅ 1NF – All attributes have atomic values
✅ 2NF – All non-key attributes fully depend on the primary key
✅ 3NF – No transitive dependencies exist; all non-key fields depend only on the PK

Example:

 - Borrowing and fine details are separated into their own tables.

 - Redundancy like repeating user/equipment info in transactions is avoided.

## 4️⃣ Handling Real-World Data Scenarios

## This model accommodates:

 - 🧾 Multiple borrowings by the same user

 - 🔁 Repeated borrowing of the same equipment

 - ⏰ Overdue returns, triggering fines

 - 📬 Future extensions (e.g., automated notifications)

Each entity can scale with more data while maintaining consistency and supporting business rules effectively.

## 5️⃣ Presentation & Feedback

✅ Logical model is designed for clarity and completeness
✅ Well-documented table structures with constraints
✅ Ready for submission and instructor feedback

## 📷 Screenshot of ERD Diagram

The ER diagram visualizes the entities, their attributes, and relationships with clear cardinalities,
primary keys, foreign keys, and constraints.

![image](https://github.com/user-attachments/assets/28c029f3-6bbd-4bf9-bfd0-5a0e276aa4a7)

## 🎡 MIS Role:

| 🔍 Function         | 💡 MIS Contribution                         |
| ------------------- | ------------------------------------------- |
| **Tracking**        | Keeps detailed borrowing and return logs    |
| **Decision-making** | Enables smart policies through reporting    |
| **Accountability**  | Links every action to a user and time       |
| **Efficiency**      | Automates manual workflows                  |
| **Communication**   | Ensures users and managers stay updated     |
| **Security**        | Maintains data integrity and access control |


---


#  Phase 4: 💾Pluggable Database Creation and Naming

### 📠 What This Phase Covers
This phase focuses on creating a Pluggable Database **(PDB)** and converting the logical model into a physical database structure. It ensures that all tables, relationships, and constraints are implemented to meet project requirements.

### 🔨Database Creation

The Pluggable Database (PDB) was created using the following naming format:

```sql
Database Name: wed_26628__equipment_borrowing_db
Username: akaliza
Password: akaliza
```

### Steps Executed in SQL Command Prompt

**1.Create a pluggable database:**

```sql

SQL> CREATE PLUGGABLE DATABASE wed_26628__equipment_borrowing_db
  2  ADMIN USER akaliza IDENTIFIED BY akaliza
  3  FILE_NAME_CONVERT=('C:\ORACLE21C\ORADATA\ORCL\PDBseed\','C:\ORACLE21C\ORADATA\ORCL\wed_26628__equipment_borrowing_db\');

Pluggable database created.
```

**2.Open the newly created PDB:**

```sql

SQL> ALTER PLUGGABLE DATABASE wed_26628__equipment_borrowing_db OPEN;

Pluggable database altered.

```

* **Purpose:** Makes the PDB active and ready for operations.


#### 3.save the newly created PDB.


```sql
SQL> ALTER PLUGGABLE DATABASE wed_26628__equipment_borrowing_db SAVE STATE;

Pluggable database altered.
```

* **Purpose:** Ensures the PDB remains open after the database restarts.


#### 4. Set the Session Container

```sql
SQL> ALTER SESSION SET CONTAINER = wed_26628__equipment_borrowing_db;

Session altered.
```

* **Purpose:** Switches the session to the newly created PDB for subsequent operations.


### 5.User Creation and Privilege Assignment

#### Create a Database User

```sql
SQL> CREATE USER akaliza IDENTIFIED BY akaliza;

User created.
```

* **Purpose:** Creates a new user, akaliza, with the password akaliza.

#### Grant Basic Privileges

```sql
SQL> GRANT CONNECT, RESOURCE, DBA, SYSDBA TO akaliza;

Grant succeeded.
```

*  **Purpose:** To assigns full privileges for database operations.

## 🔭 Screenshot of PDB

<img width="1078" alt="pdbs akaliza" src="https://github.com/user-attachments/assets/ae76f424-5f29-47cc-94d3-6c466251212a" />


### ⚖️ Oracle Enterprise Manager (OEM)

The **OEM** interface confirmed:

* Successful creation of the database.
* Proper implementation of relationships between tables.

## 📸 OEM confirm successful database creation and table relationships.

<img width="1077" alt="OEM pdbs" src="https://github.com/user-attachments/assets/1292f162-2675-40d7-98d6-89634f51ee66" />

### 🔭 Conclusion About this phase 

This phase successfully established the pluggable database and implemented the physical structure, enabling efficient data management for the Equipment Borrowing Management System.


---


# 🧾 Phase 5: Table Implementation & Data Insertion

## 📘 Introduction

In this phase, we bring together the results of all previous phases — from problem analysis, process modeling, and logical design — into a working physical database using Oracle SQL.

This step focuses on:

 - 💽 Building the database structure from the ERD

 - 🧪 Inserting sample data for testing and demonstration

 - 🛡️ Enforcing data integrity through constraints

 - 📈 Enabling queries and future analytics via a consistent structure

It represents the first functional version of the Equipment Borrowing Management System, ready for interaction and validation.

## 🧱 1. Table Creation

Using the logical model from Phase III, we created the following tables with full constraint support:

## 👥 Users Table
```sql
CREATE TABLE Users (
  User_ID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Department VARCHAR(100) NOT NULL,
  Contact_Info VARCHAR(150) NOT NULL UNIQUE
);
```
## 💻 Equipment Table
```sql
CREATE TABLE Equipment (
  Equipment_ID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Type VARCHAR(50) NOT NULL,
  Condition VARCHAR(50) DEFAULT 'Good' CHECK (Condition IN ('Good', 'Fair', 'Damaged')),
  Availability_Status VARCHAR(20) DEFAULT 'Available' CHECK (Availability_Status IN ('Available', 'Borrowed'))
);
```
## 📄 Borrowing Records Table
```sql
CREATE TABLE Borrowing_Records (
  Borrow_ID INT PRIMARY KEY,
  User_ID INT NOT NULL,
  Equipment_ID INT NOT NULL,
  Borrow_Date DATE NOT NULL,
  Due_Date DATE NOT NULL,
  Return_Date DATE,
  Status VARCHAR(20) DEFAULT 'Borrowed' CHECK (Status IN ('Borrowed', 'Returned', 'Overdue')),
  FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
  FOREIGN KEY (Equipment_ID) REFERENCES Equipment(Equipment_ID),
  CHECK (Due_Date > Borrow_Date) 
);
```
## 💸 Fines Table

```sql
CREATE TABLE Fines (
  Fine_ID INT PRIMARY KEY,
  User_ID INT NOT NULL,
  Amount DECIMAL(10,2) DEFAULT 0.00 CHECK (Amount >= 0),
  Reason VARCHAR(150) NOT NULL,
  Paid_Status VARCHAR(20) DEFAULT 'Unpaid' CHECK (Paid_Status IN ('Paid', 'Unpaid')),
  FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);
```
## 📥 2. Data Insertion

Five meaningful records were added to each table to simulate realistic operations:

## 👥 Insert into Users
```sql
INSERT INTO Users VALUES (1, 'Lyna ', 'IT Department', 'lyna@gmail.com');
INSERT INTO Users VALUES (2, 'Ben ', 'Science Lab', 'ben@gmail.com');
INSERT INTO Users VALUES (3, 'Gloria ', 'Engineering', 'gloria@gmail.com');
INSERT INTO Users VALUES (4, 'Daniel ', 'Architecture', 'daniel@gmail.com');
INSERT INTO Users VALUES (5, 'Eve ', 'Business', 'eve@gmail.com');
```
## 💻 Insert into Equipment
```sql
INSERT INTO Equipment VALUES (101, 'Dell Laptop', 'Laptop', 'Good', 'Available');
INSERT INTO Equipment VALUES (102, 'Canon Camera', 'Camera', 'Fair', 'Available');
INSERT INTO Equipment VALUES (103, 'Epson Projector', 'Projector', 'Good', 'Borrowed');
INSERT INTO Equipment VALUES (104, 'Multimeter', 'Lab Tool', 'Damaged', 'Available');
INSERT INTO Equipment VALUES (105, 'MacBook Pro', 'Laptop', 'Good', 'Available');
```
## 📄 Insert into Borrowing_Records
```sql
INSERT INTO Borrowing_Records VALUES (201, 1, 101, TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_DATE('2025-05-10', 'YYYY-MM-DD'), NULL, 'Borrowed');
INSERT INTO Borrowing_Records VALUES (202, 2, 103, TO_DATE('2025-05-03', 'YYYY-MM-DD'), TO_DATE('2025-05-12', 'YYYY-MM-DD'), TO_DATE('2025-05-11', 'YYYY-MM-DD'), 'Returned');
INSERT INTO Borrowing_Records VALUES (203, 3, 102, TO_DATE('2025-04-25', 'YYYY-MM-DD'), TO_DATE('2025-05-05', 'YYYY-MM-DD'), TO_DATE('2025-05-08', 'YYYY-MM-DD'), 'Overdue');
INSERT INTO Borrowing_Records VALUES (204, 1, 104, TO_DATE('2025-05-04', 'YYYY-MM-DD'), TO_DATE('2025-05-14', 'YYYY-MM-DD'), NULL, 'Borrowed');
INSERT INTO Borrowing_Records VALUES (205, 5, 105, TO_DATE('2025-05-02', 'YYYY-MM-DD'), TO_DATE('2025-05-09', 'YYYY-MM-DD'), TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'Returned');
```
## 💸 Insert into Fines
```sql
INSERT INTO Fines VALUES (301, 3, 50.00, 'Late return of camera', 'Unpaid');
INSERT INTO Fines VALUES (302, 2, 0.00, 'Returned on time', 'Paid');
INSERT INTO Fines VALUES (303, 5, 0.00, 'Good standing', 'Paid');
INSERT INTO Fines VALUES (304, 1, 10.00, 'Slight delay in return', 'Unpaid');
INSERT INTO Fines VALUES (305, 4, 0.00, 'No penalties yet', 'Unpaid');
```
## 🔐 3. Data Integrity Assurance

✔️ Primary keys, foreign keys, `NOT NULL`, `UNIQUE`, `CHECK`, and `DEFAULT` constraints are all enforced.

✔️ Sample data reflects realistic system use: borrowed items, overdue returns, and generated fines.

✔️ All references between tables are valid (e.g., `User_ID` and `Equipment_ID` exist before they're used).

## 🏗️ 4. Physical Database Structure

The logical data model from Phase III is now fully implemented in Oracle SQL:

  - 🔢 Structured data types

  - 🔐 Enforced constraints for consistency

 - 🔁 Referential integrity across tables

 - 🧱 A solid foundation for building PL/SQL procedures, triggers, and reports in future 
      phases

## 🧪 5. Sample Queries for Testing

### 🔍 A. Borrowed Equipment with User Details

```sql
SELECT U.Name, E.Name AS Equipment, B.Borrow_Date, B.Due_Date, B.Status
FROM Borrowing_Records B
JOIN Users U ON B.User_ID = U.User_ID
JOIN Equipment E ON B.Equipment_ID = E.Equipment_ID;
```
### 💸 B. Fines by User

```sql
SELECT U.Name, F.Amount, F.Reason, F.Paid_Status
FROM Fines F
JOIN Users U ON F.User_ID = U.User_ID;
```
📊 C. Equipment Availability Summary

```sql
SELECT Availability_Status, COUNT(*) AS Total
FROM Equipment
GROUP BY Availability_Status;
```


---

