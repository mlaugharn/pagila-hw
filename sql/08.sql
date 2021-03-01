/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */

SELECT
    s.first_name,
    s.last_name,
    a.address as street_address
    FROM staff s
    INNER JOIN address a
    ON a.address_id = s.address_id
    ORDER BY last_name
