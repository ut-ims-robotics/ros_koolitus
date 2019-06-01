
Kaugteel robotisse sisenemine (ssh)
===================================

1.  Ava Linuxi terminali aken.
2.  Sisesta käsk kujul :code:`ssh kasutaja@clearbot-X`, kus X asenda oma roboti numbriga. Näiteks järgnev käsk ühendub kasutajana :code:`kasutaja` robotisse nimega :code:`clearbot-1`: 
    ::
    
      ssh kasutaja@clearbot-1


    .. figure:: ../images/lab01/image30.png
        :scale: 70 %

        ..

    .. note:: Kui küsitakse yes/no variante, sisesta "yes” ning vajuta Enter.

3.  Järgmisena küsitakse kasutaja :code:`kasutaja` parooli robotis.

    .. tip:: NB! Linuxi terminali aknas ei ole parooli trükkimist näha. Seega, ära ehmu, kui sisestamisel tärne või mumme ei ilmu.  Lihtsalt sisesta parool ja vajuta Enter.
    
    Ssh programm lubab vale parooli korral uuesti proovida kuni kolm korda ja seejärel lõpetab töö. Kui tegid parooli sisestamisel vea, siis kuvatakse järgnev teade:

        .. figure:: ../images/lab01/image31.png
            :scale: 70 %

            ..

4.  Kui parool oli õige, siis ilmub järgmine tervitus ning oled saanud ligipääsu oma robotile:

    .. figure:: ../images/lab01/image32.png
        :scale: 70 %

        ..


    .. note:: Nüüdsest on see terminali aken ühenduses robotiga. Kõik klahvivajutused, mis siin aknas tehakse, saadetakse edasi robotisse. Kuigi terminaliaken ise on avatud sülearvutis, siis sisestatud käsud käivitatakse robotis.

    .. tip:: Kui arvutis on avatud mitmeid terminale, siis võib tekkida segadus, mis aken kuhu on ühdatud. Seega tasub hoolega jälgida käsurea alguses arvuti nime. Antud näites muutus :code:`kasutaja@laptop-1` --> :code:`kasutaja@clearbot-1`.
