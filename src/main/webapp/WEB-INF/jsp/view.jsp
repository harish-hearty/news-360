<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>News-360</title>
    <link rel="icon" href="/images/img.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body style="background-color: rgb(5, 5, 5);">
    <header class="sticky-top">
        <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
            <div class="container-fluid">
                <a class="navbar-brand">
                    <img src="/images/img.png" alt="Logo" width="30" height="40" class="d-inline-block align-text">
                    News-360
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    	<li class="nav-item">
                            <a class="nav-link" aria-current="page" href="/" id="TopHeadlines">Top-Headlines</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="/entertainment" id="genral">Entertainment</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="/business" id="business">Business</a>
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
                        <input class="form-control me-2" name="key" type="text" placeholder="Search news" aria-label="Search">
                        <button class="btn btn-outline-warning" type="submit" id="searchBtn">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        <nav class="title py-2" style="background-color: rgb(5, 5, 5);">
            <div class="container-fluid sticky-top"><span class="text-white">
                    <h4>${category} :</h4>
                </span></div>
        </nav>
    </header>

    <div class="container-fluid mt-2">

        <div class="row row-cols-1 row-cols-md-3 row-cols-lg-4 g-4">

            <c:forEach items="${articles}" var="article">
            	<div class="col">
                <div class="card h-100">
                    <img src="${article.urlimg}" class="card-img-top" width="100" height="250">
                    <div class="card-body">
                        <h5 class="card-title">${article.title}</h5>
                        <p class="card-text">${article.desc}</p>
                    </div>
                    <div class=" d-flex justify-content-center">
                        <a class="btn btn-primary py-0 px-1 mb-2" href="${article.url}" role="button">know more</a>
                    </div>
                </div>
            </div>
            </c:forEach>

        </div>
    </div>

    <footer class="px-0 mt-4">
        <nav class="navbar bg-body-tertiary" data-bs-theme="dark">
            <div class="navbar-brand ms-2">
                <img src="/images/img.png" alt="Logo" width="30" height="40" class="d-inline-block align-text">
                News-360
            </div>
            <div class="container">
                <span class="navbar-text">
                    ©All rights reserved to news-360
                    <ul class="list-inline ms-2 pt-2">
                        <li>Trending news</li>
                        <li>Entertainment news</li>
                        <li>Technology news</li>
                        <li>Sports news</li>
                    </ul>
                </span>
            </div>
        </nav>
    </footer>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>