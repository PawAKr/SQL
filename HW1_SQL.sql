1) Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd

     select model, speed, hd from pc
     where price < 500

2) Найдите производителей принтеров. Вывести: maker
       
    Select DISTINCT maker from product
    where type = 'Printer'

3) Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол

    Select model, ram, screen from Laptop
    where price > 1000

4) Найдите все записи таблицы Printer для цветных принтеров

    Select * from printer
    where color = 'y' 

5) Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол

    Select model, speed, hd from pc
    where price < 600 and cd in ('12x', '24x')

6) Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.

      
