<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Product - Inventory Management</title>
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
        <h2 class="page-title">Add New Product</h2>

        <div class="form-wrapper">
            <form action="products?action=insert" method="post">

                <div class="form-group">
                    <label for="name">Product Name *</label>
                    <input type="text" id="name" name="name" placeholder="Enter product name" required>
                </div>

                <div class="form-group">
                    <label for="category">Category *</label>
                    <select id="category" name="category" required>
                        <option value="">-- Select Category --</option>
                        <option value="Electronics">Electronics</option>
                        <option value="Furniture">Furniture</option>
                        <option value="Stationery">Stationery</option>
                        <option value="Clothing">Clothing</option>
                        <option value="Food">Food</option>
                        <option value="Tools">Tools</option>
                        <option value="Other">Other</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="quantity">Quantity *</label>
                    <input type="number" id="quantity" name="quantity" placeholder="Enter quantity" min="0" required>
                </div>

                <div class="form-group">
                    <label for="price">Price (₹) *</label>
                    <input type="number" id="price" name="price" placeholder="Enter price" step="0.01" min="0" required>
                </div>

                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description" placeholder="Enter product description (optional)"></textarea>
                </div>

                <div class="btn-group">
                    <button type="submit" class="btn btn-primary">Add Product</button>
                    <a href="products" class="btn btn-secondary">Cancel</a>
                </div>

            </form>
        </div>
    </div>

</body>
</html>
