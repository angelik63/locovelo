SELECT * FROM Velo
          WHERE disponibilite = 1;
       
SELECT COUNT(*) AS "nombre location clients 1"
        FROM location
        WHERE client_id = 1;

SELECT COUNT(id) FROM Location;

SELECT velo_id,
        COUNT(*) AS "nombre location par vélo"
        FROM Location
        GROUP BY velo_id;

SELECT SUM(montant_total) FROM Location;

SELECT date_debut,
        SUM(montant_total) AS "revenus par mois"
        FROM Location
        GROUP BY date_debut
        HAVING COUNT(date_debut);