*For*- ja *while* tsüklid roboti juhtimisel
===========================================
Eelmiste ülesannete juures andsime robotile ainult ühe käsu, mille järgi ta siis sõitis. Aga mis siis, kui tahame näiteks alguses otse sõita ja siis paremale ning jälle otse ja paremale ja korrata neid erinevaid käske?
Selleks on programmeerimises olemas tsüklid. *while*-tsüklit, ehk lõpmatut tsüklit kasutasid juba tegelikult eelmistes ülesannetes. Kiiruse muutmise käsku edastati robotile korduvalt, seni kuni kood käis. 
Robotile on turvalisuse eesmärgil sisse ehitatud nn *failsafe*, mis jätab roboti seisma, kui poole sekundi jooksul käsku ei tule. 
Nüüd tahame aga öelda talle ühte käsku kindel arv kordi ja siis teist käsku kindel arv kordi. Siinkohal tuleb appi `for-tsükkel <https://progeopik.cs.ut.ee/07_listid.html>`_.
*for*-tsükkel jooksutab käske täpselt nii palju, kui sellele öelda.
Pythonis saame seda kasutada nii:

.. code-block:: python

    for i in range(0,30):
      vel_msg.linear.x = 0.2
      vel_msg.linear.y = 0
      vel_msg.angular.z = 0
      velocity_publisher.publish(vel_msg)
      rospy.sleep(0.1)

See kood ütleb iga 0.1 sekundi tagant robotile, et ta sõidaks edasi kiirusega 0.2 *m/s* ja seda täpselt 30 korda.

Kui me lisame teise *for*-tsükli sinna otsa, siis järgmised 30 korda öeldakse robotile, et ta sõidaks kiirusega 0.2 *m/s* tagasi.

.. code-block:: python

    for i in range(0,30):
      vel_msg.linear.x = 0.2
      vel_msg.linear.y = 0
      vel_msg.angular.z = 0
      velocity_publisher.publish(vel_msg)
      rospy.sleep(0.1)
    for i in range(0,30):
      vel_msg.linear.x = -0.2
      vel_msg.linear.y = 0
      vel_msg.angular.z = 0
      velocity_publisher.publish(vel_msg)
      rospy.sleep(0.1)

Nii saab erinevaid käske üksteise otsa lisada. Muutes “range(0,30)” käsus numbrit 30, saame muuta kui pikalt ühte käsku täidetakse. 
