## Часть 1. Готовый докер ##
проверка имаджей и пулим nginx <br>
![alt text](pics/dockerpullnginx.png) <br>
запускаем nginx <br>
![alt text](pics/dkps.png) <br>
инспект контейнера <br>
![alt text](pics/dkinspect.png) <br>
необходимые по заданию параметры <br>
![alt text](pics/size.png) <br>
![alt text](pics/ipaddress.png) <br>
![alt text](pics/expports.png) <br>
остановка контейнера <br>
![alt text](pics/dockerstopps.png) <br>
мапим порты <br>
![alt text](pics/zamapil.png) <br>
проверяем, что работает и рестартим контейнер <br>
![alt text](pics/rabotaet.png) <br>
![alt text](pics/restart.png) <br>
## Часть 2. Операции с контейнером ## 
выводим содержимое файла nginx.conf напрямую из контейнера <br>
![alt text](pics/catnginxconf.png) <br>
настраиваем отдачу сервера nginx по /status <br>
![alt text](pics/nginxconf.png) <br>
закидываем nginx.conf в контейнер <br>
![alt text](pics/cp.png) <br>
релоадим nginx и проверяем что все гуд <br>
![alt text](pics/reloadnginx.png) <br>
![alt text](pics/robit.png) <br>
экспортируем образ в контейнер <br>
![alt text](pics/tarexport.png) <br>
удалим имаджи <br>
![alt text](pics/stopim.png) <br>
![alt text](pics/udal.png) <br>
```через docker rm удалим контейнер``` <br>
![alt text](pics/importizapusk.png) <br>
![alt text](pics/statusrobit.png) <br>

## Часть 3. Мини веб-сервер ##
```sudo apt update``` <br>
```sudo apt install nginx``` <br>
```sudo apt install nginx-extras``` <br>
меняем в конфиге значение listen на 81 <br>
![alt text](pics/nginxconfluty.png) <br>
простейшик fcgi кодик <br>
![alt text](pics/kodik.png) <br>
запускаем контейнер на 81 порту с образа nginx <br>
![alt text](pics/image81.png) <br>
копируем в контейнер nginx.conf и код fastcgi<br>
![alt text](pics/cpshechka.png) <br>
заходим в контейнер <br>
![alt text](pics/zahodimvcont.png) <br>
устнавливаем необходимые утилиты <br>
![alt text](pics/gccinstall.png) <br>
![alt text](pics/spawninstall.png) <br>
![alt text](pics/fcgiinstall.png) <br>
![alt text](pics/gccinstall.png) <br>
компилим код <br>
![alt text](pics/compil.png) <br>
запускаем сервер spawn-fcgi на 8080<br>
![alt text](pics/vyazhemna8080.png) <br>
работает ;-; <br>
![alt text](pics/81robit.png) <br>

## Часть 4. Свой докер ## 
написанный докерфайл:<br>
![alt text](pics/dockerfile.png) <br>
билдим <br>
![alt text](pics/zapuskobraz.png) <br>
проверяем, что работает <br>
![alt text](pics/robitda.png) <br>
мапим 81 порт на 80 порт локальной машины и опять проверяем, что все ок<br>
![alt text](pics/menyaemconf.png) <br>
![alt text](pics/vsyorobit.png) <br>

## Часть 5. Dockle ##
команда для установки на Ubuntu: <br>
![alt text](pics/installdockle.png) <br>
загоняем на проверку текущий Dockerfile: <br>
![alt text](pics/dockledo.png)
исправленный вариант: <br>
![alt text](pics/dockerfile1.png)
все команды с открытыми переменными вынес в баш скрипт, можно было вынести в ENV <br>
![alt text](pics/script.png)
проверяем, что все ок <br>
![alt text](pics/docklecheck.png)

## Часть 6. Базовый docker-compose ##
docker-compose <br>
![alt text](pics/compose.png)
билдим имадж: <br>
![alt text](pics/build.png)
поднимаем контейнеры: <br>
![alt text](pics/up.png)
проверяем, что все работает <br>
![alt text](pics/check1.png)