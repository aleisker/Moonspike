-- =======================================
-- PARTIE SERVEUR
-- =======================================

-- Création de la table contenant les différents états des portions de programme

DROP TABLE IF EXISTS Modules;
CREATE TABLE IF NOT EXISTS Modules (
    ServerId VARCHAR(18) NOT NULL,
    ModuleMo BOOLEAN NOT NULL DEFAULT false,
    ModuleLv BOOLEAN NOT NULL DEFAULT false,
    ModuleEc BOOLEAN NOT NULL DEFAULT false,
    ModuleTk BOOLEAN NOT NULL DEFAULT false,
    ModuleWc BOOLEAN NOT NULL DEFAULT false,
    PRIMARY KEY (ServerId)
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Création de la table contenant les ID des salons d'envoi d'informations sur le serveur

DROP TABLE IF EXISTS Channels;
CREATE TABLE IF NOT EXISTS Channels (
    ServerId VARCHAR(18) NOT NULL,
    WelcomeChannel VARCHAR(18) NOT NULL DEFAULT 'Indéfini',
    GoodbyeChannel VARCHAR(18) NOT NULL DEFAULT 'Indéfini',
    RankupsChannel VARCHAR(18) NOT NULL DEFAULT 'Indéfini',
    SkippedChannel1 VARCHAR(18) NOT NULL DEFAULT 'Indéfini',
    SkippedChannel2 VARCHAR(18) NOT NULL DEFAULT 'Indéfini',
    SkippedChannel3 VARCHAR(18) NOT NULL DEFAULT 'Indéfini',
    PRIMARY KEY (ServerId)
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- =======================================
-- PARTIE UTILISATEUR
-- =======================================

DROP TABLE IF EXISTS Leveling;
CREATE TABLE IF NOT EXISTS Leveling (
    ServerId VARCHAR(18) NOT NULL,
    MemberId VARCHAR(18) NOT NULL,
    UsrLevel INT NOT NULL DEFAULT 1,
    UsrBooster CHAR(1) NOT NULL DEFAULT 'D',
    UsrXpFarmed INT NOT NULL DEFAULT 0,
    UsrXpNeeded INT NOT NULL DEFAULT 200,
    PRIMARY KEY (ServerId, MemberId)
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS Economy;
CREATE TABLE IF NOT EXISTS Economy (
    ServerId VARCHAR(18) NOT NULL,
    MemberId VARCHAR(18) NOT NULL,
    UsrMoney INT NOT NULL DEFAULT 5000,
    UsrBank INT NOT NULL DEFAULT 0,
    UsrCasino INT NOT NULL DEFAULT 5,
    PRIMARY KEY (ServerId, MemberId)
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS Moderation;
CREATE TABLE IF NOT EXISTS Moderation (
    ServerId VARCHAR(18) NOT NULL,
    MemberId VARCHAR(18) NOT NULL,
    Bans INT NOT NULL DEFAULT 0,
    Kick INT NOT NULL DEFAULT 0,
    Mute INT NOT NULL DEFAULT 0,
    Warn INT NOT NULL DEFAULT 0,
    PRIMARY KEY (ServerId, MemberId)
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;