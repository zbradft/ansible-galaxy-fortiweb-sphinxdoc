#!/bin/bash

#find . -name "fwebos_waf_xml_rule.rst" -print0 | while read -d $'\0' file
find . -name "*.rst" -print0 | while read -d $'\0' file
do
	echo "$file"
	sed -i "$(( $(wc -l <$file)-8+1 )),$ d" $file 
	echo "- Jie Li" >> $file
	echo "- Brad Zhang" >> $file
	echo "" >> $file
	echo ".. hint::" >> $file
	echo "	If you notice any issues in this documentation, you can create a pull request to improve it." >> $file
#sed -i '41 i \ <td><code class="docutils literal notranslate">v7.0.1 </code></td>'  "$file"
#	sed -i '42 i \ <td><code class="docutils literal notranslate">v7.0.2 </code></td>'   "$file"
#	sed -i '43 i \ <td><code class="docutils literal notranslate">v7.1.0 </code></td>'  "$file"
#	sed -i '47 i \ <td>yes</td>' "$file"
#	sed -i '47 i \ <td>yes</td>'  "$file"
#	sed -i '47 i \ <td>yes</td>'  "$file"
done

#sed -i '41 i \ <td><code class="docutils literal notranslate">v7.0.1 </code></td>' $1 
#sed -i '42 i \ <td><code class="docutils literal notranslate">v7.0.2 </code></td>' $1  
#sed -i '43 i \ <td><code class="docutils literal notranslate">v7.1.0 </code></td>' $1 
#sed -i '47 i \ <td>yes</td>' $1 
#sed -i '47 i \ <td>yes</td>' $1 
#sed -i '47 i \ <td>yes</td>' $1 
