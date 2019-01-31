            <script>
              function getCouleur(id) {
                <?php 
                if($carre->getEnqueteur() != null){ ?>
                  document.getElementById('id').style.fill = "red";
                <?php } else { ?>
                  document.getElementById('id').style.fill = "white";
                <?php } ?>
              }
            </script>