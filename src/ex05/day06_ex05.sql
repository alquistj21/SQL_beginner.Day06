COMMENT ON TABLE person_discounts IS 'Таблица для хранения скидок для каждого человека в каждой пиццерии';
COMMENT ON COLUMN person_discounts.id IS 'Уникальный идентификатор скидки';
COMMENT ON COLUMN person_discounts.person_id IS 'Уникальный идентификатор человека';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Уникальный идентификатор пицерии';
COMMENT ON COLUMN person_discounts.discount IS 'Размер скидки для человека в пиццерии';