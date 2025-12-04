<?php include("header.php")?>
<?php
    include("conn.php");
    if(isset($_GET['idLivro'])){
        $idLivro = $_GET['idLivro'];
        $query = "SELECT * FROM livro WHERE id = $idLivro";
        $result = mysqli_query($link, $query);
        if($reg = mysqli_fetch_assoc($result)){
            $tituloLivro = $reg['titulo'];
            $autorLivro = $reg['autor'];
            $descricaoLivro = $reg['descricao'];
            $fotoLivro = $reg['foto'];
            
            $path = img_books . basename($fotoLivro);
        }
        $imagens = [];
        $queryImg = "SELECT * FROM img_livros WHERE idLivro = $idLivro";
        $resultImg = mysqli_query($link, $queryImg);
        while($regImg = mysqli_fetch_assoc($resultImg)){
            $imagens[] = img_books . $regImg['caminho'];
        }
    }
?>



<div class="container-fluid px-5 my-5 fade">
    <div class="row">
        <div class="col-lg-8 col-sm-12 py-4 mb-4">
            <div class="carousel slide" id="carrosselLivro" data-bs-ride="carousel" style="background-color: #ECECEC; border-radius: 12px; padding: 15px; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target='#carrosselLivro' data-bs-slide-to="0" class="active" aria-current="true"></button>
                    <?php foreach($imagens as $index => $img): ?>
                    <button type="button"
                        data-bs-target="#carrosselLivro"
                        data-bs-slide-to="<?= $index + 1 ?>">
                    </button>
                <?php endforeach; ?>
                </div>
                
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="<?= $path ?>" class="d-block w-100" style="height: 600px; width: auto; margin: 0 auto; object-fit: contain;" alt="Capa do livro <?= $tituloLivro ?>">
                    </div>
                    <?php foreach($imagens as $img): ?>
                        <div class="carousel-item">
                            <img src="<?= $img ?>" class="d-block w-100" style="height: 600px; width: auto ; margin: 0 auto; object-fit: contain; " alt="Imagem complementar do livro <?= $tituloLivro ?>">
                        </div>
                    <?php endforeach; ?>
                </div>

                <button class="carousel-control-prev" type="button" data-bs-target="#carrosselLivro" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Anterior</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carrosselLivro" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Próximo</span>
                </button>
            </div>
            
        </div>
        <div class="col-lg-4 col-sm-12 py-4 mb-4">
            <div class="container" style="background-color: #f2f2f2; border-radius: 12px; padding: 15px; box-shadow: 9px 4px 10px rgba(0, 0, 0, 0.3);">
                <h2 class="fw-bolder mb-4 text-center"><?= $tituloLivro ?></h2>
                <h5 class="text-center mb-3">Autor: <?= $autorLivro ?></h5>
                <p class="text-justify"><?= nl2br($descricaoLivro) ?></p>
            </div>
    </div>
</div>
               
<?php include("footer.php")?>