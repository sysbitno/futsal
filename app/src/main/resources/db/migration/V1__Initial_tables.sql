CREATE TABLE tournament
(
    id                 VARCHAR(50) primary key,
    foreign_id         VARCHAR(50) key,
    created_at         VARCHAR(255) NOT NULL,
    updated_at         VARCHAR(255) NOT NULL,
    deleted_at         VARCHAR(255),
    name               VARCHAR(255) NOT NULL,
    starting_at        VARCHAR(255),
    ending_at          VARCHAR(255),
    match_length_min       SMALLINT     NOT NULL,
    match_pause_length_min SMALLINT     NOT NULL,
    max_female_teams   SMALLINT     NOT NULL,
    max_male_teams     SMALLINT     NOT NULL
);

CREATE TABLE news
(
    id         VARCHAR(50) primary key,
    foreign_id VARCHAR(50) key,
    created_at VARCHAR(255) NOT NULL,
    updated_at VARCHAR(200) NOT NULL,
    deleted_at VARCHAR(200),
    title      VARCHAR(255),
    content    TEXT,
    tournament VARCHAR(50)  NOT NULL
);

CREATE TABLE sponsor
(
    id           VARCHAR(50) primary key,
    foreign_id   VARCHAR(50) key,
    created_at   VARCHAR(255) NOT NULL,
    updated_at   VARCHAR(200) NOT NULL,
    deleted_at   VARCHAR(200),
    title        VARCHAR(255),
    image_data   TEXT         NULL,
    main_sponsor BIT          NOT NULL DEFAULT 0,
    ordering     INT          NULL,
    tournament   VARCHAR(50)  NOT NULL
);

-- -------------------

CREATE TABLE user_TODO
(
    id         VARCHAR(50) primary key,
    foreign_id VARCHAR(50) key,
    created_at VARCHAR(200) NOT NULL,
    updated_at VARCHAR(200) NOT NULL,
    deleted_at VARCHAR(200),
    name       VARCHAR(255) NOT NULL,
    email      VARCHAR(255),
    username   VARCHAR(255) NOT NULL,
    password   VARCHAR(500) NOT NULL -- TODO krypter passorder
);

CREATE TABLE manager
(
    id         VARCHAR(36) primary key,
    created_at VARCHAR(200) NOT NULL,
    updated_at VARCHAR(200) NOT NULL,
    deleted_at VARCHAR(200),
    user_TODO  VARCHAR(36),
    teams      VARCHAR(36), -- TODO: FIKS DENNE, skal være liste
    tournament VARCHAR(50)  NOT NULL
);

CREATE TABLE sponsor
(
    id           VARCHAR(36) primary key,
    created_at   VARCHAR(255) NOT NULL,
    updated_at   VARCHAR(255) NOT NULL,
    deleted_at   VARCHAR(255),
    name         VARCHAR(255),
    url          VARCHAR(255),
    date_type    VARCHAR(255),
    order_TODO   INTEGER,
    sponsor_type VARCHAR(255),
    tournament   VARCHAR(50)  NOT NULL
);

CREATE TABLE player
(
    id           VARCHAR(36) primary key,
    created_at   VARCHAR(255) NOT NULL,
    updated_at   VARCHAR(255) NOT NULL,
    deleted_at   VARCHAR(255),
    name         VARCHAR(255),
    team         VARCHAR(36),
    shirt_number VARCHAR(36),
    yellow_card  INTEGER,
    red_card     INTEGER,
    goal         INTEGER,
    gender       VARCHAR(255)
);

CREATE TABLE team
(
    id         VARCHAR(36) primary key,
    created_at VARCHAR(255) NOT NULL,
    updated_at VARCHAR(255) NOT NULL,
    deleted_at VARCHAR(255),
    name       VARCHAR(255),
    team_stats VARCHAR(50),
    manager    VARCHAR(50),
    gender     VARCHAR(50),
    tournament VARCHAR(50)  NOT NULL
);