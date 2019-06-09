.. include:: ../include/special.rst

Linux: Programmide käivitamine käsurealt
========================================

Süsteemi paigaldatud programmi käivitamine
------------------------------------------

Selleks, et Linuxis programmi käivitada, on vaja kirjutada programmi nimi terminali ja vajutada Enter --- täpselt samamoodi nagu kasutasid programme :code:`ls` või :code:`cd`.

Programmi nime sisestamisel hakkab Linux seda oma süsteemist otsima. Kui programm leitakse, siis see käivitatakse. Vastasel juhul antakse teada, et käsku ei leitud.

Kui soovid näha, missugustest kaustadest programmi otsitakse, siis sisesta: 

.. code-block:: bash

   echo $PATH
   
See käsk kuvab väljundisse muutuja :code:`PATH` sisu, kus hoitakse kooloniga eraldatud nimekirja kaustadest.

.. tip:: Kui nimekiri tundub kirju ja soovid olla tõeline Linuxi häkker, siis suuna eelneva käsu väljund edasi :code:`sed` programmi, et asendada koolonid reavahetustega: :code:`echo $PATH | sed s/:/\\n/g`


APT kaudu paigaldatud programmid kopeeritakse tavaliselt süsteemi kaustadesse :code:`/usr/bin` või :code:`/usr/local/bin`. Kuna need kaustad on eelpool kuvatud nimekirjas, siis piisabki lihtsalt programmi nime sisestamisest.

Et leida, kuhu käivitatav programm failisüsteemis asub, on käsk :code:`whereis`. Näiteks:

.. code-block:: bash

   whereis ls


.. tip:: Kui programm asukoht ei ole :code:`PATH` muutujasse lisatud, siis saab endiselt programmi käivitada, kuid tuleb sisestada täielik tee programmini. Näiteks :code:`/bin/ls` või :code:`/home/kasutaja/programm_kodukaustas`



Ülesanne 1
^^^^^^^^^^

Käivita eelnevas ülesandes paigaldatud programm :code:`bastet`.

.. note:: Programmide peatamiseks on Linuxis universaalne klahvikombinatsioon CTRL+C.


Ülesanne 2
^^^^^^^^^^

Kuva kausta :code:`/bin` sisu. Kas seal asuvad failid on tuttavad?


Ülesanne 3
^^^^^^^^^^

Edaspidi hakkame kasutama kasutama ROS-i programme :code:`rosrun` ja :code:`roslaunch`. Uuri välja, mis kaustas need failisüsteemis asuvad?
