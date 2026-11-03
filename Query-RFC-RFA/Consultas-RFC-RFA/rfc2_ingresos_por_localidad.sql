SELECT l.Nombre_localidad,
       COUNT(*)     AS cupos_vendidos,
       SUM(v.Costo) AS ingresos_estimados
FROM Solicitudes s
INNER JOIN Viajes v      ON v.ID_viaje     = s.Paradas_viaje_Viajes_ID_viaje
INNER JOIN Localidades l ON l.ID_localidad = v.Localidades_ID_localidad
WHERE v.Fecha_hora_salida >= TO_DATE(:P_FECHA_INICIO, 'YYYY-MM-DD')
  AND v.Fecha_hora_salida <  TO_DATE(:P_FECHA_FIN, 'YYYY-MM-DD') + 1
  -- la solicitud fue aceptada...
  AND EXISTS (SELECT 1
              FROM Estados_de_solicitud e
              INNER JOIN Estados_solicitud es
                      ON es.ID_estado_solicitud = e.Estados_solicitud_ID_estado_solicitud
              WHERE e.Solicitudes_ID_solicitud = s.ID_solicitud
                AND es.Nombre_solicitud = 'Aceptada')
  -- ...y no se canceló después
  AND NOT EXISTS (SELECT 1
                  FROM Estados_de_solicitud e
                  INNER JOIN Estados_solicitud es
                          ON es.ID_estado_solicitud = e.Estados_solicitud_ID_estado_solicitud
                  WHERE e.Solicitudes_ID_solicitud = s.ID_solicitud
                    AND es.Nombre_solicitud = 'Cancelada')
  -- el viaje no fue cancelado
  AND NOT EXISTS (SELECT 1
                  FROM Estado_viaje ev
                  INNER JOIN Estados_viaje esv
                          ON esv.ID_estado = ev.Estados_viaje_ID_estado
                  WHERE ev.Viajes_ID_viaje = v.ID_viaje
                    AND esv.Nombre_estado = 'Cancelado')
GROUP BY l.ID_localidad, l.Nombre_localidad
ORDER BY ingresos_estimados DESC;
