<?php
require_once("./mysql.php");

$conn = ConnectDB();
$sql = "SELECT * FROM job";
$pdo_stm = $conn->prepare($sql);
$pdo_stm->execute();
$rows =  $pdo_stm->fetchAll(PDO::FETCH_BOTH);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

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
                    <li class="nav-item active"><a class="nav-link" href="./client/create.php">Đăng ký ứng tuyển
                        </a></li>
                    <li class="nav-item active"><a class="nav-link" href="./admin/admin.php">Đăng nhập cho admin
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
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">TITLE</th>
                        <th scope="col">REQUIRED</th>
                        <th scope="col">BENEFIT</th>
                        <th scope="col">SALARY</th>
                        <th scope="col">LOCATION</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if($rows > 0){foreach ($rows as $row) {
                    ?>
                        <tr>
                            <td><?=$row['id']?></td>
                            <td><?=$row['title']?></td>
                            <td><?=$row['required']?></td>
                            <td><?=$row['benefit']?></td>
                            <td><?=number_format($row['salary'])?></td>
                            <td><?=$row['location']?></td>
                        </tr>
                    <?php }} ?>
                </tbody>
            </table>
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