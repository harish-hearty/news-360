<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>News-360</title>
</head>

<body class="m-0 p-0">

    <div class="container-fluid m-0 p-0">

        <!-- navbar -->
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <a class="navbar-brand text-warning" href="#">News-360</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page"  href="/entertainment" id="genral">Entertainment</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="/business" id="business" >Business</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="/sports" id="sport">Sports</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="/technology" id="technology">Technology</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="/science" id="entertainment">Science</a>
                            </li>
                        </ul>
                        <form class="d-flex" action="search">
                            <input class="form-control me-2" type="text" name="key" placeholder="Search news">
                            <button class="btn btn-outline-warning" type="submit" id="searchBtn">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
        <!-- News  -->
        <div >
			<h3 style="border-bottom-color: black">${category} :</h3>
            <c:forEach items="${articles}" var="article">
				<img src="${article.urlimg}" width="360" height="300"> <h3>${article.title}</h3><br>
				${article.desc}</li></ul></ol> <a href="${article.url}">Read more..</a>
				<br>
---------------------------------------------------------------------------------
				<br>
			</c:forEach>
        </div>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

</body>

</html>