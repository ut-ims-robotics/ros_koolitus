.. include:: ../include/special.rst

Linux: Uue tarkvara paigaldamine
================================

APT ja selle kasutamine
-----------------------

APT ehk *Advanced Package Manager* on programm, millega Linuxis mugavalt tarkvara paigaldada ja eemaldada. APT hoiab nimekirja erinevatest allikatest ehk repositooriumidest, laeb alla vajalikud tarkvarapaketid ning kopeerib failid õigetesse kohtadesse.

Tarkvaraallikate ja programmide nimekirja värskendamiseks on käsk:

::

  sudo apt update

Ja uue programmi paigaldamiseks:

::

  sudo apt install <PROGRAMMINIMI>

.. note:: <PROGRAMMINIMI> asemel sista programm mida soovid paigaldada. Näiteks :code:`sudo apt install firefox` või :code:`sudo apt install chromium-browser`.

.. note:: :code:`sudo` käivitab apt programmi administraatori õigustes.

Ülesanne 1
^^^^^^^^^^

Paigalda eelneva näite põhjal Linuxisse programm :code:`bastet`.

.. note:: :code:`sudo` kasutamisel küsitakse esimesel korral administraatori parooli. Sisesta :code:`t0ndik00bas` ja vajuta ENTER klahvi.

.. warning:: Linuxi terminali aknas ei ole parooli trükkimist näha. Seega, ära ehmu, kui sisestamisel tärne või mumme ei ilmu.  Lihtsalt sisesta parool ja vajuta Enter.

Enne soovitud programmi paigaldamist kuvab APTkõikide pakkide nimekirja, ja küsib paigaldamiseks kinnitust. Sisesta :code:`y` ja vajuta Enter klahvi.


