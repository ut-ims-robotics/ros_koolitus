Roboti andurite info kuvamine
=============================

Mis andurid on Clearbotil?
-----------------------------

Clearbotil on Realsense D435 3D kaamera, millest saab tavalise kaamerapildi ja sügavuspildi. 

Sügavuskaamera käivitamiseks:

1.  Ava terminal ning loo ssh-ühendus robotisse.

2.  Paneme robotis käima sõlmed, mis kaamera pilti ROSis kuulutavad.

    .. code-block:: bash

       roslaunch robotont_teleop teleop_with_laserscan.launch

3.  Ava uus terminal ja sedista see oma roboti jaoks.

    .. code-block:: bash
       
       seadista_robot

3.  Kuvame roboti koos punktipilvega RVizis

    .. code-block:: bash
       
       roslaunch robotont_description display_camera.launch

.. todo:: Kontrollida


Punktipilv on arusaadav inimese jaoks, kuid programmides üsna keeruline kasutada. Teeme 3D punktipilvest midagi lihtsamat. Kui võtame 3D sügavuspildist kasutusele ainult ühe riba, siis on see võimalik tekitada 2D laserskann. Jagades laserskanni omakorda kolmeks sektoriks ja arvutades iga sektori kohta minimaalsed väärtused saame teada, kus asuvad lähimad takistused paremal, keskel ja vasakul.

.. figure:: ../images/lab03/gridlaserscan.png
            :scale: 70 %

            ..

Need arvutused tehakse kõik sinu eest robotis käivitatud sõlmedes.

Kui kaugel on meist eespool paiknevad asjad?
---------------------------------------------

Selleks, et teada, kui kaugel on lähim objekt vasakul, keskel ja paremal, 
saame tellida ROS rubriiki “/scan_to_distance”, mis annab meile laserskannist arvutatud väärtused.

1.  Veendu, et robotis käivitatud kaamera sõlmed endiselt töötavad.

2.  Ava uus terminal ja sedista see oma roboti jaoks.

    .. code-block:: bash
       
       seadista_robot

3.  Selleks, et vaadata, mis andmeid robot meile annab, kasutame käsku 

    .. code-block:: bash

       rostopic echo /scan_to_distance


    .. figure:: ../images/lab03/terminal.png
            :scale: 70 %

            ..

    *leftMin*, *centerMin* ja *rightMin* näitavad minimaalset kaugust igas sektoris. Ühikuks on meeter.

4.  Liiguta oma kätt kaamera ees ning jälgi kuidas väärtused muutuvad.

Lisaks kaamerale on roboti ratastel enkoodrid, mis mõõdavad, kui palju ratas on liikunud. Odomeetria kohta kuulutatakse infot rubriigis :code:`/odom`.

