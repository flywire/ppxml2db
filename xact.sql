CREATE TABLE xact(
uuid VARCHAR(36) NOT NULL,
acctype VARCHAR(10) NOT NULL, -- requires to instantiate AccountTransaction vs PortfolioTransaction, but redundant otherwise
account VARCHAR(36) NOT NULL REFERENCES account(uuid),
date VARCHAR(32) NOT NULL,
currency VARCHAR(16) NOT NULL,
amount INT NOT NULL,
security VARCHAR(36) REFERENCES security(uuid),
shares INT NOT NULL,
note TEXT,
updatedAt VARCHAR(64) NOT NULL,
type VARCHAR(16) NOT NULL,
fees INT NOT NULL DEFAULT 0,
taxes INT NOT NULL DEFAULT 0,
PRIMARY KEY(uuid)
);
CREATE INDEX xact__account ON xact(account);
