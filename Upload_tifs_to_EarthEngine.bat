cd S:/Spatial_Data/Pinning_Project/train/train_samples/images
FOR %%f in (*.tif) DO earthengine upload image --asset_id users/skusasalethu/Farm_Pin_Crop_Detention_Challenge_Training_Chips/training_chips/%%~nf --pyramiding_policy Mean --crs EPSG:4326 gs://S:/Spatial_Data/Pinning_Project/train/train_samples/images/%%f
