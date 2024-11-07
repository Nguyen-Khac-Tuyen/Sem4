<?php
require_once("../mysql.php");

$error = null;
if(isset($_REQUEST["save"])){
	$name = $_REQUEST["name"];
	$age = $_REQUEST["age"];
    $tel = $_REQUEST["tel"];
    $email = $_REQUEST["email"];
    $address = $_REQUEST["address"];
    $education = $_REQUEST["education"];
    $experience = $_REQUEST["experience"];
	$conn = ConnectDB();
	$sql = "INSERT INTO client VALUES(NULL,?,?,?,?,?,?,?)";
    $pdo_stm = $conn->prepare($sql);
	$data = [$name, $age, $tel, $email, $address, $education, $experience];
	$ketqua = $pdo_stm->execute($data);
	if ($ketqua) {
        $error = true;
        header('location: index.php');
    }
	else $error = false;
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Ứng tuyển</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>

    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="/">Home</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"><a class="nav-link" href="/">Danh sách việc làm
                        </a></li>
                    <li class="nav-item active"><a class="nav-link" href="/client/create.php">Đăng ký ứng tuyển
                        </a></li>
                    <li class="nav-item active"><a class="nav-link" href="../admin/admin.php">Đăng nhập cho admin
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
                    <label for="name">Name</label> <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="age">Age</label> <input type="number" class="form-control" id="age" name="age" required>
                </div>
                <div class="form-group">
                    <label for="tel">Telephone</label> <input type="string" class="form-control" id="tel" name="tel" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label> <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="address">Address</label> <input type="string" class="form-control" id="address" name="address" required>
                </div>
                <div class="form-group">
                    <label for="education">Education</label> <input type="string" class="form-control" id="education" name="education" required>
                </div>
                <div class="form-group">
                    <label for="experience">Experience</label> <input type="string" class="form-control" id="experience" name="experience" required>
                </div>
                <button type="submit" name="save" class="btn btn-primary">Save</button>
                <button type="reset" class="btn btn-warning">Reset form</button>
            </form>
        </div>

        <footer>
            <hr>
            &copy;
            Nguyễn Đăng Toàn
        </footer>
    </div>

</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</html>