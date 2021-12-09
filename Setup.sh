#!/bin/sh

Username=Glashouse

mysql -u root -pDEINPASSWORT <<EOF
CREATE $Username users;
GRANT SELECT ON AutoGreenHouse.* TO '$Username' + '@127.0.0.1';
FLUSH PRIVELEGES;
EOF
