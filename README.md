# flower_CC2340R5_RGE
![](/images/photo_2025-10-31_19-16-54.jpg)
![](/images/2025-10-31_203427.png)
### Аппаратные средства
1. Flower_CC2340R5_RGE
2. LP-XDS110(ET) или LP-CC2652R7(CC26X2R1_LAUNCHXL)

![](/images/photo_2025-10-31_19-38-26.jpg)
![](/images/photo_2025-10-31_19-39-06.jpg)
Проект [OSHWLab](https://oshwlab.com/koptserg/zigbee_cc2340_cr2032)

![](/images/2025-10-31_194809.png)
## Управление устройством
#### При подключении питания
   1. Запускается mcuboot (красный светодиот горит постоянно, зеленый светодиод моргает).
   2. Запускается приложение (светодиоды гаснут).
   3. Устройство в режиме ожидания подключения к сети или реконнект, если устройство зарегистрировано в сети.
#### Добавить устройство в сеть
   1. Нажать кнопку SW1 и удерживать 5 сек.
   2. Дождаться добавление в сеть (зеленый светодиод моргает пока не подключится к сети).
#### Удалить устройство из сети (perform factory reset) 
   1. Нажать кнопку SW1 и удерживать 5 сек.
   3. Дождаться выхода из сети (красный светодиод моргнет 3 раза).
#### Отправить отчет значений влажности почвы и батарейки
   1. Коротко нажать кнопку SW1.
#### Автоматический отчет
   1. Отчет значений влажности почвы и батарейки каждые 10 минут.
### Список литературы:
1. Руководство пользователя [SimpleLink Low Power F3 SDK 8.40.02.01](https://software-dl.ti.com/simplelink/esd/simplelink_lowpower_f3_sdk/8.40.02.01/exports/docs/zigbee/html/zboss-guide/index-cc23xx.html)
2. Руководство пользователя [Code Composer Studio 12.8.0 ](https://software-dl.ti.com/ccs/esd/documents/users_guide_12.8.0/ccs_getting-started.html)
3. Разработка с ZBOSS для Zigbee [Developing with ZBOSS for Zigbee](https://software-dl.ti.com/simplelink/esd/simplelink_lowpower_f3_sdk/9.11.00.18/exports/docs/third_party/zboss_r23/doxygen/html/index.html)
