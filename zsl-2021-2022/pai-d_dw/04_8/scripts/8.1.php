<?php
echo("<pre>");
    print_r($_POST);
echo("<pre>");
if(!empty($_POST['name']) && !empty($_POST['figures'])){
    switch($_POST['figures']){
        case 'square':
            header('location: ./square.php');
            break;
        case 'rectangle':
            header('location: ./rectangle.php');
            break;
    }
}else{
    ?>
    <script>
        history.back();
    </script><?php
}
?>