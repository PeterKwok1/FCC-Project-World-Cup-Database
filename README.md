# Dump db
pg_dump -cC --inserts -U freecodecamp worldcup > worldcup.sql

# Rebuild db
psql -U postgres < worldcup.sql