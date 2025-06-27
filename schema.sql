CREATE TABLE Client (id INT AUTO_INCREMENT PRIMARY KEY,
                    prenom VARCHAR(100) NOT NULL,
                    nom VARCHAR(100) NOT NULL,
                    email VARCHAR(100) NOT NULL UNIQUE,
                    date_inscription DATE NOT NULL
                    );

CREATE TABLE Marque (id INT AUTO_INCREMENT PRIMARY KEY,
                    libelle VARCHAR(255) NOT NULL
                    );

CREATE TABLE Genre  (id INT AUTO_INCREMENT PRIMARY KEY,
                    libelle VARCHAR(255) NOT NULL
                    );

CREATE TABLE Etat  (id INT AUTO_INCREMENT PRIMARY KEY,
                    libelle VARCHAR(255) NOT NULL
                    );                    

CREATE TABLE Velo (id INT AUTO_INCREMENT PRIMARY KEY,
                   taille VARCHAR(50) NOT NULL,
                   tarif_horaire DECIMAL(4,2) NOT NULL CHECK (tarif_horaire >0),
                   disponibilite BOOLEAN DEFAULT TRUE
                    );

CREATE TABLE MarqueVelo (velo_id INT NOT NULL,
                        FOREIGN KEY(velo_id) REFERENCES Velo(id),
                        marque_id INT NOT NULL,
                        FOREIGN KEY(marque_id) REFERENCES Marque(id)
                        );     

CREATE TABLE GenreVelo (velo_id INT NOT NULL,
                        FOREIGN KEY(velo_id) REFERENCES Velo(id),
                        genre_id INT NOT NULL,
                        FOREIGN KEY(genre_id) REFERENCES Genre(id)
                        );  

CREATE TABLE EtatVelo (velo_id INT NOT NULL,
                        FOREIGN KEY(velo_id) REFERENCES Velo(id),
                        etat_id INT NOT NULL,
                        FOREIGN KEY(etat_id) REFERENCES Etat(id)
                        );

CREATE TABLE Location (id INT AUTO_INCREMENT PRIMARY KEY,
                       client_id INT NOT NULL,
                       FOREIGN KEY(client_id) REFERENCES Client(id),
                       velo_id INT NOT NULL,
                       FOREIGN KEY(velo_id) REFERENCES Velo(id),
                       date_debut DATETIME NOT NULL,
                       date_fin DATETIME NOT NULL,
                       montant_total DECIMAL (10,2) NOT NULL CHECK (montant_total>0)
                       );