ECHO OFF
ECHO cd "C:\Program Files\GeoServer1_Tomcat\webapps\geoserver\data\workspaces\ramm-live-data"
ECHO cd
ECHO for /D /R %%G in (*) DO ( cd %%G && python "S:\KUSASA\RAMM_Enterprise_GIS\scripts\rename_xmls\update_password_in_xml.py" )
ECHO ---------------------Process Completed-------------------
PAUSE