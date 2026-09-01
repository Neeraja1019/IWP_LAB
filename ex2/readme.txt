Experiment 2 — Product Dashboard Using XML and XSLT
Aim

To create an XML document for storing product information and use XSLT to transform the XML data into a professional and attractive web page.

Technologies Used
XML
XSLT
HTML
CSS
Python HTTP Server
Description

This experiment demonstrates how XML can be used to store structured product information and how XSLT can transform the XML data into an HTML-based product dashboard.

The XML document contains product details such as product ID, product name, price, and quantity. The XSLT document processes the XML data and displays it in a modern inventory management dashboard.

Features
XML-based product data
XSLT transformation
Professional dashboard interface
Product information table
Dynamic product count
Dynamic stock calculation
Dynamic price calculation
Responsive design
Modern dark theme
Hover effects
Live inventory status
File Structure
ex2/
│
├── product.xml
└── product.xsl

XML File

The product.xml file stores product information.

Example:

<product>
    <id>101</id>
    <name>Laptop</name>
    <price>55000</price>
    <quantity>10</quantity>
</product>

XSLT File

The product.xsl file transforms the XML data into an HTML webpage.

The XML file is connected to the XSLT file using:

<?xml-stylesheet type="text/xsl" href="product.xsl"?>

XSLT Operations
Count Products
<xsl:value-of select="count(products/product)"/>


This calculates the total number of products.

Calculate Total Stock
<xsl:value-of select="sum(products/product/quantity)"/>


This calculates the total quantity of all products.

Calculate Total Value
<xsl:value-of select="sum(products/product/price)"/>


This calculates the total price value.

Display Products
<xsl:for-each select="products/product">


This loops through all products in the XML document and displays them in the table.

How to Run

Open PowerShell in the ex2 folder:

cd C:\Users\Admin\Desktop\iwp\ex2


Start the Python HTTP server:

python -m http.server 8000


After the server starts, open the following address in your browser:

http://localhost:8000/product.xml


The XML file will automatically use product.xsl to generate the webpage.

Expected Output

The browser displays a professional product dashboard containing:

Product Management heading
Smart Inventory Dashboard
Total Products
Total Stock
Total Value
Product inventory table
Product IDs
Product names
Product prices
Available stock
Live inventory status
Learning Outcome

This experiment helps in understanding:

XML document structure
Storing structured data using XML
XSLT transformation
XPath expressions
XSLT loops
XSLT calculations
Dynamic HTML generation
CSS-based webpage design
Running XML/XSLT using a local HTTP server
Conclusion

The experiment successfully demonstrates how XML can be used to store product data and how XSLT can transform that data into a professional and responsive product management dashboard.