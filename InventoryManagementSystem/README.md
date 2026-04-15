# Inventory Management System

A mini project built with **Java (Servlets)**, **JSP**, and **MySQL** that performs full CRUD (Create, Read, Update, Delete) operations on product inventory.

---

## 📁 Project Structure

```
InventoryManagementSystem/
├── src/
│   └── com/inventory/
│       ├── model/
│       │   └── Product.java          # Product model (POJO)
│       ├── dao/
│       │   └── ProductDAO.java        # Data Access Object (CRUD logic)
│       ├── db/
│       │   └── DBConnection.java      # MySQL database connection utility
│       └── servlet/
│           └── ProductServlet.java     # Servlet handling HTTP requests
├── WebContent/
│   ├── WEB-INF/
│   │   └── web.xml                    # Web application configuration
│   ├── css/
│   │   └── style.css                  # Stylesheet
│   ├── index.jsp                      # Product listing page
│   ├── add-product.jsp                # Add new product form
│   └── edit-product.jsp               # Edit existing product form
├── sql/
│   └── schema.sql                     # Database schema and sample data
└── README.md                          # This file
```

---

## 🛠 Prerequisites

1. **Java JDK 8+** - [Download](https://www.oracle.com/java/technologies/javase-downloads.html)
2. **Eclipse IDE for Enterprise Java Developers** - [Download](https://www.eclipse.org/downloads/)
3. **Apache Tomcat 9.x** - [Download](https://tomcat.apache.org/download-90.cgi)
4. **MySQL Server 8.x** - [Download](https://dev.mysql.com/downloads/mysql/)
5. **MySQL Connector/J (JDBC Driver)** - [Download](https://dev.mysql.com/downloads/connector/j/)

---

## 🚀 Setup Instructions

### Step 1: Set Up the MySQL Database

1. Open **MySQL Workbench** or the MySQL command line client.
2. Run the SQL script located at `sql/schema.sql`:

```sql
SOURCE /path/to/InventoryManagementSystem/sql/schema.sql;
```

This creates the `inventory_db` database, the `products` table, and inserts sample data.

### Step 2: Import Project into Eclipse

1. Open **Eclipse IDE**.
2. Go to **File → New → Dynamic Web Project**.
3. Enter **Project Name**: `InventoryManagementSystem`.
4. Set **Target Runtime** to **Apache Tomcat v9.0** (configure if not already added).
5. Click **Finish**.
6. Copy the project files into the Eclipse workspace:
   - Copy contents of `src/` folder into Eclipse project's `Java Resources/src/`.
   - Copy contents of `WebContent/` folder into Eclipse project's `WebContent/` (or `webapp/`).

### Step 3: Add MySQL JDBC Driver

1. Download `mysql-connector-j-8.x.x.jar` from the MySQL website.
2. Copy the JAR file to `WebContent/WEB-INF/lib/` directory.
3. Right-click the JAR → **Build Path → Add to Build Path**.

### Step 4: Configure Database Connection

Open `src/com/inventory/db/DBConnection.java` and update the credentials:

```java
private static final String URL = "jdbc:mysql://localhost:3306/inventory_db";
private static final String USER = "root";          // Your MySQL username
private static final String PASSWORD = "root";       // Your MySQL password
```

### Step 5: Run the Project

1. Right-click the project → **Run As → Run on Server**.
2. Select **Apache Tomcat v9.0** → Click **Finish**.
3. The application will open in your browser at:
   ```
   http://localhost:8080/InventoryManagementSystem/products
   ```

---

## 📋 Features & CRUD Operations

| Operation | Description                        | URL / Action                          |
|-----------|------------------------------------|---------------------------------------|
| **Create** | Add a new product to inventory     | `products?action=add` (form)         |
| **Read**   | View all products in a table       | `products` (default)                 |
| **Update** | Edit an existing product           | `products?action=edit&id={id}` (form)|
| **Delete** | Remove a product from inventory    | `products?action=delete&id={id}`     |

---

## 🏗 Technology Stack

| Layer        | Technology              |
|-------------|-------------------------|
| Frontend    | JSP, HTML5, CSS3        |
| Backend     | Java Servlets           |
| Database    | MySQL 8.x               |
| Server      | Apache Tomcat 9.x       |
| IDE         | Eclipse IDE              |

---

## 📸 Screenshots

### Product Listing Page
- Displays all products in a styled table.
- Each row has **Edit** and **Delete** action buttons.
- Navbar has an **Add New Product** button.

### Add Product Page
- Form with fields: Name, Category (dropdown), Quantity, Price, Description.
- Validation with HTML5 required attributes.

### Edit Product Page
- Pre-filled form with existing product data.
- Update button saves changes to the database.

---

## 📝 Notes

- The project uses **`@WebServlet` annotation** for servlet mapping (no extra servlet config needed in `web.xml`).
- The DAO layer uses **PreparedStatement** to prevent SQL injection.
- Database connections are managed using **try-with-resources** for automatic cleanup.
- The UI is responsive and works on mobile devices.
