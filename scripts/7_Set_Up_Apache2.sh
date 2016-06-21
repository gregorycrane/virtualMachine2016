#!/usr/bin/env /bin/bash

echo "-----------------------------------"
echo "Copy 'apache2-cite-proxy.conf' into place…"
echo ""

sudo cp /vagrant/scripts/apache2-cite-proxy.conf /etc/apache2/sites-available/cite.conf

echo "-----------------------------------"
echo "Activate it…"
echo ""

sudo a2ensite cite.conf

echo "-----------------------------------"
echo "Restart Apache2…"
echo ""

sudo apachectl restart

echo ""
echo "(Ignore the warning about 'reliably determine…'.)"
echo ""
echo "You can now access the CTS Service, from the host computer, at http://192.168.33.10/cts."
echo ""
echo "You can have quick access to an (unstyled XML) text-passage at, e.g., http://192.168.33.10/cts/gp/urn:cts:greekLit:tlg0012.tlg001.fuPers:1.1-1.10 ."
echo ""
echo "-----------------------------------"
echo "Add an html page of sample links to /var/www/html …"
echo "Access it at http://192.168.33.10/"
echo ""

sudo cp Links.html /var/www/index.html

echo ""
echo "Done."



