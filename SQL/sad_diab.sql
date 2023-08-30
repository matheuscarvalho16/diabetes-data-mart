CREATE TABLE dim_tempo (id SERIAL PRIMARY KEY,
						ano INTEGER NOT NULL);

CREATE TABLE dim_local (id SERIAL PRIMARY KEY,
						regiao VARCHAR(255),
						pais VARCHAR(255));

CREATE TABLE dim_faixa_etaria (id SERIAL PRIMARY KEY,
							   faixa_etaria VARCHAR(10));

CREATE TABLE fato (id_tempo INTEGER REFERENCES dim_tempo(id),
				   id_local INTEGER REFERENCES dim_local(id),
				   id_faixa_etaria INTEGER REFERENCES dim_faixa_etaria(id), 
				   quantidade INTEGER, PRIMARY KEY (id_tempo, id_local, id_faixa_etaria));