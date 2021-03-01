/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT
    f.title,
    SUM(p.amount) as profit
    FROM film f
    INNER JOIN inventory i USING (film_id)
    INNER JOIN rental r USING (inventory_id)
    INNER JOIN payment p USING (rental_id)
    GROUP BY title
    ORDER BY profit DESC
