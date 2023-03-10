<?php 
session_start();
if (!isset($_SESSION['username'])){
    $_SESSION['msg'] = 'anda harus login';
    header('Location: login.php');
}
require "config.php";

$uname = $_SESSION['username'];
$sql = "SELECT * FROM users WHERE username = '$uname'";
$query = mysqli_query($con, $sql);
$data = mysqli_fetch_assoc($query);
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>History</title>
    <link rel="stylesheet" type="text/css" href="css/main.css" />
    <link rel="stylesheet" type="text/css" href="css/tambahan.css" />
</head>
<body>
<header>
    <nav>
        <ul>
            <p><a href= "home.php">Home</a></p>
        </ul>
    </nav>
</header>
<div>
    <h1 class="contact">History</h1>
    <div class="row background-data2">
        <div class="col-12">
            <div class="col-6">
                <form method="get">
                    <div>
                        <input type="search" name="search" id="form1" placeholder="Searching History"/>
                        <input type="submit" value="Search">
                    </div>
                </form>
            </div>
            <table>
                <thead>
                <tr>
                    <th>No</th>
                    <th>Item</th>
                    <th>Jumlah</th>
                    <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
                <?php
                $batas = 5;
                $halaman = @$_GET['halaman'];
                if(empty($halaman)){
                    $posisi = 0;
                    $halaman = 1;
                }
                else{
                    $posisi = ($halaman-1) * $batas;
                }
                if(isset($_GET['search'])){
                    $search = $_GET['search'];
                    $sql="SELECT * from transaksi WHERE item LIKE '%$search%' order by id_tr Asc limit $posisi, $batas";
                }else{
                    $sql="SELECT * from transaksi order by id_tr Asc limit $posisi,$batas";
                }

                $hasil=mysqli_query($con, $sql);
                while ($data = mysqli_fetch_array($hasil)){
                ?>
                <tr>
                    <td><?= ($data['id_tr']) ?></td>
                    <td><?= ($data['item']) ?></td>
                    <td><?= ($data['jumlah']) ?></td>
                    <td>
                        <form>
                            <a class="page-item" href="history2.php?id_tr=<?= $data['id_tr'] ?>">Read</a>
                        </form>
                        <form>
                            <a class="page-item" href="valorant2.php?id_tr=<?= $data['id_tr'] ?>">Update</a>
                        </form>
                        <form>
                            <a class="page-item" href="delete.php?id_tr=<?= $data['id_tr'] ?>">Delete</a>
                        </form>
                    </td>
                    <?php }
                    ?>
                </tr>
                <?php
                if(isset($_GET['search'])){
                    $search = $_GET['search'];
                    $query2 = "SELECT * from transaksi WHERE item LIKE '%$search%' order by id_tr Desc";
                }else{
                    $query2 = "SELECT * from transaksi order by id_tr Desc";
                }
                $result2 = mysqli_query($con, $query2);
                $jmldata = mysqli_num_rows($result2);
                $jmlhalaman = ceil($jmldata/$batas);
                ?>
                </tbody>
            </table>
            <nav>
                <ul>
                    <?php
                    for($i=1;$i<=$jmlhalaman;$i++){
                        if ($i !=$halaman){
                            if(isset($_GET['search'])){
                                $search = $_GET['search'];
                                echo "<a class='page-item' href='history.php?halaman=$i&search=$search'>$i</a>";
                            }else{
                                echo "<a class='page-item' href='history.php?halaman=$i'>$i</a>";
                            }

                        }else{
                            echo "<a  class='page-item' href='#'>$i</a>";
                        }
                    }
                    ?>
                </ul>
            </nav>
        </div>
    </div>
</div>
</body>
</html>
