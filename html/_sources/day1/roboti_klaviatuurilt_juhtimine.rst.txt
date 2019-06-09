
Roboti juhtimine klaviatuuriga
==============================

ROS-is on roboti kiiruse seadmiseks vaja kuulutada kindlat tüüpi liikumisjuhistega sõnumeid, mida robotis töötav programm aru saab. Siin kasutame liikumisjuhiste kuulutamiseks programmi, mis erinevate klahvivajutuste korral kuulutab ROS keskkonnas erinevaid liikumisjuhiseid. Nii saamegi robotit klaviatuuri abil juhtida.

1.  Avame lisaks robotiga ühenduses olevale aknale veel ühe terminali.

2.  Seadistame roboti, mida soovime juhtida, selle akna ROS peremeheks:

    .. code-block:: bash
 
       seadista_robot

3. Programm küsib roboti numbrit ja teeb selle põhjal vajalikud sedaistused. Sisesta oma roboti number ja vajute Enter.


4.  Nüüd saame käivitada ROS sõlme, mis jälgib terminali aknas tehtud klahvivajutusi ja on ühendatud robotiga:

    .. code-block:: bash
 
       roslaunch robotont_teleop teleop_pc_side.launch

5.  Tulemus peaks olema selline:

    .. figure:: ../images/lab01/image34.png
        :scale: 70 %

        ..

    .. warning:: NB! Sellest hetkest saab klahvivajutustega panna robotit eri suundades sõitma. Selleks, et klahvivajutused mõjuks, peab see terminaliaken olema aktiivne.
                 
                 ROBOTI PEATAMISEKS VAJUTA "k" KLAHVI!
                 
                 Kui kaotad roboti üle kontrolli, vajuta punast E-STOP nuppu või tõsta lihtsalt robot õhku ja kutsu juhendaja!

**Sõitmiseks:**

    .. figure:: ../images/lab01/image35.png
        :scale: 120 %

        ..

    .. tip:: Programmi saab peatada klahvikombinatsiooniga Ctrl+C.
