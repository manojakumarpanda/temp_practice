#!/bin/bash

<< MetaInfo
This is the code to initialise the new instance with default context.

MetaInfo

set -ex
set -o pipefail

echo '<!DOCTYPE html>
<html>
<body>

<h1>My Server Details</h1>

<p>My first paragraph.</p>

</body>
</html>
' >> ./sample.html

<< Alternative
cat << EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<body>
<h1>My Server Details</h1>
<p>My Hostname: <strong> $(hostname) </strong>.</p>
<p>My IP address: <strong> $(hostname -I | cut -d " " -f1) </strong>.</p>
</body>
</html>
EOF
Alternative