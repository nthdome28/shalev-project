<%@ Page Title="Product Gallery" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallary.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <style>
        /* Styles the main background box for the whole gallery */
        .gallery-container {
            font-family: Arial; /* Changes the text style to Arial font */
            padding: 10px;      /* Adds space around the inside edges */
        }

        /* Styles each individual image box */
        .gallery-item {
            display: inline-block; /* Makes boxes sit side-by-side like words */
            width: 30%;            /* Makes each box take up about 1/3 of the row */
            margin: 1%;            /* Puts a tiny bit of space outside each box */
        }

        /* Styles the actual pictures inside the boxes */
        .gallery-item img {
            width: 100%;    /* Makes the picture stretch to fill its box completely */
            height: 180px;  /* Makes all the pictures the exact same height */
        }
    </style> <div class="gallery-container">
        <h2>Gallery</h2> 
        <div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?w=400" alt="Apples" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?w=400" alt="Bananas" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1598170845058-32b9d6a5da37?w=400" alt="Carrots" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1592924357228-91a4daadcfea?w=400" alt="Strawberries" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1518977676601-b53f82aba655?w=400" alt="Potatoes" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1597362925123-77861d3fbac7?w=400" alt="Tomatoes" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1515023115689-589c33041d3c?w=400" alt="Broccoli" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?w=400" alt="Oranges" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1509440159596-0249088772ff?w=400" alt="Bread" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1574085733277-851d9d856a3a?w=400" alt="Flour" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=400" alt="Cake" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1558961309-dbdf71799f5a?w=400" alt="Cookies" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1586444248902-2f64eddc13df?w=400" alt="Pasta" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1586201375761-83865001e31c?w=400" alt="Rice" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?w=400" alt="Olive Oil" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1587049352846-4a222e784d38?w=400" alt="Honey" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1550583724-b2692b85b150?w=400" alt="Milk" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1506976785307-8732e854ad03?w=400" alt="Eggs" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1486297678162-eb2a19b0a32d?w=400" alt="Cheese" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1589985270826-4b7bb135bc9d?w=400" alt="Butter" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1494588142496-b8633008a479?w=400" alt="Yogurt" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=400" alt="Chicken" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1544025162-d76694265947?w=400" alt="Steak" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1534604973900-c43ab4c2e0ab?w=400" alt="Salmon" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1566843972142-a7fcb70de55a?w=400" alt="Chips" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=400" alt="Coffee" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1510629954389-c1e0da47d4ec?w=400" alt="Tea" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1622483767028-3f66f32aef97?w=400" alt="Soda" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1608270586620-248524c67de9?w=400" alt="Water" /></div>
            <div class="gallery-item"><img src="https://images.unsplash.com/photo-1610970881699-44a5587cabec?w=400" alt="Chocolate" /></div>
        </div> </div> 

</asp:Content>