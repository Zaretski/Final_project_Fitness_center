<%@ page import="com.tsyrulik.dmitry.model.entity.Client" %>
<%@ page import="com.tsyrulik.dmitry.model.entity.Exercises" %>
<%@ page import="com.tsyrulik.dmitry.model.entity.Food" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalTime" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${sessionScope.locale}" scope="session"/>
<%@ page isELIgnored="false" %>
<fmt:setBundle basename="locale" var="var"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Trainer cabinet</title>
</head>
<body>
<form name="trainerCabinet" method="POST" action = "/jsp/controller">
    <input type="hidden" name="command" value="trainer_cabinet"/>
    <h1>Trainer cabinet</h1>
    <table border="1" width="70%" cellpadding="5">
        <tr>
            <th><fmt:message key="jsp.select" bundle="${var}"/> </th>
            <th><fmt:message key="jsp.name" bundle="${var}"/></th>
            <th><fmt:message key="jsp.surname" bundle="${var}"/></th>
            <th><fmt:message key="jsp.yearsOld" bundle="${var}"/></th>
            <th><fmt:message key="jsp.sex" bundle="${var}"/></th>
            <th><fmt:message key="jsp.email" bundle="${var}"/></th>
            <th><fmt:message key="jsp.nameOfDish" bundle="${var}"/></th>
            <th><fmt:message key="jsp.dataOfReceipt" bundle="${var}"/></th>
            <th><fmt:message key="jsp.timeOfReceipt" bundle="${var}"/></th>
            <th><fmt:message key="jsp.muscleGroup" bundle="${var}"/></th>
            <th><fmt:message key="jsp.nameOfExercises" bundle="${var}"/></th>
            <th><fmt:message key="jsp.equipment" bundle="${var}"/></th>
        </tr>

        <%
            List<Client> clients = new ArrayList<>();
            clients.add(new Client(2, "Pety", "Saplov", 23, "M",
                    "goodmail@gmail.com", "58bad6b697dff48f4927941962f23e90", "client", (long)1, (double)15, (long)2));
//            clients.add(new Client(3, "Danila", "Letov", 21, "M",
//                    "letov@gmail.com", "6982e45352af5526754d83df2d1635", "client",(long)2, 0.65, (long)4));

            clients.add(new Client(4,"Данила", "Куликов", 42, "M",
                    "kulikov42@gmail.com", "34cc93ece0ba9e3f6f235d4af979b16c", "client", (long)3, 30.0,(long) 4));
            session.setAttribute("clients", clients);

            List<Food> foods = new ArrayList<>();
            Food food1 = new Food((long)7, "Шоколад 100 гр",  LocalDate.of(2017,9, 20), LocalTime.of(15,0,0,0));
            Food food2 = new Food((long)8, "Сок",  LocalDate.of(2017,4, 20), LocalTime.of(17,0,0,0));
            foods.add(food1);
            foods.add(food2);
            session.setAttribute("foods", foods);

            List<Exercises> exercises = new ArrayList<>();
            Exercises exercises1 = new Exercises((long) 6, "широчайшие мышцы спины",
                    "тяга верхнего блока перед собой; тяга гантели одной рукой; тяга гантели к поясу; отжимания стоя на руках; подтягивания широким хватом",
                    "гантели, турник, тренажер");
            Exercises exercises2 = new Exercises((long) 5, "икры",
                    "подъем на носки", "");
            exercises.add(exercises1);
            exercises.add(exercises2);
            session.setAttribute("exercises", exercises);
        %>

        <c:forEach items="${clients}" var="client" varStatus="loop">
            <c:forEach items="${foods}" var="food" begin="${loop.index}" end="${loop.index}">
                <c:forEach items="${exercises}" var="exercise" begin="${loop.index}" end="${loop.index}">
            <tr>
                <td><input type="checkbox" name="selectClient" value="${client.email}" id=""/></td>
                <td>${client.name}</td>
                <td>${client.surname}</td>
                <td>${client.yearOld}</td>
                <td>${client.sex}</td>
                <td>${client.email}</td>
                <td>${food.nameOfDish}</td>
                <td>${food.dateReceipt}</td>
                <td>${food.timeOfReceipt}</td>
                <td>${exercise.muscleGroup}</td>
                <td>${exercise.nameOfExercises}</td>
                <td>${exercise.equipment}</td>
            </tr>
                </c:forEach>
            </c:forEach>
        </c:forEach>
    </table>


    <strong><fmt:message key="jsp.nameOfDish" bundle="${var}"/></strong>
    <label>
       <input type="text" name="nameOfDish" value=""/>
    </label>
    <strong><fmt:message key = "jsp.dataOfReceipt" bundle="${var}"/></strong>
    <label>
        <input type="text" name="dataOfReceipt" value=""/>
    </label>
    <strong><fmt:message key = "jsp.timeOfReceipt" bundle="${var}"/></strong>
    <label>
        <input type="text" name="timeOfReceipt" value=""/>
    </label>
    <label>
        <input type="submit" name="actionFood" value="Add Food">
    </label>
    <label>
        <input type="submit" name="actionFood" value="Delete Food">
    </label>
    <label>
        <input type="submit" name="actionFood" value="Update Food">
    </label>
    <br/><br/>

    <strong> <fmt:message key="jsp.muscleGroup" bundle="${var}"/></strong>
    <label>
       <input type="text" name="muscleGroup" value=""/>
    </label>
    <strong><fmt:message key="jsp.nameOfExercises" bundle="${var}"/></strong>
    <label>
        <input type="text" name="nameOfExercises" value=""/>
    </label>
    <strong><fmt:message key="jsp.equipment" bundle="${var}"/></strong>
    <label>
       <input type="text" name="equipment" value=""/>
    </label>
    <label>
        <input type="submit" name="actionExercise" value="Add Exercise">
    </label>
    <label>
        <input type="submit" name="actionExercise" value="Delete Exercise">
    </label>
    <label>
        <input type="submit" name="actionExercise" value="Update Exercise">
    </label>
</form>
</body>
</html>
