
Roboti juhtimine klaviatuuriga
==============================

Korrektselt vormistatud liikumisjuhiste andmiseks kasutame programmi, mis võimaldab meil robotit arvutiklaviatuuri abil juhtida.

1.  Avame uue terminali akna.

    Nüüd on sul sülearvutis lahti vähemalt kaks terminaliakent, millest üks on otseühenduses robotiga. Kas saad aru, kumb on kumb?

2.  Käivitame äsja avatud terminaliaknas, mis käivitab programme sülearvutis, ROS sõlme, mis jälgib terminali aknas klahvivajutusi. 
    See sõlm saadab klahvivajutused edasi robotile arusaadaval kujul. Sõlme käivitamiseks sisesta terminali järgmine käsk ja vajuta Enter klahvi:

 
    **roslaunch robotont_teleop teleop_pc_side.launch**

3.  Tulemus peaks olema selline:

    .. figure:: ../images/lab01/image34.png
        :scale: 70 %

        ..

    :red:`NB! Sellest hetkest saab klahvivajutustega panna robotit eri suundades sõitma. Selleks, et klahvivajutused mõjuks, peab see terminaliaken olema aktiivne.
    ROBOTI PEATAMISEKS VAJUTA "k" KLAHVI!
    Kui kaotad roboti üle kontrolli, siis tõsta lihtsalt robot õhku ja kutsu juhendaja!`

**Sõitmiseks:**

    .. figure:: ../images/lab01/image35.png
        :scale: 70 %

        ..

Selleks, et programme Linuxi terminalis kinni panna, on klahvikombinatsioon Ctrl+C.
