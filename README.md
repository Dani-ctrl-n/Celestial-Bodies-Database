# Universe Database Project

This project sets up a PostgreSQL database named "universe" with tables representing celestial objects such as galaxies, stars, planets, moons, and asteroids.

## Database Structure

1. **Galaxy Table:**
   - `galaxy_id` (Primary Key)
   - `name` (Unique)
   - `type`
   - `size` (NUMERIC)
   - `has_dark_matter` (BOOLEAN)
   - `num_stars` (INT)

2. **Star Table:**
   - `star_id` (Primary Key)
   - `name` (Unique)
   - `type`
   - `temperature` (INT)
   - `mass` (NUMERIC)
   - `is_supernova` (BOOLEAN)
   - `galaxy_id` (Foreign Key referencing galaxy)

3. **Planet Table:**
   - `planet_id` (Primary Key)
   - `name` (Unique)
   - `type`
   - `mass` (NUMERIC)
   - `has_ring` (BOOLEAN)
   - `is_habitable` (BOOLEAN)
   - `star_id` (Foreign Key referencing star)

4. **Moon Table:**
   - `moon_id` (Primary Key)
   - `name` (Unique)
   - `type`
   - `radius` (INT)
   - `is_habitable` (BOOLEAN)
   - `planet_id` (Foreign Key referencing planet)

5. **Asteroid Table:**
   - `asteroid_id` (Primary Key)
   - `name` (Unique)
   - `type`
   - `description` (TEXT)
   - `diameter` (INT)
   - `is_dangerous` (BOOLEAN)
   - `planet_id` (Foreign Key referencing planet)

## Usage

1. Ensure you have PostgreSQL installed.

2. Create a database named "universe":

    ```sql
    CREATE DATABASE universe;
    ```

3. Connect to the database:

    ```sql
    \c universe;
    ```

4. Run the provided SQL script to create tables and insert sample data:

    ```sql
    -- Replace with the actual path to your SQL script
    \i path/to/your/script.sql;
    ```
