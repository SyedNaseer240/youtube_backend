<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.inventory.model.Product" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product - Inventory Management</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <!-- Navigation Bar -->
    <div class="navbar">
        <h1>📦 Inventory Management System</h1>
        <a href="products">← Back to Inventory</a>
    </div>

    <!-- Main Content -->
    <div class="container">
        <h2 class="page-title">Edit Product</h2>

        <%
            Product product = (Product) request.getAttribute("product");
        %>

        <div class="form-wrapper">
            <form action="products?action=update" method="post">

                <!-- Hidden field for product ID -->
                <input type="hidden" name="id" value="<%= product.getId() %>">

                <div class="form-group">
                    <label for="name">Product Name *</label>
                    <input type="text" id="name" name="name" value="<%= product.getName() %>" required>
                </div>

                <div class="form-group">
                    <label for="category">Category *</label>
                    <select id="category" name="category" required>
                        <option value="">-- Select Category --</option>
                        <option value="Electronics" <%= "Electronics".equals(product.getCategory()) ? "selected" : "" %>>Electronics</option>
                        <option value="Furniture" <%= "Furniture".equals(product.getCategory()) ? "selected" : "" %>>Furniture</option>
                        <option value="Stationery" <%= "Stationery".equals(product.getCategory()) ? "selected" : "" %>>Stationery</option>
                        <option value="Clothing" <%= "Clothing".equals(product.getCategory()) ? "selected" : "" %>>Clothing</option>
                        <option value="Food" <%= "Food".equals(product.getCategory()) ? "selected" : "" %>>Food</option>
                        <option value="Tools" <%= "Tools".equals(product.getCategory()) ? "selected" : "" %>>Tools</option>
                        <option value="Other" <%= "Other".equals(product.getCategory()) ? "selected" : "" %>>Other</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="quantity">Quantity *</label>
                    <input type="number" id="quantity" name="quantity" value="<%= product.getQuantity() %>" min="0" required>
                </div>

                <div class="form-group">
                    <label for="price">Price (₹) *</label>
                    <input type="number" id="price" name="price" value="<%= product.getPrice() %>" step="0.01" min="0" required>
                </div>

                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description"><%= product.getDescription() != null ? product.getDescription() : "" %></textarea>
                </div>

                <div class="btn-group">
                    <button type="submit" class="btn btn-primary">Update Product</button>
                    <a href="products" class="btn btn-secondary">Cancel</a>
                </div>

            </form>
        </div>
    </div>

</body>
</html>
