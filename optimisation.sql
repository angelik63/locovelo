CREATE INDEX ind_nom ON Client(email);
CREATE INDEX ind_dispo ON Velo(disponibilite,taille);
CREATE INDEX ind_client ON Location(client_id);     