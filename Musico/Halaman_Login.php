<?php
    $message = isset($_GET['message']) ? $_GET['message'] : '';
?>
<!DOCTYPE html>
<html>
<head>
    <title>Slide Navbar</title>
    <link rel="stylesheet" type="text/css" href="Halaman_Login.css">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
    <link rel="icon" type="image" href="gambar/Logo2.png">
    <link href="https://fonts.googleapis.com/css2?family=Anta&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Galindo&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mukta+Malar:wght@200;300;400;500;600;700;800&family=Single+Day&display=swap" rel="stylesheet">
</head>

<script type="text/javascript">
    // Menampilkan pesan alert jika ada
    var message = "<?php echo $message; ?>";
    if (message) {
        alert(message);
    }
</script>
<body>
    <div class="main">    
        <div class="halaman_login">
            <form method="post" action="Halaman_Login_conn.php">
                <h1>Login</h1>
                <input type="text" name="username" placeholder="Username" required="">
                <input type="password" name="password" placeholder="Password" required="">
                <input type="hidden" name="action" value="login">
                <input class="button" type="submit" value="Log in" name="btn-login">
            </form>
            <p>*Kamu akan tertinggal di website Musico selama Login</p>
        </div>
    </div>
    
</body>
</html>
