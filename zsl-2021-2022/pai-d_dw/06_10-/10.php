<?php
//date()
echo "dzień-miesiąc-rok: ".date('d-m-Y').'<br>';            //dd-mm-yyyy
echo "dzień-miesiąc-rok: ".date('m-d-y').'<br>';            //dd-mm-yy
echo "dzień-miesiąc-rok: ".date('d-M-Y').'<br>';            //dd-MMM-yyyy
echo "dzień-miesiąc-rok: ".date('d-F-Y').'<br>';            //dd-M(fullname)-yyyy

setlocale(LC_ALL, 'polish');
echo strftime('%d %B %Y'),'<br>';

echo date('G:i:s'),'<br>';                                  //h:min:sec
echo date('G:i:sa'),'<br>';                                 //h:min:sec 12h-form
echo date('H:i:s'),'<br>';                                  //hh:min:sec 24h form
?><script>
    /*setTimeout(function(){
        window.location.reload();
    }, 1000);*/                                             //reload page in 1s intervals
</script><?php
//getdate()
$date = getdate();
//print_r($date);
echo $date['wday'],'<br>';                                  //weekday
echo $date['yday']+1,'<br>';                                //yearday
echo $date['0'],'<br>';                                     //from "date 0"
echo date('L'),'<br>';                                      //przestępność roku
?><?php
//mktime()
$today = mktime(0,0,0,date('m'),date('d'),date('y'));
echo $today,'<br>';
//ile of 1.1.1970
$year = $today/(60*60*24*365); 
echo (int)$year,'<br>';
//ile lat mineło od poprzedniego roku
$today = mktime(0,0,0,date('m'),date('d'),2020);
echo $when,'<br>';
?>