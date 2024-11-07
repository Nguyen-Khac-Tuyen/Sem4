<?php
require_once("../../mysql.php");
require_once("../layout/head.php");
require_once("../layout/header.php");

$error = null;
if (isset($_REQUEST["save"])) {
    $title = $_REQUEST["title"];
    $required = $_REQUEST["required"];
    $benefit = $_REQUEST["benefit"];
    $salary = $_REQUEST["salary"];
    $location = $_REQUEST["location"];
    $conn = ConnectDB();
    $sql = "INSERT INTO job VALUES(NULL,?,?,?,?,?)";
    $pdo_stm = $conn->prepare($sql);
    $data = [$title, $required, $benefit, $salary, $location];
    $ketqua = $pdo_stm->execute($data);
    if ($ketqua) {
        $error = true;
        header("location: index.php");
    } else $error = false;
}
?>

<body>

    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="/">Home</a>
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
            <form method="post" role="form">
                <div class="form-group">
                    <label for="title">Title</label> <input type="text" class="form-control" id="title" name="title" required>
                </div>
                <div class="form-group">
                    <label for="Required">Required</label> <input type="string" class="form-control" id="Required" name="required" required>
                </div>
                <div class="form-group">
                    <label for="Benefit">Benefit</label> <input type="string" class="form-control" id="Benefit" name="benefit" required>
                </div>
                <div class="form-group">
                    <label for="Salary">Salary</label> <input type="string" class="form-control" id="Salary" name="salary" required>
                </div>
                <div class="form-group">
                    <label for="Location">Location</label> <input type="string" class="form-control" id="location" name="location" required>
                </div>
                <button type="submit" name="save" class="btn btn-primary">Save</button>
                <button type="reset" class="btn btn-warning">Reset form</button>
            </form>
        </div>

        <footer>
            <hr>
            &copy;
            <span th:text="${#dates.format(#dates.createNow(),'YYYY')}"></span>
			Nguyễn Đăng Toàn
		</footer>
	</div>

</body>
<?php
require_once("../layout/footer.php");
?>