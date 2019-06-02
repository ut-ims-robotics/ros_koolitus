.. include:: ../include/special.rst

Linux: terminal ja käsurida
===========================

Mis ja milleks käsurida?
------------------------

Käsurida on tekstipõhine kasutajaliides, mis kasutab teksti nii sisendiks kui ka väljundiks. Selle abil saab kasutada Linux operatsioonisüsteeme. Kuigi avavaates näeme Ubuntu puhul graafilist vaadet akende, paneelide, läbipaistvate teadetega jne, siis kõige selle taga on tegelikult erinevad käsud, mis on tavakasutaja eest ära peidetud.
Lihtsamate tegevuste jaoks (internetis surfamine, e-kirjade lugemine, ettekande või tabelarvutuse programmi kasutamine, ...) graafilisest keskkonnast täiesti piisab, aga kui soovime Linuxi süsteemi kasvõi natukenegi rohkem seadistada ja kasutada selle kogu võimekust, siis tuleb kasutada käsurida.

Kuidas avada terminali akent?
-----------------------------

Variant 1:
    a. Vajuta vasakul asuva tegumiriba kõige ülemisel ikoonil (Või klaviatuuril ⊞Win klahvi)
    b. Trüki sisse "terminal"
    c. Vajuta Terminali ikoonil

    .. figure:: ../images/lab01/image1.png
        :scale: 70 %

        ..

Variant 2:
    Kasuta klahvikombinatsiooni **Ctrl+Alt+T**

Ilmub terminali aken:

      .. figure:: ../images/lab01/image2.png
        :scale: 70 %

        ..


Käsu sisestamine ja navigeerimine
---------------------------------

Käsu sisestamiseks tuleb lihtsalt käsk kirjutada käsureale ja vajutada ENTER klahvi. 
Tühikud on käsureal äärmiselt olulised, nende abil eraldatakse käsku ja käsule kaasaantavaid parameetreid ehk argumente.

Linuxi käsurida on tõstutundlik, mis tähendab, et käsud :code:`minuprogramm`, :code:`minuProgramm` või :code:`MinuProgramm` võivad käivitada hoopis eri programme. Enamasti on siiski käskude nimed esitatud väiketähtedes.

Kursorit saab liigutada vasaku/parema noole klahviga.
Üles ja alla nooleklahvidega saab valida varem sisestatud käske.


TAB klahv
^^^^^^^^^

Käsureal on kõige tähtsam klahv klaviatuuril **TAB**. Vajutades TAB klahvi ühe korra, lõpetatakse käsk sinu eest. Kui käsu lõpetamiseks on erinevaid võimalusi, siis vajuta TAB klahvi veel üks kord ja kuvatakse loetelu võimalike variantidega. TAB osutub eriti kasulikuks näiteks siis, kui on vaja sisestada pikka või keerulist failinime.


Kõige tähtsamad käsud Linuxi käsureal
-------------------------------------


ls
^^^^

Käsk **ls** ehk *list* kuvab kausta sisu, kus parasjagu asud.

    a. Trüki terminali :code:`ls` ning vaata väljundit. Kuvatakse kaustad ja failid, mis asuvad selles kaustas, kus praegu asud. 

        .. figure:: ../images/lab01/image3.png
            :scale: 70 %

            ..
            
        *Mis värvi on väljundis kaustad ja mis värvi on failid?*


    b. Trüki terminali :code:`ls -a`. Nüüd ilmub väljundisse palju rohkem nimesid.
       Punktiga algavad kasutad ning failid on Linuxis enamasti peidetud. Nendes kaustades ning failides asuvad tavaliselt konfiguratsioonid operatsioonisüsteemile ning programmidele, 
       neid faile ei tasu ilma Linuxist sügavamaid teadmisi omamata muuta.
        
        .. figure:: ../images/lab01/image4.png
            :scale: 70 %

            ..

    c. Trüki terminali :code:`ls -a`. *Mis muutus? Mida uut väljundis failide kohta näed?*
        
        .. figure:: ../images/lab01/image5.png
            :scale: 70 %

            ..
        

        .. figure:: ../images/lab01/image6.png
            :scale: 70 %

            ..

