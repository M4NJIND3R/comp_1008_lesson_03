<?php 

    if (isset($_POST['name'])){
        $result = mysqli_query($mysqli, "
            INSERT INTO countries (
                name,
                description,
                population
            ) VALUES (
                '{$_POST['name']}',
                '{$_POST['description']}',
                {$_POST['population']}
            )
            ");

        if ($result) {
            echo "The new country was added";
        } else {
            $error = mysqli_error($mysqli);
            echo "error occured";
            echo "<br>{$error}";
        }
    }

?>