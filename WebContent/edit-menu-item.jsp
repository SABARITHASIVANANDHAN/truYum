<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Menu Item</title>
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<script src="js/script.js"></script>
</head>
<body>
    <c:set var="menuItem" value="${menuItem}"></c:set>
    <header> <span id="truyum">truYum</span> <img id="image-img"
        src="images/truyum-logo-light.png" width="40" height="40" /> <nav> <a class="link"
        href="ShowMenuItemListAdmin">Menu</a> </nav> </header>
    <span id="menu-heading">Edit Menu Items</span>
    <form method="post" name="menuItemForm" action="EditMenuItem"
        onsubmit="return validateMenuItemForm()">
        <input type="hidden" name="id" value="${menuItem.getId()}" />
        <table>
            <tr>
                <td align="left"><label class="grey" for="name">Name</label></td>
            </tr>
            <tr>
                <td colspan="4"><input type="text" name="name" id="name"
                    value="${menuItem.getName()}" autocomplete="off" placeholder="Sandwich" /></td>
            </tr>
            <tr>
                <td align="left"><label class="grey" for="price">Price(Rs.)</label></td>
                <td align="left"><label class="grey" for="active">Active</label></td>
                <td align="left"><label class="grey" for="dol">Date of Launch</label></td>
                <td align="left"><label class="grey" for="cat">Category</label></td>
            </tr>
            <tr>
                <td><input type="text" name="price" id="price" value="${menuItem.getPrice()}"
                    autocomplete="off" placeholder="                                       97" /></td>
                <td><c:choose>
                        <c:when test="${menuItem.isActive()==true}">

                            <input type="radio" name="active" value="Yes" checked="checked" />Yes
                                  <input type="radio" name="active" value="No" />No
                    </c:when>
                        <c:otherwise>
                            <input type="radio" name="active" value="Yes" />Yes
                     <input type="radio" name="active" value="No" checked="checked" />No
                    </c:otherwise>
                    </c:choose>
                <td><f:formatDate value="${menuItem.getDateOfLaunch()}" pattern="dd/MM/yyyy"
                        var="dateOfLaunch" /> <input type="date" name="dateOfLaunch" id="dol"
                    value="${dateOfLaunch}" autocomplete="off" placeholder="27/04/2022" /></td>
                <td><select name="category">
                        <option value="${menuItem.getCategory()}">${menuItem.getCategory()}</option>
                        <option value="Starters">Starters</option>
                        <option value="Main course">Main Course</option>
                        <option value="Dessert">Dessert</option>
                        <option value="Drinks">Drinks</option>
                </select></td>
            </tr>
            <tr>
                <td><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true}">
                            <input type="checkbox" name="freeDelivery" value="Yes" checked="checked" />Free Delivery
                    </c:when>
                        <c:otherwise>
                            <input type="checkbox" name="freeDelivery" value="No" checked="checked" />Free Delivery
                    </c:otherwise>
                    </c:choose></td>
            </tr>
            <tr>
                <td colspan="4"><input type="submit" value="Save" name="submit" id="submit" /></td>
            </tr>
        </table>
        <footer> <span id="copy-right">Copyright &copy; 2019</span> </footer>
    </form>
</body>
</html>