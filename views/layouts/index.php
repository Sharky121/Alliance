<!DOCTYPE html>
<html lang="ru">
  <?php include ('parts/head.php') ?>
  <?php include ('parts/helpers.php') ?>

  <body>
    <?php include ('parts/header.php') ?>

    <?php include ($_SERVER['DOCUMENT_ROOT'].'/views/pages/'.$view.'.php'); ?>

    <?php include ('parts/footer.php') ?>
    <?php include ('parts/modal.php') ?>
  </body>

</html>
