#!/bin/bash

# Задайте список идентификаторов протеинов
protein_ids=("NP_001622.2" "P09923.2" "AER46070" "AER46069" "QUM82918" "Q93P54" "NP_414917")

# Цикл для скачивания последовательностей
for id in "${protein_ids[@]}"; do
  efetch -db protein -id "$id" -format fasta > ${id}.faa
done

