SELECT CONCAT(CONCAT(u.Nombre, ' '), u.Apellido)            AS conductor,
       TO_CHAR(TRUNC(v.Fecha_hora_salida, 'MM'), 'YYYY-MM') AS mes,
       COUNT(*)                                             AS viajes_realizados
FROM Viajes v
INNER JOIN Carros c  ON c.Placa        = v.Carros_Placa
INNER JOIN Usuario u ON u.Documento_ID = c.Usuario_Documento_ID
-- solo viajes realizados (completados)
WHERE EXISTS (SELECT 1
              FROM Estado_viaje ev
              INNER JOIN Estados_viaje esv ON esv.ID_estado = ev.Estados_viaje_ID_estado
              WHERE ev.Viajes_ID_viaje = v.ID_viaje
                AND esv.Nombre_estado = 'Completado')
  -- filtros opcionales
  AND (:P_CONDUCTOR    IS NULL OR u.Documento_ID             = :P_CONDUCTOR)
  AND (:P_LOCALIDAD    IS NULL OR v.Localidades_ID_localidad = :P_LOCALIDAD)
  AND (:P_FECHA_INICIO IS NULL OR v.Fecha_hora_salida >= TO_DATE(:P_FECHA_INICIO, 'YYYY-MM-DD'))
  AND (:P_FECHA_FIN    IS NULL OR v.Fecha_hora_salida <  TO_DATE(:P_FECHA_FIN, 'YYYY-MM-DD') + 1)
GROUP BY u.Documento_ID, u.Nombre, u.Apellido, TRUNC(v.Fecha_hora_salida, 'MM')
ORDER BY TRUNC(v.Fecha_hora_salida, 'MM'), conductor;
