<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.inventory.model.Product" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory Management System</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <!-- Navigation Bar -->
    <div class="navbar">
        <h1>📦 Inventory Management System</h1>
        <a href="products?action=add">+ Add New Product</a>
    </div>

    <!-- Main Content -->
    <div class="container">
        <h2 class="page-title">Product Inventory</h2>

        <%
            List<Product> products = (List<Product>) request.getAttribute("products");
        %>

        <% if (products != null && !products.isEmpty()) { %>
            <div class="table-wrapper">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Product Name</th>
                            <th>Category</th>
                            <th>Quantity</th>
                            <th>Price (₹)</th>
                            <th>Description</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (Product product : products) { %>
                            <tr>
                                <td><%= product.getId() %></td>
                                <td><%= product.getName() %></td>
                                <td><%= product.getCategory() %></td>
                                <td><%= product.getQuantity() %></td>
                                <td><%= String.format("%.2f", product.getPrice()) %></td>
                                <td><%= product.getDescription() != null ? product.getDescription() : "-" %></td>
                                <td class="action-links">
                                    <a href="products?action=edit&id=<%= product.getId() %>" class="btn-edit">Edit</a>
                                    <a href="products?action=delete&id=<%= product.getId() %>" class="btn-delete"
                                       onclick="return confirm('Are you sure you want to delete this product?');">Delete</a>
                                </td>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        <% } else { %>
            <div class="table-wrapper">
                <div class="empty-state">
                    <p>No products found in the inventory.</p>
                    <a href="products?action=add" class="btn btn-primary">Add Your First Product</a>
                </div>
            </div>
        <% } %>
    </div>

</body>
</html>
