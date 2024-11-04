<?php
    include 'config/config.php';
    include 'includes/header.php';

        /* bring in album details */
        $album = $conn->prepare("SELECT
        albName,
        albDescription,
        release_date,
        image
        FROM album");
        $album-> execute();
        $album->store_result();
        $album->bind_result($albName, $albDesc, $release, $img);
?>

<main>
    
</main>


<?php 
    include 'includes/footer.php'
?>