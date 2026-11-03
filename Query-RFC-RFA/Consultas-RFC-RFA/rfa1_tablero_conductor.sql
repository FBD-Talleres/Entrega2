SELECT COUNT(*)                                     AS "Viajes completados",
       NVL(SUM(pv.pasajeros), 0)                    AS "Pasajeros transportados",
       NVL(SUM(NVL(pv.pasajeros, 0) * v.Costo), 0)  AS "Ingresos (COP)",
       NVL(SUM(v.Duracion_estimada), 0)             AS "Minutos en viaje",
       NVL(SUM(v.Distancia_estimada), 0)            AS "Km recorridos"
FROM Viajes v
INNER JOIN Carros c ON c.Placa = v.Carros_Placa
-- pasajeros por viaje: solicitudes aceptadas y no canceladas
LEFT JOIN (SELECT s.Paradas_viaje_Viajes_ID_viaje AS id_viaje,
                  COUNT(*)                        AS pasajeros
           FROM Solicitudes s
           WHERE EXISTS (SELECT 1
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
           GROUP BY s.Paradas_viaje_Viajes_ID_viaje) pv
       ON pv.id_viaje = v.ID_viaje
-- solo el conductor indicado
WHERE c.Usuario_Documento_ID = (SELECT u.Documento_ID
                                FROM Usuario u
                                WHERE UPPER(u.Correo) = UPPER(:P_CORREO))
  -- solo viajes completados
  AND EXISTS (SELECT 1
              FROM Estado_viaje ev
              INNER JOIN Estados_viaje esv
                      ON esv.ID_estado = ev.Estados_viaje_ID_estado
              WHERE ev.Viajes_ID_viaje = v.ID_viaje
                AND esv.Nombre_estado = 'Completado');
