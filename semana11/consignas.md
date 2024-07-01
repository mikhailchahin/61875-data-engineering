_Para esto tendrás que añadir un código para randomizar las fechas en el DAG y con esto se manden datos falsos para los países incluidos(?)._



### Consigna

Luego de muchas reuniones en los países sudamericanos sobre la supervivencia de la raza humana se convocaron a diferentes expertos en cada país con el fin de pronosticar el año en el cual la humanidad podría tener muchos problemas para su supervivencia. Luego de varias reuniones la información recolectada es la siguiente:

* **Argentina (2040)**
* **Brasil (2080)**
* **Colombia (2095)**
* **Chile (2100)**
* **Paraguay (2089)**
* **Uruguay (2093)**
* **Venezuela (2054)**
* **Perú (2078)**
* **Ecuador (2079)**
* **Bolivia (2093)**
* **México (2071)**


Tu tarea será poder crear una alerta que se envíe por medio de email a cualquier correo con esta información en el siguiente formato:

```
Pais Argentina (AR), Fecha fin mundo estimada: 2040
Pais Brasil (BR), Fecha fin mundo estimada: 2080
Pais Colombia (CO), Fecha fin mundo estimada: 2095
Pais Chile (CL), Fecha fin mundo estimada: 2100
Pais Paraguay (PY), Fecha fin mundo estimada: 2089
Pais Uruguay (UR), Fecha fin mundo estimada: 2093
Pais Venezuela (VE), Fecha fin mundo estimada: 2054
Pais Peru (PE), Fecha fin mundo estimada: 2078
Pais Ecuador (EC), Fecha fin mundo estimada: 2079
Pais Bolivia (BO), Fecha fin mundo estimada: 2083
Pais México (MX), Fecha fin mundo estimada: 2071
```

> [!TIP]
> De ti depende mandar bien o mal la información dada. 
> Utilizar la librería smtplib de Python
> Puedes modificar el archivo airflow.cfg dentro de la sección smtp para ingresar correo y contraseña de cuenta de correo automáticamente
> Tener cuidado en donde guardas las contraseñas de correo.
