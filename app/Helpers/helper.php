<?php
if (!function_exists('slugify')) {
    function slugify($text, string $divider = '-')
    {
        $text = str_replace(' ', $divider, $text);
        //dd($text);
        //$text = mb_strtolower($text);
        //$issue_url = iconv('utf-8', 'UTF-8//TRANSLIT', $text);
        $turkisLetter = ["Ğ","Ü","Ş","İ","Ö","Ç","ğ","ü","ş","ı","ö","ç"," "];
        $englishLetter = ["G","U","S","I","O","C","g","u","s","i","o","c","-"];
        $text = str_replace($turkisLetter, $englishLetter, trim($text));
        return strtolower(preg_replace('/[^A-Za-z0-9-]+/', '', $text));
    }
}
