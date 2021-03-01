/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT
    co.country,
    SUM(p.amount) as profit
    FROM payment p
    INNER JOIN rental r
    ON r.rental_id = p.rental_id
    INNER JOIN customer c
    ON r.customer_id = c.customer_id
    INNER JOIN address a
    ON c.address_id = a.address_id
    INNER JOIN city ci
    ON a.city_id = ci.city_id
    INNER JOIN country co
    ON ci.country_id = co.country_id
    GROUP BY co.country
    ORDER BY co.country
