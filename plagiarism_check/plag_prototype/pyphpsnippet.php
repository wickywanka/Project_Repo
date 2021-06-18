//this code can run individually,giving separately because it cannot run without user_id in database,which will not be present in any server except ours.
//This snippet is from student dashboard
<?php $command=escapeshellcmd('test.py');
$output=shell_exec($command);
echo '<h5 style="color:red;font-weight:bold;">'.$output.'</h5>';
?>
