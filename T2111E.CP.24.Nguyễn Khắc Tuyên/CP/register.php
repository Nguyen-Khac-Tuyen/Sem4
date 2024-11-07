<?php
require_once("./mysql.php");

$error = null;
if(isset($_REQUEST["login"])){
    $name = $_REQUEST["name"];
	$user = $_REQUEST["username"];
	$pass = $_REQUEST["password"];
	$error = null;
	$conn = ConnectDB();
    $sql = "INSERT INTO user VALUES(NULL,?,?,md5(?))";
    $pdo_stm = $conn->prepare($sql);
    $data = [$name, $user, $pass];
    $ketqua = $pdo_stm->execute($data);
    return $ketqua;
    if ($ketqua) $error = true;
    else $error = false;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" th:fragment="header">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
</nav>
<br />
<br />
<br />
<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header">
                    <h3 class="text-center">Đăng ký</h3>
                </div>
                <div class="card-body">
                    <form
                            method="post"
                            class="form-horizontal"
                            role="form"
                    >
                    <div class="mb-3">
                            <label for="name" class="control-label">Name *</label>
                            <input type="text"
                                   id="name"
                                   name="name"
                                   class="form-control"
                                   placeholder="name"
                            />
                        </div>
                        <div class="mb-3">
                            <label for="username" class="control-label">User Name *</label>
                            <input type="text"
                                   id="username"
                                   name="username"
                                   class="form-control"
                                   placeholder="User Name"
                            />
                        </div>

                        <div class="mb-3">
                            <label for="password" class="control-label">Password *</label>
                            <input type="password"
                                   id="password"
                                   name="password"
                                   class="form-control"
                                   placeholder="Password"
                            />
                        </div>

                        <div class="mb-3">
                            <button type="submit" name="login" class="btn btn-primary">Sigup</button>
                        </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>