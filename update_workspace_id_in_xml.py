"""------------------------------------------------------------------------------------------------------
Script Name:      Update workspace ids of elements in xml's
Version:          1.1
Description:      This tool updates workspace ids of elements in xml files of the home folder and its 
                  subdirectories.
Created By:       Kusasalethu Sithole
Date:             2019-09-15
Last Revision:    2019-09-15
------------------------------------------------------------------------------------------------------"""
 
#import modules
import os

# User inputs
working_directory = os.getcwd()

#update working ids
list_ = os.listdir(working_directory)
for doc in os.listdir(working_directory):
    if doc[-4:] == ".xml": 
        xml = working_directory + "/" + doc
        xml_layer = open(xml, "rt")
        data = xml_layer.read()
        data = data.replace('WorkspaceInfoImpl--4febd755:16b6f63cd50:-14f9', 'WorkspaceInfoImpl-66af9513:16d921092a3:-7c9d')
        if doc == 'datastore.xml':
            data = data.replace('<name>ramm-live-data</name>', '<id>WorkspaceInfoImpl-66af9513:16d921092a3:-7c9d</id>')
        if doc == 'featuretype.xml':
            data = data.replace('<name>ramm-live-data</name>', '<id>NamespaceInfoImpl-66af9513:16d921092a3:-7ca6</id>')
        xml_layer.close()

        xml_layer = open(xml, "wt")
        xml_layer.write(data)
        xml_layer.close()     