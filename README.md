# Equipment Borrowing Management System

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

🏫 Universities will minimize the loss of lab tools and laptops

🧪 Research labs will better manage shared scientific equipment

🏢 Offices can track the use of devices like projectors or tablets

🔐 Encourages accountability and responsible usage through clear record-keeping

⏰ Saves time by reducing the administrative burden on staff

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
🎓 Students/Employees – who borrow the equipment

🛠️ Equipment Managers – who manage inventory

🧑‍💼 Administrators – who oversee the system and generate reports

## 🛠️ System Entities
### 1. 👥 Users
Attributes: User_ID, Name, Department, Contact_Info

### 2. 🖥️ Equipment
Attributes: Equipment_ID, Name, Type, Condition, Availability_Status

### 3. 📄 Borrowing Records
Attributes: Borrow_ID, User_ID, Equipment_ID, Borrow_Date, Due_Date, Return_Date, Status

### 4. 💸 Fines/Penalties
Attributes: Fine_ID, User_ID, Amount, Reason, Paid_Status

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

