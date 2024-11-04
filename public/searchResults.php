
<?php
include 'config/config.php';
    include 'includes/header.php';
    $search = $_POST['search'];
    $searchResult = "%" . $search . "%";

    // bring in album details
    $album = $conn->prepare("SELECT
    album.id,
    album.albName,
    artist.artName,
    genre.genreName,
    album.image
    
    FROM
    album
    INNER JOIN artist ON album.fk_artist_id = artist.id
    INNER JOIN genre ON album.fk_genre_id = genre.id
    WHERE album.albName LIKE ? OR artist.artName LIKE ? OR genre.genreName LIKE ?");

    $album->bind_param('sss', $searchResult, $searchResult, $searchResult);
    $album->execute();
    $album->store_result();
    $album->bind_result($aID, $albName, $artName, $genreName, $image);
?>
    <h1>search Page</h1>

<main class="vinyl">
    <?php while($album->fetch()) : ?>
    <div>
        <h2><?= $albName ?></h2>
        <img src="<?= ROOT_DIR ?>assets/images/<?= $image ?>" alt="" >
        <h2><?= $artName ?></h2>
        <span><?= $genreName ?></span>
        <a href="<?= ROOT_DIR ?>public/moreInfo.php?aid=<?= $aID ?>">More Info</a>
    </div>
    <?php endwhile ?>
</main>

<?php
    include 'includes/footer.php';
?>