mkdir
^^^^^

    Nüüd õpime, kuidas teha Linuxi terminalis kausta.

    a.  Teeme kausta nimega "asjad". Linuxis kausta tegemiseks on käsk :code:`mkdir` ehk *make directory*. Trüki terminali

        .. code-block:: bash  
    
           mkdir asjad 

        .. figure:: ../images/lab01/image7.png
            :scale: 70 %

            ..

    b.  Nüüd kasuta eelmises punktis *list*'i kohta õpitut, et näha, kas kausta tegemine õnnestus.

        .. figure:: ../images/lab01/image8.png
            :scale: 70 %

            ..

cd  
^^^^

    Selleks, et terminalis kaustade vahel liikuda, on käsk :code:`cd` ehk *change directory*.
    
    a.  Lähme kausta, mille just tegime. Selleks kirjutame terminali

        .. code-block:: bash  
    
           cd asjad

        .. figure:: ../images/lab01/image9.png
            :scale: 70 %

            ..

    b.  Kaust peaks olema tühi, veendu selles käsuga :code:`ls`.

        .. figure:: ../images/lab01/image10.png
            :scale: 70 %

            ..

    c.  Teeme siia kausta ühe alamkausta nimega "asi". Selleks kirjutame

        .. code-block:: bash  
    
           mkdir asi

    d.  :code:`ls -a` näitab, et kaust "asi" loodi, kuid kuvab lisaks veel kahte kausta "." ja "..". Linuxis on neil kindel tähendus:

          | :code:`.` tähistab kausta, kus hetkel asud;
          | :code:`..` tähistab praeguse kausta ülemkausta.

        .. figure:: ../images/lab01/image11.png
            :scale: 70 %

            ..

    e.  Lähme tehtud alamkausta, kasutades käsku :code:`cd asi`. Selleks, et minna tagasi ülemkausta "asjad", sisestame:

        .. code-block:: bash

           cd ..

        .. figure:: ../images/lab01/image12.png
            :scale: 70 %

            ..

    f.  Kui käsk :code:`cd` sisestada ilma argumentdeta, siis viib see kodukausta. Proovi järele!

        .. figure:: ../images/lab01/image14.png
           :scale: 70 %

           ..

    Reeglina vahetatakse kausta siis, kui on plaanis seal pikemat aega töötada, sest enamike käskude ja programmide kasutamiseks ei ole kausta vahetamine vajalik. Näiteks selleks, et kuvada kausta asjad sisu, võime vabalt olla kodukaustas ja kasutada käsku :code:`ls` koos täiendava argumendiga, mis täpsustab, millise kausta sisu soovime kuvada.

    .. code-block:: bash

       ls asjad

    Nii näed kausta "asjad" sisu ilma kausta vahetamata.
   
    .. tip:: Eelmine käsk eeldab, et asume kodukaustas. Kui soovid kuvada kausta "asjad" sisu asudes ise suvalises kaustas, siis tuleb tee kaustani anda absoluutsel kujul ehk alates failisüsteemi juurest. Antud juhul :code:`ls /home/kasutaja/asjad` või lühemalt :code:`ls ~/asjad`

    g.  Eelneva näite põhjal, proovi kodukaustast kuvada kausta "asi" sisu.

    Hetkel on see kaust tühi ja käsk peaks lõpetama töö ilma väljundit andmata.

    .. figure:: ../images/lab01/image16.png
      :scale: 70 %

      ..


pwd
^^^^

    Käsk :code:`pwd` näitab täielikku teed failisüsteemis praegusesse kausta.

    .. figure:: ../images/lab01/image13.png
       :scale: 70 %

       ..


    e.  Liigu iseseisvalt failipuus ringi, sisene suvalistesse kaustadesse, samal ajal kontrollides oma asukohta :code:`pwd` abil.

        .. tip:: Kui peaksid kaustade rägastikus ära eksima, siis kodukausta tagasi aitavad :code:`cd ~` või lihtsalt :code:`cd` ilma argumentideta.

