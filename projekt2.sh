#!/bin/bash

if [[ $1 == "--date" || $1 == "-d" ]]; then
    echo $(date)

elif [[ $1 == "--logs" || $1 == "-l" ]]; then
    if [[ -z $2 ]]; then
        for ((i=1; i<=100; i++)); do
            filename="log${i}/log${i}.txt"
            echo -e "Nazwa pliku: ${filename}\nNazwa skryptu: $0\nData: $(date)" > "$filename"
        done
    else
        num_files=$2
        for ((i=1; i<=num_files; i++)); do
            filename="log${i}/log${i}.txt"
            echo -e "Nazwa pliku: ${filename}\nNazwa skryptu: $0\nData: $(date)" > "$filename"
        done
    fi

elif [[ $1 == "--help" || $1 == "-h" ]]; then
    echo "Dostępne opcje:"
    echo "-d, --date: Wyświetla dzisiejszą datę."
    echo "-l, --logs [liczba]: Tworzy automatycznie podaną liczbę plików logx/logx.txt, gdzie x to numer pliku od 1 do liczba. Jeśli liczba nie jest podana, tworzonych jest 100 plików."
    echo "--init: Klonuje całe repozytorium do katalogu, w którym został uruchomiony, i ustawia ścieżkę w zmiennej środowiskowej PATH."
    echo "-e, --error [liczba]: Tworzy automatycznie podaną liczbę plików errorx/errorx.txt, gdzie x to numer pliku od 1 do liczba. Jeśli liczba nie jest podana, tworzonych jest 100 plików."
    echo "-v, --version: Wyświetla wersję skryptu."

elif [[ $1 == "--init" ]]; then
    git clone <https://github.com/Jr-Smj/Github>
    export PATH=$PATH:$(pwd)

elif [[ $1 == "--error" || $1 == "-e" ]]; then
    if [[ -z $2 ]]; then
        for ((i=1; i<=100; i++)); do
            filename="error${i}/error${i}.txt"
            echo -e "Nazwa pliku: ${filename}\nNazwa skryptu: $0\nData: $(date)" > "$filename"
        done
    else
        num_files=$2
        for ((i=1; i<=num_files; i++)); do
            filename="error${i}/error${i}.txt"
            echo -e "Nazwa pliku: ${filename}\nNazwa skryptu: $0\nData: $(date)" > "$filename"
        done
    fi

elif [[ $1 == "--version" || $1 == "-v" ]]; then
    echo "Wersja skryptu: 1.0"

else
    echo "Nieznana opcja. Użyj --help lub -h, aby wyświetlić dostępne opcje."
fi
