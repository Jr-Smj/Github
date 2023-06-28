#!/bin/bash

case $1 in
  --date)
    display_date
    ;;
  --logs)
    if [[ -n $2 ]]; then
      create_logs $2
    else
      create_logs 100
    fi
    ;;
  --help)
    display_help
    ;;
  *)
    echo "Nieznana opcja. Użyj --help, aby zobaczyć dostępne opcje."
    ;;
esac


display_date() {
  current_date=$(date +%Y-%m-%d)
  echo "Dzisiejsza data: $current_date"
}

create_logs() {
  num_logs=$1
  for ((i=1; i<=num_logs; i++)); do
    log_file="log$i.txt"
    echo "Nazwa pliku: $log_file" > $log_file
    echo "Nazwa skryptu: $0" >> $log_file
    echo "Data utworzenia: $(date +%Y-%m-%d)" >> $log_file
  done
  echo "Utworzono $num_logs plików log."
}

display_help() {
  echo "Dostępne opcje skryptu:"
  echo "--date: Wyświetla dzisiejszą datę."
  echo "--logs [liczba]: Tworzy automatycznie podaną liczbę plików log. Jeśli liczba nie jest podana, domyślnie tworzy 100 plików."
  echo "--help: Wyświetla wszystkie dostępne opcje skryptu."
}
