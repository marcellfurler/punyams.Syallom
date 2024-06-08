<?php
session_start();

// Periksa apakah pengguna sudah login atau belum
if (!isset($_SESSION['username'])) {
    echo "<script>alert('Anda belum login. Silakan login terlebih dahulu.'); window.location = 'Halaman_Login.php';</script>";
    exit(); // Hentikan eksekusi script jika pengguna belum login
}

$id_rincian_tiket = $_GET['id_rincian_tiket'];

include "Connection.php";

$konser = array();
$tiket=array();

$stmt = $conn->prepare("SELECT * FROM daftar_konser WHERE id_rincian_tiket = ?");
$stmt->bind_param("i", $id_rincian_tiket);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $konser = $result->fetch_assoc();
} else {
    echo "Konser tidak ditemukan";
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $jumlahPemesanan = $_POST['jumlahPemesanan'];
    $namaPemesan = $_POST['nama'];
    $nomorHpPemesan = $_POST['nomorhp'];
    $emailPemesan = $_POST['email'];
    $tanggalPembelian = date("Y-m-d");
    
    // Ambil ID tiket dari formulir yang dikirimkan
    $id_rincian_tiket = $_GET['id_rincian_tiket'];
    $potong_urutan = substr($id_rincian_tiket, 11, 5);
    $id_tiket = $potong_urutan;

    $sql = "INSERT INTO pembelian_tiket_konser (nama_pemesanan, nomor_hp, email_pemesanan, jumlah, tanggal_pembelian, id_tiket) 
            VALUES (?, ?, ?, ?, ?, ?)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssssii", $namaPemesan, $nomorHpPemesan, $emailPemesan, $jumlahPemesanan, $tanggalPembelian, $id_tiket);

    if ($stmt->execute()) {
        echo "";
        
    } else {
        echo "Error: " . $stmt->error;
    }
}


$stmt->close();
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Musico</title>
    <link rel="icon" type="image" href="gambar/Logo2.png">
    <link rel="stylesheet" href="Pembayaran.css?v=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Anta&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Galindo&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Barlow&family=Chonburi&family=Frank+Ruhl+Libre&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mukta+Malar&family=Single+Day&display=swap" rel="stylesheet">
</head>
<body>

    <!-- Navigasi -->
    <div class="navigasiHeader">
        <div class="tombolBack">
            <a href="DetailKonten.php?id_rincian_tiket=<?php echo $id_rincian_tiket; ?>"><img src="gambar/Back.png" alt=""></a>
        </div>
        <a href="Halaman Utama.php"><h1>Musico</h1></a>
        <div class="navigasiNav">
            <a href="Halaman Utama.php">Home</a>
            <a href="AboutUs.html">About Us</a>
            <?php if (isset($_SESSION['username'])): ?>
                <a>Hallo, <?php echo $_SESSION['username']; ?> !</a>
            <?php else: ?>
                <a href="Halaman_Login.php">Login</a>
            <?php endif; ?>
        </div>
    </div>

    <!-- Konten pembayaran -->
    <div class="breadCrumb">
        <a href="Halaman Utama.php">Home /</a>
        <a href="DetailKonten.php?id_rincian_tiket=<?php echo $id_rincian_tiket; ?>"><?php echo $konser['nama_konser']; ?> /</a>
        <a href="Pembayaran.php?id_rincian_tiket=<?php echo $id_rincian_tiket; ?>">Pembayaran: <?php echo $konser['nama_konser']; ?></a>
    </div>

    <div class="berandaAtas">
        <h1>Pembayaran Tiket <?php echo $konser['nama_konser']; ?></h1>
        <img src="<?php echo $konser['posterBesar']; ?>" alt="Poster dari <?php echo $konser['nama_konser']; ?>">
    </div>

    <!-- Form biodata dan konten lainnya -->
    <div class="biodata">
    <form action="Pembayaran.php?id_rincian_tiket=<?php echo $id_rincian_tiket; ?>" method="post" class="biodataPembeli" onsubmit="return validateForm()">

            <label for="jumlahPemesanan">Masukan jumlah Pesanan</label><br>
            <div class="number-input">
                <input type="number" name="jumlahPemesanan" id="number"  placeholder="Ayo Beli" required>
                <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="add">+</button>
                <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus">-</button>

            </div>
            <br>

            <label for="nama">Nama Pemesan:</label><br>
            <input type="text" id="nama" name="nama" placeholder="Nama" required>
            <br><br>

            <label for="nomorhp">Nomor Ponsel Pemesan: </label><br>
            <input type="tel" id="nomorhp" name="nomorhp" placeholder="Contoh: 08**" min="10" max="13" required>
            <br><br>

            <label for="email">Email Pemesan: </label> <br>
            <input type="email" placeholder="email@example.com" name="email" id="email" required>
            <br><br>

            <br>

            <button onclick="alert('Apakah anda yakin ingin mereset inputan anda?')" type="reset" class="reset">Reset</button>
            <button type="submit" onclick="konfirmasiPembayaran()" class="sumbit" name="submit">Submit</button>
        </form>
    </div>



    <!-- Footer -->
    <div class="footeren">
        <footer>
            <p>Pemilik Mini Project</p>
            <p>&copy;Marcell Jureinwi Manuhutu - 71220855</p>
            <p>&copy;Rizky Charles Christiaan - 71220902</p>
            <p>&copy;Rifaldy Exclesia Tamauka - 71220922</p>
            <p>Universitas Kristen Duta Wacana</p>
        </footer>
    </div>

    <script>
    function konfirmasiPembayaran() {
        var number = document.getElementById("number").value;
        if (number < 1) {
            alert("Jumlah pemesanan harus lebih dari 0");
            return false; // Batalkan pengiriman formulir jika jumlah tidak valid
        }
        
        var nama = document.getElementById("nama").value;
        var ticketPrice = <?php echo $konser['harga_tiket']; ?>;
        var total = number * ticketPrice;

        var confirmationMessage = "Hallo " + nama + ", total pembelian anda adalah " + total + ". Anda yakin ingin membayar?";
        return confirm(confirmationMessage); // Tampilkan konfirmasi dan kembalikan hasilnya
    }

    function validateForm() {
        var number = document.getElementById("number").value;
        if (number < 1) {
            alert("Jumlah pemesanan harus lebih dari 0");
            return false;
        }

        return true;
    }
</script>

</body>
</html>
