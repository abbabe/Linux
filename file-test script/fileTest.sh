#!/bin/bash

#File Test Operators

# $0 - Script’in adı
# $1‘den $9‘a kadar - Scripte verilen argümanlar
# ($1 birinci argüman olmak üzere)
# $? - Bir önceki komutun döndürdügu kod
# $$ - islem Kimlik Numarası (Process Identification Number-PID)

if [[ $# -lt 1 ]]  #    $# - Argüman sayısı
then
echo  dosya adı veya adları girin 
else

FILES="$@"   #  $@ - Tüm argümanlar
for file in $FILES
do
     if [[ -e $file ]]  # exists
        then
                if [[ -r $file ]] # readable
                then
                        rd="r"
                else
                        rd="-"
                fi

                if [[ -w $file ]] # writable
                then
                        wr="w"
                else
                        wr="-"
                fi

                if [[ -x $file ]]  # executable
                then
                        ex="x"
                else
                        ex="-"
                fi

                if [[ -s $file ]] # size is > 0 bytes
                then
                        sz="size>0B"
                        
                        

                else
                        sz="size=0"
                fi

                dir="$file isimli dosya bulundu"
                echo "${rd} ${wr} ${ex} ${sz} ${filesize}    ${dir}"
        else
                dir="$file isimli dosya bulunamadı"
                echo "${dir}"

        fi 


done

fi












