#!/bin/bas

<< MetaInfo
This is the code to initialise the new instance with default context.

MetaInfo

set -ex
set -o pipefail

echo '<!DOCTYPE html>
<html>
<body>

<h1>My First Heading</h1>

<p>My first paragraph.</p>

</body>
</html>
' >> ./sample.html

<< Alternative
cat << 'EOF' >./sample.html
<!DOCTYPE html>
<html>
<body>

<h1>My First Heading</h1>

<p>My first paragraph.</p>

</body>
</html>
EOF
Alternative