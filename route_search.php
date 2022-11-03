

<?php include('./header.php'); ?>

    <?php
    if (isset($_POST['submit'])) {
        $p_name = mysqli_real_escape_string($conn, $_POST['p_name']);
        $sql = "SELECT departure,
        destionation
        FROM passenger
        WHERE p_name = $p_name";

        $result = mysqli_query($conn, $sql);
        $queryResult = mysqli_num_rows($result);

        if ($queryResult > 0) {
            echo "<table style='width:100%' class='table table-striped table-hover'>";
            echo "<thead class='thead-dark'>
            <tr>
              <th scope='col'>Name</th>
              <th scope='col'>Departure</th>
              <th scope='col'>Destination</th>
            </tr>
            </thead>";
            while ($row = mysqli_fetch_assoc(($result))) {

                echo " 
                <tr>
                    <td>" . $row['p_name'] . "</td>
                    <td>" . $row['departure'] . "</td>
                    <td>" . $row['destination'] . "</td>
                </tr>";
            }
            echo "</table>";
        } else {
            echo "<p>There are no results matching your search</p>";
        }

        mysqli_free_result($result);
    }




    ?>


</body>

</html>