<?php
require 'includes/header.php';
require 'includes/dbhandler.php';
?>

<main>
    <link rel="stylesheet" href="css/gallery.css">

    <script>
    function triggered() {
        document.querySelector("#gallery-image").click();
    }

    function preview(e) {
        if (e.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                document.querySelector('#gallery-display').setAttribute('src', e.target.result);
            }
            reader.readAsDataURL(e.files[0]);
        }
    }
    </script>

    <?php
if(isset($_SESSION['uid'])){
    ?>
    <div class="bg-cover">
        <div class="h-50 center-me text-center">
            <div class="my-auto">
                <form action="includes/gallery-helper.php" method="POST" enctype="multipart/form-data">

                    <div class="form-group ">
                        <img src="images/abraham_lincoln.jpg" alt="gallery picture" onclick="triggered();" id="gallery-display">
                        <center>
                            <input type="text" name="title" class="form-control" style="width: 400px; height: 40px;"  placeholder="title">
                        </center>
                        <input type="file" name="gallery-image" id="gallery-image" onchange="preview(this)"
                            class="form-control" style="display: none;">
                    </div>

                    <div class="form-group">
                        <textarea name="description" id="bio" cols="40" rows="10" placeholder="description"
                            style="text-align: center;"></textarea>
                    </div>

                    <div class="form-group">
                        <center><button type="submit" name="gallery-submit" style="width: 400px;"
                            class="btn btn-success btn-lg btn-block">Upload</button>
                        </center>
                    </div>

                </form>
            </div>
        </div>
    </div>

    <?php
} 

?>

</main>