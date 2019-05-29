
Kaugteel robotisse sisenemine (ssh)
===================================

1.  Ava Linuxi terminali aken.
2.  Sisesta käsk kujul :code:`ssh kasutaja@clearbot-X`, kus X asenda oma roboti numbriga. Näiteks: 
    ::
    
      ssh kasutaja@clearbot-2

    .. figure:: ../images/lab01/image30.png
        :scale: 70 %

        ..

    .. note:: Kui küsitakse yes/no variante, trüki sisse "yes” ning vajuta enter.

3.  Järgmisena küsitakse parooli. 

    .. warning:: NB! Linuxi terminali aknas ei ole parooli trükkimist näha. Seega, ära ehmu, kui sisestamisel tärne või mumme ei ilmu.  Lihtsalt sisesta parool ja vajuta Enter.
    
    a.  Parool on: t0ndik00bas
    b.  Kui tegid parooli sisestamisel vea, ilmub selline teade ja saad veel kaks korda uuesti proovida:

        .. figure:: ../images/lab01/image31.png
            :scale: 70 %

            ..

4.  Kui parool oli õige, siis ilmub järgmine tervitus ning oled saanud ligipääsu oma robotile:

    .. figure:: ../images/lab01/image32.png
        :scale: 70 %

        ..

    **Nüüdsest on see terminali aken ühenduses robotiga ja saame seal erinevaid programme käivitada.**

    :red:`NB! Kuigi terminaliaken on avatud sülearvutis, siis tegelikult jooksutatakse siin sisestatud käske hoopis roboti peal, kus on samuti paigaldatud Ubuntu Linux. 
    Seda on näha sellest, et rohelises kirjas olev arvutinimi on muutunud roboti nimeks.`
