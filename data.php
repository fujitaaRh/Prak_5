<?php
        $host = "localhost";
        $user = "root";
        $password = "";
        $dbName = "praktikum_4";
        $connection = mysqli_connect($host, $user, $password, $dbName);
        if(!$connection){
            die("Koneksi gagal : ".mysqli_connect_error());
        }
?>

<table border="1">
        <tr>
            <th> No  </th>
            <th> NIM </th>
            <th> Nama </th>
            <th> Program Studi </th>`   
        </tr>

    <?php
        $kode = ($_POST['kode']);
        $query = "SELECT * FROM mahasiswa WHERE Kode_Prodi = '$kode' ";
        $result = mysqli_query($connection, $query);
        $i = 0;
        while ($data = mysqli_fetch_array($result)) :
            $i++;
            ?>
            <tr>
                <td> <?= $i ?> </td>
                <td> <?= $data["Nim"] ?> </td>
                <td> <?= $data["Nama"] ?> </td>
                <td> <?= $data["Prodi"] ?> </td>
                
            </tr>
    <?php
endwhile
?>
</table>