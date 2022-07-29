#!/bin/bash

echo "5" > /tmp/$$-ans
./culc-GCF.sh 5 5 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1


echo "7" > /tmp/$$-ans
./culc-GCF.sh 35 28 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1
./culc-GCF.sh 28 35 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || exit 1


rm /tmp/$$-*