Faili sisu muutmine programmiga nano
------------------------------------

    a.  Lähme kasuta "asi":
    
        .. code-block:: bash

           cd ~/asi

        .. figure:: ../images/lab01/image17.png
            :scale: 70 %

            ..

    b.  Teeme tekstiredaktor :code:`nano` abil uue tekstifaili:

        .. code-block:: bash

             nano test.txt

        .. figure:: ../images/lab01/image18.png
           :scale: 70 %

           ..

        Seejärel ilmub terminali aknasse tekstiredaktori avavaade. Nüüd on "test.txt" avatud muutmiseks.

        .. figure:: ../images/lab01/image19.png
           :scale: 70 %

           ..

    c.  Kuna tegemist on uue failiga, siis kirjutame midagi faili. 

        .. figure:: ../images/lab01/image20.png
            :scale: 70 %

            ..

        Selleks, et nanost väljuda, vajuta CTRL+X. Kui oled faili muutnud, küsib programm üle, kas soovid muudatused salvestada. Trüki sisse :code:`y` ning vajuta Enterit.

        .. figure:: ../images/lab01/image21.png
            :scale: 70 %

            ..

        .. figure:: ../images/lab01/image22.png
            :scale: 70 %

            ..

    d.  Kontrolli, et fail tekkis, kasutades käsku :code:`ls`.

        .. figure:: ../images/lab01/image23.png
            :scale: 70 %

            ..
           
Faili sisu kuvamine käsuga :code:`cat`
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

    a.  Käsk :code:`cat` võimaldab näha tekstifailide sisu ilma faili avamata. Olles kaustas "asi", trüki terminali :code:`cat test.txt`. *Kas ilmus tuttav tekst?*

        .. figure:: ../images/lab01/image24.png
            :scale: 70 %

            ..
            
    b.  Lähme ühe kausta ülespoole :code:`cd ..` ja vaatame uuesti sama faili sisu kaustas "asi". Sarnaselt eelnevalt kasutatud :code:`ls` käsule: 
    
    .. code-block:: bash
       
       cat asi/test.txt
    

*Kas ilmus sama tekst?* 

        .. figure:: ../images/lab01/image25.png
            :scale: 70 %

            ..

    c. Kas suudad jälgida ja selgitada, kuidas töötab järgmine käsk? Proovi järele.

        .. code-block:: bash

           cat asi/../../asjad/asi/../asi/./test.txt

    d.  Kasuta nüüd eelnevaid teadmisi, et muuta test.txt sisu ning kuva see ekraanile kasutades käsku :code:`cat`.

        .. figure:: ../images/lab01/image26.png
           :scale: 70 %

           ..

Failide liigutamine, kopeerimine, eemaldamine
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

  | Käsku :code:`mv` ehk *move* saame kasutada, et faile liigutada ja ümber nimetada.
  | Käsku :code:`cp` ehk *copy* saame kasutada, et faile kopeerida.
  | Käsku :code:`rm` ehk *remove* saame kasutada, et faile kustutada.
    
    a.  Käsk :code:`cp` vajab kahte argumenti kujul :code:`cp [kust] [kuhu]`. Esimese argumendiga ütleme, mis faili soovime kopeerida ja teise argumendiga kuhu soovime koopia paigutada. Lähme kausta "asjad" ja kopeerime sinna tekstifaili alamkaustast "asi":
    
        .. code-block:: bash

           cd ~/asjad
           cp asi/test.txt .
        
    Siin näeme ka punkti kasutust käsus, mis määrab kopeerimise sihtkohaks praeguse kausta.


    b.  Kontrolli käsuga :code:`ls`, et mõlemas kaustas oleks nüüd fail "test.txt".
  
        .. figure:: ../images/lab01/image27.png
           :scale: 70 %

           ..

    c.  Järgmisena kasutame käsku :code:`rm`, ja kustutame ära originaalfaili. Olles kaustas "asjad", trüki sisse :code:`rm asi/test.txt`.

    .. code-block:: bash

       rm asi/test.txt

    d.  Kontrolli, kas nüüd on "test.txt" ainult ühes kaustas.

        .. figure:: ../images/lab01/image28.png
           :scale: 70 %

           ..

    e.  Selleks, et faile ümber nimetada ja ühest kaustast teise tõsta, on käsk :code:`mv`. 
        Tõstame faili "test.txt" kausta "asi" ning samaaegselt nimetame selle ümber failiks "test1.txt". 
        Selleks, olles kaustas "asjad", trüki terminali:

    .. code-block:: bash

       mv test.txt asi/test1.txt

Sarnaselt käsule :code:`cp` ootab käsk :code:`mv` kahte argumenti. Esimene määrab faili mida liigutatakse, ja teine asukoha, kuhu liigutatakse.

    f.  Kontrolli, kas fail sai ilusti liigutatud ja eksisteerib uue nimega kaustas "asi".

        .. figure:: ../images/lab01/image29.png
           :scale: 70 %

           ..

