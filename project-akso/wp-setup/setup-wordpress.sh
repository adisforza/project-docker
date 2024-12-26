#!/bin/bash

# Wait for WordPress to initialize
echo "Waiting for WordPress initialization..."
while ! wp core is-installed --path=/var/www/html --allow-root; do
    sleep 5
#!/bin/bash

# Wait for WordPress to initialize
echo "Waiting for WordPress initialization..."
while ! wp core is-installed --path=/var/www/html --allow-root; do
    sleep 5
done

echo "WordPress is installed. Proceeding with setup."

# Install WordPress with default admin credentials
wp core install \
    --url="http://localhost:8080" \
    --title="My Automated WordPress Site" \
    --admin_user="admin" \
    --admin_password="adminpass123" \
    --admin_email="admin@example.com" \
    --path=/var/www/html \
    --allow-root

# Install and activate a theme
wp theme install twentytwentyone --activate --path=/var/www/html --allow-root

# Install and activate plugins
wp plugin install contact-form-7 --activate --path=/var/www/html --allow-root
wp plugin install woocommerce --activate --path=/var/www/html --allow-root

# Create sample pages and posts
wp post create --post_type=page --post_title='About Us' --post_status=publish --path=/var/www/html --allow-root
wp post create --post_type=post --post_title='Welcome Post' --post_content='This is a sample post created during setup!' --post_status=publish --path=/var/www/html --allow-root

echo "WordPress setup completed successfully!"
