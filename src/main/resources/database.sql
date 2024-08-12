DROP TABLE IF EXISTS country;

CREATE TABLE country (
    id BIGSERIAL PRIMARY KEY,
    name TEXT,
    code INTEGER,
    iso TEXT,
    population INTEGER,
    gdpUsd BIGINT
);

INSERT INTO country (name, code, iso, population, gdpUsd)
VALUES
    ('Norway', 47, 'NO', 5009150, 515800000000),
    ('United States', 1, 'US', 331893745, 21433226000000),
    ('Germany', 49, 'DE', 83166711, 3845630000000),
    ('Japan', 81, 'JP', 125960000, 5057750000000),
    ('Australia', 61, 'AU', 25790000, 1546100000000),
    ('Canada', 1, 'CA', 38005238, 1647100000000),
    ('Brazil', 55, 'BR', 213993437, 1444730000000),
    ('India', 91, 'IN', 1380004385, 2875140000000),
    ('Russia', 7, 'RU', 145912025, 1699870000000),
    ('China', 86, 'CN', 1444216107, 14411200000000),
    ('South Africa', 27, 'ZA', 59308690, 351430000000),
    ('France', 33, 'FR', 67399000, 2930250000000),
    ('United Kingdom', 44, 'GB', 68207114, 2707740000000),
    ('Italy', 39, 'IT', 59641488, 2073900000000),
    ('South Korea', 82, 'KR', 51836669, 1695390000000),
    ('Mexico', 52, 'MX', 128932753, 1290190000000),
    ('Nigeria', 234, 'NG', 206139589, 432293000000),
    ('Saudi Arabia', 966, 'SA', 34813871, 700118000000),
    ('Spain', 34, 'ES', 47351567, 1409640000000),
    ('Sweden', 46, 'SE', 10379295, 596244000000),
    ('Argentina', 54, 'AR', 45376763, 389064000000);
