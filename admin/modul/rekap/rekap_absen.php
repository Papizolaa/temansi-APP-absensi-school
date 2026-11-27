<?php
// tampilkan data mengajar
$kelasMengajar = mysqli_query($con, "SELECT * FROM tb_mengajar

INNER JOIN tb_master_mapel ON tb_mengajar.id_mapel=tb_master_mapel.id_mapel
INNER JOIN tb_mkelas ON tb_mengajar.id_mkelas=tb_mkelas.id_mkelas
INNER JOIN tb_guru ON tb_mengajar.id_guru=tb_guru.id_guru

INNER JOIN tb_semester ON tb_mengajar.id_semester=tb_semester.id_semester
INNER JOIN tb_thajaran ON tb_mengajar.id_thajaran=tb_thajaran.id_thajaran
WHERE tb_mengajar.id_mkelas='$_GET[kelas]' /*AND tb_thajaran.status=1 AND tb_semester.status=1*/ ");



foreach ($kelasMengajar as $d)

?>




<div class="page-inner">

    <div class="page-header">
        <h4 class="page-title">Rekap Absen</h4>
        <ul class="breadcrumbs">
            <li class="nav-home">
                <a href="#">
                    <i class="flaticon-home"></i>
                </a>
            </li>
            <li class="separator">
                <i class="flaticon-right-arrow"></i>
            </li>
            <li class="nav-item">
                <a href="#">KELAS (<?php echo strtoupper($d['nama_kelas']) ?>)</a>
            </li>

        </ul>
    </div>


    <div class="row">

        <div class="col-md-12 col-xs-12">


            <div class="card">
                <div class="card-body">

                    <table class="table table-head-bg-danger table-xs">
                        <thead>
                            <tr>
                                <th scope="col">No.</th>
                                <th>Kode Pelajaran</th>
                                <th scope="col">Mata Pelajaran</th>
                                <th scope="col">Absensi</th>
                            </tr>

                        </thead>
                        <tbody>
                            <?php
                            $no = 1;
                            foreach ($kelasMengajar as $mp) { ?>
                                <tr>
                                    <td><?php echo $no++; ?></td>
                                    <td><?php echo $mp['kode_pelajaran']; ?></td>
                                    <td>
                                        <b><?php echo $mp['mapel']; ?></b><br>
                                        <code><?php echo $mp['nama_guru']; ?></code>
                                    </td>
                                    <td>    
                                        <form action="" method="get" class="row mb-3">
                                            <input type="hidden" name="page" value="rekap">
                                            <input type="hidden" name="act" value="rekap-perbulan">
                                            <input type="hidden" name="pelajaran" value="<?= $mp['id_mengajar'] ?>">
                                            <input type="hidden" name="kelas" value="<?= $_GET['kelas'] ?>">
                                            <div class="col-4">
                                                <select name="bulanx" class="form-control" required>
                                                    <option value="" disabled selected>Bulan</option>
                                                    <option value="1">Januari</option>
                                                    <option value="2">Februari</option>
                                                    <option value="3">Maret</option>
                                                    <option value="4">April</option>
                                                    <option value="5">Mei</option>
                                                    <option value="6">Juni</option>
                                                    <option value="7">Juli</option>
                                                    <option value="8">Agustus</option>
                                                    <option value="9">September</option>
                                                    <option value="10">Oktober</option>
                                                    <option value="11">November</option>
                                                    <option value="12">Desember</option>
                                                </select>
                                            </div>
                                            <div class="col-4">
                                                <select name="tahunx" class="form-control" required>
                                                    <?php
                                                    for ($i = 0; $i < 5; $i++) {
                                                    ?>
                                                    <option value="<?= date('Y') - $i ?>"><?= date('Y') - $i ?></option>
                                                    <?php
                                                    }
                                                    ?>
                                                </select>
                                            </div>
                                            <div class="col-4">
                                                <button class="btn btn-sm btn-default" type="submit">Rekap Absen</button>
                                            </div>
                                            <!-- <input type="submit" name="submit" value="Bulan"> -->
                                            <!-- <a href="?page=rekap&act=rekap-perbulan&pelajaran=&kelas=" class="btn btn-default">
                                                <span class="btn-label">
                                                    <i class="fas fa-clipboard"></i>
                                                </span>
                                                Rekap Absen
                                            </a> -->
                                        </form>

                                        <?php
                                        if (isset($_POST['submit'])) {
                                            if (!empty($_POST['bulan'])) {
                                                foreach ($_POST['bulan'] as $selected) {
                                                    echo '  ' . $selected;
                                        ?>
                                                    <script>
                                                        window.location.href = "modul/rekap/hasil_rekap_admin.php?bulan=" + <?php echo $selected ?> + "&id_mengajar=" + <?php echo $mp['id_mengajar'] ?>;
                                                    </script>

                                        <?php
                                                }
                                            } else {
                                                echo 'Please select the value.';
                                            }
                                        }
                                        ?>

                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>

                </div>

            </div>
        </div>

    </div>

</div>