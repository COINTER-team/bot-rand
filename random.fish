#!/data/data/com.termux/files/usr/bin/fish

set set_color
set rand random
set shuf
set send pv


#//////////////////color///////
             set bl (set_color black)
             set ij (set_color -o green)
             set b (set_color -o blue)
             set cy (set_color -o cyan)
             set m (set_color -o magenta)
             set pu (set_color -o white)
             set st (set_color normal)
             set ku (set_color -o yellow)
             set me (set_color -o red)
#######################################

# kamus sys
     set bot cat file/kamus.txt

function ct
    echo
  printf "$cy%s $me: $pu%s$st" "bot" "hayo kontol mau kemana\n"
    sleep 1
   printf "$cy%s $me: $pu%s$st" "bot" "lu mau keluar kan\n"
   sleep 3
   printf "$cy%s $me: $pu%s$st" "bot" "noh keluar :v\n"
       echo
    echo
   sleep 5
   xdg-open --view "google.com"
end

 trap ct INT

set main __main__

function load
for x in (seq 0 100)
  sleep 0.1
  printf "\r$m%s$ij%s$m%s $pu%s $ij%s$me%s$ij%s" "[" "?" "]" "proses" "$x"
end
   end # MAGER BRO JELASIN NYA
function banner
    toilet -f slant "Bot random"|lolcat --freq=44
    echo -e {$m}_______________________________________________
    printf "\t\t$pu%s %s %s\n" "code" "by" "polygon"
    printf "\t\t$m%s $b%s\n" "Random" "bot text"
    printf "$m%s\n" "_______________________________________________"
end

    set stat 100
function main
trap ct SIGINT
begin
      eval "clear"
end
   begin
         banner
  end
set sys exit

while [ os != $sys ]
   read -P {$ku}[{$cy}(date +%r | sed -f file/asu.sed){$ku}]{$me}~{$ij}">""$st "  os

if test -z "$os"
  printf "\n$m%s$ij%s$m%s $st%s\n" "[" "!" "]" "input kosong lol"
else if test {$os} = "exit"
printf "$pu%s $me: $cy%s$st\n" "bot" "shutdown bot"
    load
         clear
          echo
   exit 2
else if test {$os} = "keluar"
      printf "$pu%s $me: $cy%s$st\n" "bot" "shutdown bot"
         load
         clear
          exit 4
else
     ###############
     # random sys  #
     ###############

begin

       set start 1
       set done 65
       
           set zz (echo ($rand {$start} {$done}))
           set notify ($bot | tail +$zz | head -1)
    # task
    printf "$ij%s $m: $pu%s$st\n" "Bot" "$notify"
end

    end
if test $os = "clear" || if test {$os} = "bersih"
     begin
           load
            fish random.fish
    end
end
    end
       end
end

function usag
bash -c '
cat <<EOF
_____________________________________
            random bot
_____________________________________
usage : fish random.fish

///////////////////////////////////////////
-h | --help memunculkan intruksi pemakaian
exit ,keluar
keluar ,keluar :v lag kan

syarat memakai bot :
                    1.siap kan mental
                    2.gak boleh baper
                    3.player free fire tidak di saran kan
                    4.harus 14 tahun ke atas
                    5.resiko tanggung sendiri jangan menyalahkan author

jika syarat sudah di penuh silakan ketik fish random.fish --bot

//////////////////////////////////////////////////
Team         : helixs-crew & Cointer team
contributor  : PharaohBoi
code         : fish shell
/////////////////////////////////////////////////

EOF
' | $send --quiet --rate-limit {$stat}
end

switch $argv[1]

case -h
    usag
case --bot
if test {$main} = __main__
    main
end
case "*"
  begin
         usag
  end
end
