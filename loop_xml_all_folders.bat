ECHO OFF
ECHO cd "C:\Program Files (x86)\GeoServer 2.15.1\data_dir\workspaces\ramm-live-data"
ECHO FOR /D /R %%G in (*) DO (cd %%G & python S:\KUSASA\GIS\gs_xml_rename\tools\update_workspace_id_in_xml.py)