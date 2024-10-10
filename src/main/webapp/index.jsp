<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Library</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

header {
    background-color: #333;
    color: red;
    text-align: center;
    padding: 20px 0;
}

header h1 {
    margin: 0;
    font-size: 2.5em;
}

nav {
    width: 100%;
    background-color: #444;
}

.main-menu {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    justify-content: center;
}

.main-menu > li {
    position: relative;
    margin: 0 10px;
}

.main-menu > li > a {
    display: block;
    padding: 15px 20px;
    color: #fff;
    text-decoration: none;
    font-size: 1.2em;
    transition: background 0.3s, color 0.3s;
}

.main-menu > li > a:hover {
    background-color: #555;
    color: #ff0;
}

.sub-menu {
    display: none;
    position: absolute;
    top: 100%;
    left: 0;
    list-style: none;
    background-color: #555;
    padding: 0;
    margin: 0;
    border-radius: 0 0 8px 8px;
    z-index: 1000;
}

.sub-menu > li {
    border-bottom: 1px solid #666;
}

.sub-menu > li:last-child {
    border-bottom: none;
}

.sub-menu > li > a {
    display: block;
    padding: 10px 15px;
    color: #fff;
    text-decoration: none;
    font-size: 1em;
    transition: background 0.3s, color 0.3s;
}

.sub-menu > li > a:hover {
    background-color: #666;
    color: #ff0;
}

.main-menu > li:hover .sub-menu {
    display: block;
}

@media (max-width: 768px) {
    .main-menu {
        flex-direction: column;
        align-items: flex-start;
    }

    .main-menu > li {
        margin: 0;
        width: 100%;
    }

    .main-menu > li > a {
        width: 100%;
    }
}

    </style>
</head>
<body>
    <header>
        <h1>ONLINE LIBRARY</h1>
    </header>
    <nav>
        <ul class="main-menu">
            <li><a href="#">Home</a></li>
            <li><a href="#">Class Books</a>
                <ul class="sub-menu">
                    <li><a href="https://www.studyadda.com/notes/1st-class/32">Class 1</a></li>
                    <li><a href="https://www.studyadda.com/notes/2nd-class/33">Class 2</a></li>
                    <li><a href="https://www.studyadda.com/notes/3rd-class/34">Class 3</a></li>
                    <li><a href="https://www.studyadda.com/notes/4th-class/35">Class 4</a></li>
                    <li><a href="https://www.studyadda.com/notes/5th-class/36">Class 5</a></li>
                    <li><a href="https://www.studyadda.com/notes/6th-class/37">Class 6</a></li>
                    <li><a href="https://www.studyadda.com/notes/7th-class/38">Class 7</a></li>
                    <li><a href="https://www.studyadda.com/notes/8th/31">Class 8</a></li>
                    <li><a href="https://www.studyadda.com/notes/9th-class/30">Class 9</a></li>
                    <li><a href="https://www.studyadda.com/notes/10th-class/24/science/5">Class 10</a></li>
                </ul>
            </li>
            <li><a href="#">Computer Courses</a>
                <ul class="sub-menu">
                    <li><a href="https://www.w3schools.com/java/default.asp">Java</a></li>
                    <li><a href="https://www.w3schools.com/python/default.asp">Python</a></li>
                    <li><a href="https://www.w3schools.com/js/default.asp">JavaScript</a></li>
                    <li><a href="https://www.w3schools.com/sql/default.asp">SQL</a></li>
                    <li><a href="https://www.w3schools.com/react/default.asp">React</a></li>
                    <li><a href="https://www.w3schools.com/datascience/default.asp">Data Science</a></li>
                </ul>
            </li>
            <li><a href="#">Motivation</a>
                <ul class="sub-menu">
                    <li><a href="https://en.wikipedia.org/wiki/Swami_Vivekananda">Vivekananda</a></li>
                    <li><a href="https://en.wikipedia.org/wiki/Mahatma_Gandhi">Gandhiji</a></li>
                    <li><a href="https://en.wikipedia.org/wiki/Jawaharlal_Nehru">Nehru</a></li>
                    <li><a href="https://en.wikipedia.org/wiki/A._P._J._Abdul_Kalam">Abdul Kalam</a></li>
                </ul>
            </li>
            <li><a href="#">Stories</a>
                <ul class="sub-menu">
                    <li><a href="https://www.vedantu.com/stories/sparrow-and-the-elephant">Sparrow and Elephant</a></li>
                    <li><a href="https://www.vedantu.com/stories/two-seeds">Story of Two Seeds</a></li>
                    <li><a href="https://www.vedantu.com/stories/smile-story">A Smile Story</a></li>
                    <li><a href="https://www.vedantu.com/stories/farmer-and-the-baker">Farmer and Baker</a></li>
                    <li><a href="https://www.vedantu.com/stories/the-donkey-and-the-horse">Donkey and Horse</a></li>
                    <li><a href="https://www.vedantu.com/stories/the-greedy-crow">Greedy Crow</a></li>
                </ul>
            </li>
            <li><a href="#">Holy Books</a>
                <ul class="sub-menu">
                    <li><a href="https://en.wikipedia.org/wiki/Ramayana">Ramayana</a></li>
                    <li><a href="https://en.wikipedia.org/wiki/Mahabharata">Mahabharata</a></li>
                    <li><a href="https://en.wikipedia.org/wiki/Bhagavad_Gita">Bhagavad Gita</a></li>
                    <li><a href="https://en.wikipedia.org/wiki/Buddhism">Buddhism</a></li>
                    <li><a href="https://en.wikipedia.org/wiki/Bible">Bible</a></li>
                    <li><a href="https://en.wikipedia.org/wiki/Quran">Quran</a></li>
                </ul>
            </li>
            <li>
                <form action="loginpage.jsp" method="post">
                <button type="submit" class="btn">Log Out</button>
                </form>
                </li>
        </ul>
    </nav>
</body>
</html>
