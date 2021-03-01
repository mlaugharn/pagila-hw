/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT
    c.name,
    COUNT(c.category_id) as sum
    FROM category c
    INNER JOIN film_category fc USING (category_id)
    INNER JOIN film f USING (film_id)
    INNER JOIN language l USING (language_id)
    WHERE l.name = 'English'
    GROUP BY c.category_id
