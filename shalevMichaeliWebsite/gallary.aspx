<%@ Page Title="Product Gallery" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallary.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <style>
        .gallery-container {
            font-family: Arial, sans-serif;
            padding: 10px;
        }
        .category-title {
            color: #2c3e50;
            border-bottom: 2px solid #27ae60;
            padding-bottom: 5px;
            margin-top: 35px;
            margin-bottom: 15px;
        }
        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
            gap: 20px;
        }
        .gallery-item {
            border: 1px solid #e0e0e0;
            padding: 12px;
            text-align: center;
            border-radius: 8px;
            background-color: #fff;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }
        .gallery-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0,0,0,0.1);
        }
        .gallery-item img {
            width: 100%;
            height: 140px;
            object-fit: cover;
            border-radius: 6px;
        }
        .gallery-item p {
            margin: 10px 0 0 0;
            font-weight: bold;
            color: #333;
            font-size: 1.1em;
        }
    </style>

    <div class="gallery-container">
        <h2>Our Product Gallery</h2>
        <p>Browse our wide selection of fresh items across the store.</p>

        <h3 class="category-title">Fresh Produce</h3>
        <div class="gallery-grid">
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?w=300" alt="Apples" /><p>Red Apples</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?w=300" alt="Bananas" /><p>Bananas</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1598170845058-32b9d6a5da37?w=300" alt="Carrots" /><p>Fresh Carrots</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1592924357228-91a4daadcfea?w=300" alt="Strawberries" /><p>Strawberries</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1518977676601-b53f82aba655?w=300" alt="Potatoes" /><p>Russet Potatoes</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1597362925123-77861d3fbac7?w=300" alt="Tomatoes" /><p>Roma Tomatoes</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1515023115689-589c33041d3c?w=300" alt="Broccoli" /><p>Broccoli Florets</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?w=300" alt="Oranges" /><p>Juicy Oranges</p></div>
        </div>

        <h3 class="category-title">Bakery & Pantry</h3>
        <div class="gallery-grid">
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1509440159596-0249088772ff?w=300" alt="Bread" /><p>Loaf of Bread</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1574085733277-851d9d856a3a?w=300" alt="Flour" /><p>Bag of Flour</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=300" alt="Cake" /><p>Chocolate Cake</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1558961309-dbdf71799f5a?w=300" alt="Cookies" /><p>Chocolate Chip Cookies</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1586444248902-2f64eddc13df?w=300" alt="Pasta" /><p>Spaghetti Pasta</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1586201375761-83865001e31c?w=300" alt="Rice" /><p>White Rice Bag</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?w=300" alt="Olive Oil" /><p>Olive Oil</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1587049352846-4a222e784d38?w=300" alt="Honey" /><p>Organic Honey</p></div>
        </div>

        <h3 class="category-title">Dairy, Eggs & Alternatives</h3>
        <div class="gallery-grid">
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1550583724-b2692b85b150?w=300" alt="Milk" /><p>Whole Milk</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1506976785307-8732e854ad03?w=300" alt="Eggs" /><p>Fresh Eggs</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1486297678162-eb2a19b0a32d?w=300" alt="Cheese" /><p>Cheddar Cheese</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1589985270826-4b7bb135bc9d?w=300" alt="Butter" /><p>Salted Butter</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1494588142496-b8633008a479?w=300" alt="Yogurt" /><p>Greek Yogurt</p></div>
        </div>

        <h3 class="category-title">Meat & Seafood</h3>
        <div class="gallery-grid">
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=300" alt="Chicken" /><p>Chicken Breast</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1544025162-d76694265947?w=300" alt="Steak" /><p>Beef Steak</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1534604973900-c43ab4c2e0ab?w=300" alt="Salmon" /><p>Salmon Fillet</p></div>
        </div>

        <h3 class="category-title">Snacks & Beverages</h3>
        <div class="gallery-grid">
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1566843972142-a7fcb70de55a?w=300" alt="Chips" /><p>Potato Chips</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=300" alt="Coffee" /><p>Coffee Beans</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1510629954389-c1e0da47d4ec?w=300" alt="Tea" /><p>Green Tea</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1622483767028-3f66f32aef97?w=300" alt="Soda" /><p>Cola Soda Can</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1608270586620-248524c67de9?w=300" alt="Water" /><p>Bottled Water</p></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1610970881699-44a5587cabec?w=300" alt="Chocolate" /><p>Dark Chocolate</p></div>
        </div>
    </div>
</asp:Content>