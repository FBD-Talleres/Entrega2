SELECT l.Nombre_localidad,
       COUNT(s.ID_solicitud) AS total_solicitudes
FROM Solicitudes s
INNER JOIN Paradas p      ON p.ID_parada      = s.Paradas_viaje_Paradas_ID_parada
INNER JOIN Zonas_parada z ON z.ID_zona_parada = p.Zonas_parada_ID_zona_parada
INNER JOIN Localidades l  ON l.ID_localidad   = z.Localidades_ID_localidad
WHERE s.Fecha_solicitud >= TO_DATE(:P_FECHA_INICIO, 'YYYY-MM-DD')
  AND s.Fecha_solicitud <  TO_DATE(:P_FECHA_FIN, 'YYYY-MM-DD') + 1
GROUP BY l.ID_localidad, l.Nombre_localidad
ORDER BY total_solicitudes DESC;
