-- Consulta A
SELECT COUNT(DISTINCT v.ID_viaje)           AS "Viajes tomados",
       NVL(SUM(v.Costo), 0)                 AS "Total gastado (COP)",
       ROUND(AVG(v.Distancia_estimada), 1)  AS "Distancia promedio (km)",
       ROUND(AVG(v.Duracion_estimada))      AS "Tiempo promedio (min)"
FROM Solicitudes s
INNER JOIN Viajes v ON v.ID_viaje = s.Paradas_viaje_Viajes_ID_viaje
WHERE s.Usuario_Documento_ID = (SELECT u.Documento_ID
                                FROM Usuario u
                                WHERE UPPER(u.Correo) = UPPER(:P_CORREO))

  AND EXISTS (SELECT 1
              FROM Estados_de_solicitud e
              INNER JOIN Estados_solicitud es
                      ON es.ID_estado_solicitud = e.Estados_solicitud_ID_estado_solicitud
              WHERE e.Solicitudes_ID_solicitud = s.ID_solicitud
                AND es.Nombre_solicitud = 'Aceptada')

  AND NOT EXISTS (SELECT 1
                  FROM Estados_de_solicitud e
                  INNER JOIN Estados_solicitud es
                          ON es.ID_estado_solicitud = e.Estados_solicitud_ID_estado_solicitud
                  WHERE e.Solicitudes_ID_solicitud = s.ID_solicitud
                    AND es.Nombre_solicitud = 'Cancelada')

  AND EXISTS (SELECT 1
              FROM Estado_viaje ev
              INNER JOIN Estados_viaje esv
                      ON esv.ID_estado = ev.Estados_viaje_ID_estado
              WHERE ev.Viajes_ID_viaje = v.ID_viaje
                AND esv.Nombre_estado = 'Completado');

-- Consulta B
SELECT z.Nombre_zona AS "Zona más frecuente",
       COUNT(*)      AS "Solicitudes en esa zona"
FROM Solicitudes s
INNER JOIN Paradas p      ON p.ID_parada      = s.Paradas_viaje_Paradas_ID_parada
INNER JOIN Zonas_parada z ON z.ID_zona_parada = p.Zonas_parada_ID_zona_parada
WHERE s.Usuario_Documento_ID = (SELECT u.Documento_ID
                                FROM Usuario u
                                WHERE UPPER(u.Correo) = UPPER(:P_CORREO))
GROUP BY z.ID_zona_parada, z.Nombre_zona
ORDER BY COUNT(*) DESC
FETCH FIRST 1 ROWS ONLY;
