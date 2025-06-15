INSERT INTO person_discounts (person_id, pizzeria_id, discount, id)
SELECT person_id, pizzeria_id,
       CASE
         WHEN count (person_id) = 1 THEN 10.5
         WHEN count (person_id) = 2 THEN 22
         ELSE 30
       END AS discount,
       ROW_NUMBER() OVER () AS id
FROM person_order
join menu on menu.id = person_order.menu_id
group by person_id, pizzeria_id;