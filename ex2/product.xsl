<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">

<html>

<head>

<title>NovaStore | Product Dashboard</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    background: #080b14;
    color: #ffffff;
    min-height: 100vh;
}

/* TOP NAVIGATION */

.navbar {
    height: 75px;
    background: #0d111c;
    border-bottom: 1px solid #20283a;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 7%;
}

.logo {
    display: flex;
    align-items: center;
    gap: 12px;
}

.logo-box {
    width: 42px;
    height: 42px;
    border-radius: 12px;
    background: linear-gradient(135deg, #6366f1, #06b6d4);
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 20px;
}

.logo h2 {
    font-size: 20px;
    letter-spacing: 1px;
}

.logo span {
    color: #818cf8;
}

.nav-right {
    color: #94a3b8;
    font-size: 13px;
}

/* MAIN */

.main {
    width: 86%;
    max-width: 1250px;
    margin: 45px auto;
}

/* HERO */

.hero {
    position: relative;
    overflow: hidden;
    background: linear-gradient(135deg, #111827, #151b2e);
    border: 1px solid #252e42;
    border-radius: 28px;
    padding: 45px;
    margin-bottom: 30px;
}

.hero:before {
    content: "";
    position: absolute;
    width: 300px;
    height: 300px;
    background: #4f46e5;
    opacity: 0.12;
    border-radius: 50%;
    right: -100px;
    top: -150px;
}

.hero-content {
    position: relative;
    z-index: 2;
}

.small-title {
    color: #818cf8;
    font-size: 13px;
    font-weight: bold;
    text-transform: uppercase;
    letter-spacing: 2px;
    margin-bottom: 12px;
}

.hero h1 {
    font-size: 44px;
    line-height: 1.1;
    margin-bottom: 15px;
}

.hero h1 span {
    color: #22d3ee;
}

.hero p {
    color: #94a3b8;
    max-width: 600px;
    line-height: 1.7;
    font-size: 15px;
}

.hero-button {
    display: inline-block;
    margin-top: 25px;
    padding: 12px 22px;
    border-radius: 10px;
    background: linear-gradient(135deg, #6366f1, #06b6d4);
    color: white;
    font-size: 13px;
    font-weight: bold;
}

/* STAT CARDS */

.stats {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
    margin-bottom: 30px;
}

.stat-card {
    background: #111827;
    border: 1px solid #252e42;
    border-radius: 20px;
    padding: 25px;
    position: relative;
    overflow: hidden;
    transition: 0.3s;
}

.stat-card:hover {
    transform: translateY(-6px);
    border-color: #4f46e5;
}

.stat-top {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.stat-name {
    color: #94a3b8;
    font-size: 13px;
}

.stat-icon {
    width: 42px;
    height: 42px;
    border-radius: 12px;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #1e293b;
    font-size: 18px;
}

.stat-number {
    margin-top: 20px;
    font-size: 30px;
    font-weight: bold;
}

.blue {
    color: #60a5fa;
}

.green {
    color: #34d399;
}

.purple {
    color: #a78bfa;
}

/* TABLE SECTION */

.products-section {
    background: #0f1522;
    border: 1px solid #252e42;
    border-radius: 25px;
    overflow: hidden;
}

.section-header {
    padding: 28px 30px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid #20283a;
}

.section-title h2 {
    font-size: 22px;
    margin-bottom: 6px;
}

.section-title p {
    color: #64748b;
    font-size: 13px;
}

.live {
    color: #4ade80;
    background: #052e16;
    border: 1px solid #166534;
    padding: 8px 14px;
    border-radius: 20px;
    font-size: 11px;
    font-weight: bold;
}

/* TABLE */

.table-wrapper {
    overflow-x: auto;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th {
    text-align: left;
    padding: 17px 25px;
    color: #64748b;
    background: #0b101b;
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: 1px;
}

td {
    padding: 20px 25px;
    border-bottom: 1px solid #20283a;
    color: #cbd5e1;
    font-size: 14px;
}

tbody tr {
    transition: 0.25s;
}

tbody tr:hover {
    background: #151d2d;
}

.id {
    color: #818cf8;
    font-weight: bold;
}

.product {
    display: flex;
    align-items: center;
    gap: 14px;
}

.product-image {
    width: 45px;
    height: 45px;
    border-radius: 12px;
    background: linear-gradient(135deg, #312e81, #164e63);
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 20px;
}

.product-name {
    color: #f8fafc;
    font-weight: bold;
}

.product-type {
    color: #64748b;
    font-size: 11px;
    margin-top: 4px;
}

.price {
    color: #4ade80;
    font-weight: bold;
    font-size: 15px;
}

.stock {
    display: inline-block;
    padding: 7px 12px;
    border-radius: 20px;
    background: #172554;
    color: #93c5fd;
    font-size: 11px;
    font-weight: bold;
}

/* FOOTER */

.footer {
    display: flex;
    justify-content: space-between;
    padding: 25px 5px;
    color: #475569;
    font-size: 12px;
}

.footer strong {
    color: #818cf8;
}

/* RESPONSIVE */

@media(max-width: 750px) {

    .navbar {
        padding: 0 5%;
    }

    .nav-right {
        display: none;
    }

    .main {
        width: 92%;
        margin: 25px auto;
    }

    .hero {
        padding: 30px 25px;
    }

    .hero h1 {
        font-size: 32px;
    }

    .stats {
        grid-template-columns: 1fr;
    }

    .section-header {
        align-items: flex-start;
        gap: 15px;
    }

    table {
        min-width: 750px;
    }

    .footer {
        flex-direction: column;
        gap: 8px;
    }

}

</style>

</head>


<body>


<!-- NAVIGATION -->

<div class="navbar">

    <div class="logo">

        <div class="logo-box">
            &#128230;
        </div>

        <h2>
            Nova<span>Store</span>
        </h2>

    </div>

    <div class="nav-right">
        Inventory Management System
    </div>

</div>


<!-- MAIN -->

<div class="main">


    <!-- HERO -->

    <div class="hero">

        <div class="hero-content">

            <div class="small-title">
                Product Management
            </div>

            <h1>
                Smart Inventory<br/>
                <span>Dashboard</span>
            </h1>

            <p>
                Monitor your products, stock levels and pricing
                through a clean and modern inventory management
                interface powered by XML and XSLT.
            </p>

            <div class="hero-button">
                ● System Active
            </div>

        </div>

    </div>


    <!-- STATISTICS -->

    <div class="stats">


        <div class="stat-card">

            <div class="stat-top">

                <div class="stat-name">
                    TOTAL PRODUCTS
                </div>

                <div class="stat-icon">
                    &#128230;
                </div>

            </div>

            <div class="stat-number blue">

                <xsl:value-of
                    select="count(products/product)"/>

            </div>

        </div>


        <div class="stat-card">

            <div class="stat-top">

                <div class="stat-name">
                    TOTAL STOCK
                </div>

                <div class="stat-icon">
                    &#128202;
                </div>

            </div>

            <div class="stat-number green">

                <xsl:value-of
                    select="sum(products/product/quantity)"/>

                <span style="font-size:14px;">
                    units
                </span>

            </div>

        </div>


        <div class="stat-card">

            <div class="stat-top">

                <div class="stat-name">
                    TOTAL VALUE
                </div>

                <div class="stat-icon">
                    &#8377;
                </div>

            </div>

            <div class="stat-number purple">

                &#8377;<xsl:value-of
                    select="sum(products/product/price)"/>

            </div>

        </div>


    </div>


    <!-- PRODUCTS -->

    <div class="products-section">


        <div class="section-header">

            <div class="section-title">

                <h2>
                    Product Inventory
                </h2>

                <p>
                    Complete overview of available products
                </p>

            </div>

            <div class="live">
                ● LIVE
            </div>

        </div>


        <div class="table-wrapper">

        <table>

            <thead>

                <tr>

                    <th>
                        Product ID
                    </th>

                    <th>
                        Product
                    </th>

                    <th>
                        Price
                    </th>

                    <th>
                        Available Stock
                    </th>

                </tr>

            </thead>


            <tbody>


                <xsl:for-each select="products/product">

                <tr>


                    <td class="id">

                        #

                        <xsl:value-of
                            select="id"/>

                    </td>


                    <td>

                        <div class="product">

                            <div class="product-image">
                                &#128230;
                            </div>

                            <div>

                                <div class="product-name">

                                    <xsl:value-of
                                        select="name"/>

                                </div>

                                <div class="product-type">
                                    Premium Product
                                </div>

                            </div>

                        </div>

                    </td>


                    <td class="price">

                        &#8377;

                        <xsl:value-of
                            select="price"/>

                    </td>


                    <td>

                        <span class="stock">

                            <xsl:value-of
                                select="quantity"/>

                            units available

                        </span>

                    </td>


                </tr>

                </xsl:for-each>


            </tbody>

        </table>

        </div>


    </div>


    <!-- FOOTER -->

    <div class="footer">

        <div>
            XML + XSLT Product Management
        </div>

        <div>
            Powered by <strong>NovaStore</strong>
        </div>

    </div>


</div>


</body>

</html>

</xsl:template>

</xsl:stylesheet>
