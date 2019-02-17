<?php
function addLog($txt) {
    if (!file_exists("log.txt")) file_put_contents("log.txt", "");
    file_put_contents("log.txt",date("[j/m/y H:i:s]")." - $txt \r\n".file_get_contents("log.txt"));
}
