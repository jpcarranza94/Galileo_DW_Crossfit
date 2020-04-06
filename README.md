# Galieo_DW_project
## Proyecto #1 para Diseno y Construccion de Data Warehouse

**Objetivo**: Diseñar base de datos para un sistema de información que le permita gestionar el entrenamiento CrossFitero de un conjunto de atletas.

###### Descripción de archivos

1. Diagramas
	-  Datawarehouse mer y ml.pdf: Primer diagrama de modelo entidad-relación y modelo lógio (Nota: guarda similitud a la versión final de la db pero no lo es)
	- schema_main_eerDiagram.png: Diagrama de la bd **final**
	- schema_main_eerDiagram.mwb, schema_main_eerDiagram.mwb.bak: archivo de MySQL Workbench 8.0 para generar el diagama
2. Spript DDL
	- schema_main.sql: contiene la creación de la base de datos y sus triggers
3. Script de insersión
	- schema_data.sql: contiene la data recopilada en un solo script 
		- Los scripts individuales se encuentran en la carpeta *data_mockaroo* 
4. Script con visitas solicitadas 
	- schema_procedures.sql: cuenta con los procedures y vistas pedidas