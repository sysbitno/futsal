CREATE TABLE tournament
(
    id               VARCHAR(36) primary key ,
    created_at       VARCHAR(255) NOT NULL,
    updated_at       VARCHAR(255) NOT NULL,
    deleted_at       VARCHAR(255),
    name             VARCHAR(255) NOT NULL,
    starting_at       VARCHAR(255),
    ending_at         VARCHAR(255),
    match_length     SMALLINT     NOT NULL,
    match_pause_length     SMALLINT     NOT NULL,
    max_female_teams SMALLINT     NOT NULL,
    max_male_teams   SMALLINT     NOT NULL
);

CREATE TABLE front_page
(
    id         VARCHAR(36) primary key,
    created_at VARCHAR(255) NOT NULL,
    updated_at VARCHAR(200) NOT NULL,
    deleted_at VARCHAR(200),
    title      VARCHAR(255),
    text       VARCHAR(5120),
    tournament VARCHAR(36) NOT NULL
);

CREATE TABLE user_TODO
(
    id         VARCHAR(36) primary key,
    created_at VARCHAR(200) NOT NULL,
    updated_at VARCHAR(200) NOT NULL,
    deleted_at VARCHAR(200),
    name       VARCHAR(255) NOT NULL,
    email      VARCHAR(255),
    username   VARCHAR(255) NOT NULL,
    password   VARCHAR      NOT NULL --TODO krypter passorder
    );

CREATE TABLE manager
(
    id         VARCHAR(36) primary key,
    created_at VARCHAR(200) NOT NULL,
    updated_at VARCHAR(200) NOT NULL,
    deleted_at VARCHAR(200),
    user_TODO  VARCHAR(36),
    teams      VARCHAR(36) -- TODO: FIKS DENNE, skal være liste
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
    order_TODO        INTEGER,
    sponsor_type VARCHAR(255),
    tournament VARCHAR(36) NOT NULL
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
    team_stats VARCHAR(36),
    manager    VARCHAR(36),
    gender     VARCHAR(36),
    tournament VARCHAR(36) NOT NULL
);