# Library-Attendance-Management
This project is a Library Attendance Management System built using Spring MVC and Spring Data JPA. It demonstrates the complete control flow across multiple layers–from the presentation tier down to the persistence layer–and leverages the power of CrudRepository for seamless data operations.

# Library Attendance Management System

A web application to manage library attendance built with Spring MVC, Spring Data JPA, and Thymeleaf.  
It demonstrates end-to-end control flow across presentation, service, and persistence layers, leveraging Spring’s `CrudRepository` for seamless CRUD operations.

---

## 📋 Features

- **User Registration & Login**  
- **Book Check-In / Check-Out**  
- **Attendance Tracking**: Mark student visits and view attendance history  
- **Admin Dashboard**: CRUD management for students, books, and attendance records  
- **Layered Architecture**: Clear separation of Controller, Service, Repository  

---

## 🏗️ Architecture

```text
[Browser]
    ↓
[Spring MVC + Jsp Views]
    ↓
[Controllers] → [Services] → [Repositories (CrudRepository)]
    ↓
[ MySQL Database]


spring.datasource.url=jdbc:mysql://localhost:3306/library_db
spring.datasource.username=root
spring.datasource.password=root
spring.jpa.hibernate.ddl-auto=update

src/main/java/
├── com.example.library
│   ├── controller       # Spring MVC Controllers
│   ├── service          # Business logic services
│   ├── repository       # Spring Data JPA Repositories
│   └── model            # JPA Entities
src/main/resources/
├── templates/           # Jsp , HTML views
├── static/              # CSS / JS / images
└── application.properties

Spring MVC – Web framework

Spring Data JPA – Repository abstraction

Thymeleaf – Server-side templating

H2 – In-memory development database

Maven – Build & dependency management

Lombok – Boilerplate reduction


