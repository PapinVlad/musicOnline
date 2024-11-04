<?php
include 'config/config.php';
    include 'includes/header.php';

    // bring in album details
    $publish = $conn->prepare("SELECT
    id,
    albName,
    albDescription,
    release_date,
    image
    FROM album
    WHERE is_active = 0");
    $publish->execute();
    $publish->store_result();
    $publish->bind_result($aID, $albName, $albDesc, $release, $image);


    $unpublish = $conn->prepare("SELECT
    id,
    albName,
    albDescription,
    release_date,
    image
    FROM album
    WHERE is_active = 1");
    $unpublish->execute();
    $unpublish->store_result();
    $unpublish->bind_result($aID, $albName, $albDesc, $release, $image);
?>
    <h1>Pending Page</h1>

<main class="vinyl">
    
    <section>
        <h2>Unpublish albums</h2>
    <?php while($unpublish->fetch()) : ?>
    <div>
        <h2><?= $albName ?></h2>
        <img src="<?= ROOT_DIR ?>assets/images/<?= $image ?>" alt="" >
        <h2><?= $albDesc ?></h2>
        <span><?= $release ?></span>
        <a href="<?= ROOT_DIR ?>public/moreInfo.php?aid=<?= $aID ?>">More Info</a>
        <a href="<?= ROOT_DIR ?>public/admin/unpublish.php?aid=<?= $aID ?>">Unpublisg</a>
    </div>
    <?php endwhile ?>
    </section>

    <section>
        <h2>Publish albums</h2>
    <?php while($publish->fetch()) : ?>
    <div>
        <h2><?= $albName ?></h2>
        <img src="<?= ROOT_DIR ?>assets/images/<?= $image ?>" alt="" >
        <h2><?= $albDesc ?></h2>
        <span><?= $release ?></span>
        <a href="<?= ROOT_DIR ?>public/moreInfo.php?aid=<?= $aID ?>">More Info</a>
        <a href="<?= ROOT_DIR ?>public/admin/publish.php?aid=<?= $aID ?>">Publish</a>
    </div>
    <?php endwhile ?>
    </section>
    
</main>

<?php
    include 'includes/footer.php';
?>