<?php
require_once("./layout/head.php");
require_once("./layout/header.php");
?>


<body>

    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="/">Trang chủ</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"><a class="nav-link" href="./job">Danh sách việc làm
                        </a></li>
                    <li class="nav-item active"><a class="nav-link" href="./client">Danh sách ứng tuyển
                        </a></li>
                    <li class="nav-item active"><a class="nav-link" href="./logout.php">Đăng xuất
                        </a></li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
        <br>

        <div>
            <h2>Admin</h2>
        </div>

        <footer>
            <hr>
            &copy;
            Nguyễn Đăng Toàn
        </footer>
    </div>

</body>

<?php
require_once("./layout/footer.php");
?>