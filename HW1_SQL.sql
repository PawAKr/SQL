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

7)
8)

9) Найти производителей ПК с процессором не менее 450 МГц. Вывести :maker

    Select DISTINCT product.maker from product
    inner join pc on product.model = pc.model
    where speed >= 450

10)

11) НАйдите среднюю скорость ПК

    Select avg(speed) from pc

12) Найдите среднюю скорость ПК-блокнотов,цены которых превышают 1000

    Select avg(speed) as AVG_speed from laptop
    where price > 1000 

13) Найдите среднюю скорость ПК, выпущенных производителем A
    
    Select avg(speed) as AVG_speed from pc
    join product on pc.model = product.model
    where maker = 'A'

14) Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий

   select ships.class, name, country from ships
   join classes on ships.class = classes.class
   where numGuns >= 10

15) Найдите размеры жестких дисков совпадающие у двух или более PC.Вывести:HD

   
17) Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
Вывести: maker, средний размер экрана.

   Select maker, avg(screen) as avg_screen from laptop
   join product on product.model = laptop.model
   Group by maker

21) Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого     есть модели в таблице PC.
    Вывести: maker, максимальная цена.

   select maker, MAX(price) as max_price from pc
   join product on pc.model = product.model
   group by maker

    



