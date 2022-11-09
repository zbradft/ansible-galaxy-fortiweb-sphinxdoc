:source: fwebos_waf_syntax.py

:orphan:

.. fwebos_waf_syntax.py:

fwebos_waf_syntax.py -- Config FortiWeb Web Protection SQL/XSS Syntax Based Detetction
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

.. versionadded:: 1.0.1

.. contents::
   :local:
   :depth: 1


Synopsis
--------
Config FortiWeb Web Protection SQL/XSS Syntax Based Detetction


Requirements
------------
The below requirements are needed on the host that executes this module.

- ansible>=2.11


FortiWeb Version Compatibility
------------------------------


.. raw:: html

 <br>
 <table>
 <tr>
 <td></td>
 <td><code class="docutils literal notranslate">v7.0.0 </code></td>
 <td><code class="docutils literal notranslate">v7.0.1 </code></td>
 <td><code class="docutils literal notranslate">v7.0.2 </code></td>
 <td><code class="docutils literal notranslate">v7.0.3 </code></td>
 </tr>
 <tr>
 <td>fwebos_waf_syntax.py</td>
 <td>yes</td>
 <td>yes</td>
 <td>yes</td>
 <td>yes</td>
 </tr>
 </table>
 <p>



Parameters
----------


.. raw:: html


  <ul>
  <li><span class="li-head">body</span> Possible parameters to go in the body for the request <span class="li-required">required: True </li>
        <ul class="ul-self">
              <li><span class="li-head"> name </span> name <span class="li-normal"> type:string
                    maxLength:63</span></li>
              <li><span class="li-head"> detection-target-sql </span> detection targets during SQL injection detection <span class="li-normal"> type:string choice:
                      ARGS_NAMES,
                      ARGS_VALUE,
                      REQUEST_COOKIES,
                      REQUEST_USER_AGENT,
                      REQUEST_REFERER,
                      OTHER_REQUEST_HEADERS,</span></li>
              <li><span class="li-head"> detection-target-xss </span> detection targets during XSS injection detection <span class="li-normal"> type:string choice:
                      ARGS_NAMES,
                      ARGS_VALUE,
                      REQUEST_COOKIES,
                      REQUEST_USER_AGENT,
                      REQUEST_REFERER,
                      OTHER_REQUEST_HEADERS,</span></li>
              <li><span class="li-head"> sql-detection-template </span> SQL injection detection template <span class="li-normal"> type:string choice:
                      SINGLE_QUOTE,
                      DOUBLE_QUOTE,
                      AS_IS,</span></li>
              <li><span class="li-head"> xss-html-tag-based-status </span> status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> xss-html-tag-based-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      redirect,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      send_http_response,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> xss-html-tag-based-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> xss-html-tag-based-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> xss-html-tag-based-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      informational,
                      low,
                      moderate,
                      substantial,
                      severe,
                      critical,</span></li>
              <li><span class="li-head"> xss-html-tag-based-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> xss-html-tag-based-check-level </span> check level <span class="li-normal"> type:string choice:
                      strict,
                      moderate,</span></li>
              <li><span class="li-head"> xss-html-attribute-based-status </span> status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> xss-html-attribute-based-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      redirect,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      send_http_response,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> xss-html-attribute-based-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> xss-html-attribute-based-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> xss-html-attribute-based-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      informational,
                      low,
                      moderate,
                      substantial,
                      severe,
                      critical,</span></li>
              <li><span class="li-head"> xss-html-attribute-based-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> xss-html-css-based-status </span> status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> xss-html-css-based-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      redirect,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      send_http_response,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> xss-html-css-based-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> xss-html-css-based-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> xss-html-css-based-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      informational,
                      low,
                      moderate,
                      substantial,
                      severe,
                      critical,</span></li>
              <li><span class="li-head"> xss-html-css-based-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> xss-javascript-function-based-status </span> status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> xss-javascript-function-based-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      redirect,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      send_http_response,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> xss-javascript-function-based-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> xss-javascript-function-based-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> xss-javascript-function-based-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      informational,
                      low,
                      moderate,
                      substantial,
                      severe,
                      critical,</span></li>
              <li><span class="li-head"> xss-javascript-function-based-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> xss-javascript-variable-based-status </span> status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> xss-javascript-variable-based-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      redirect,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      send_http_response,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> xss-javascript-variable-based-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> xss-javascript-variable-based-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> xss-javascript-variable-based-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      informational,
                      low,
                      moderate,
                      substantial,
                      severe,
                      critical,</span></li>
              <li><span class="li-head"> xss-javascript-variable-based-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> sql-stacked-queries-status </span> status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> sql-stacked-queries-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      redirect,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      send_http_response,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> sql-stacked-queries-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> sql-stacked-queries-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> sql-stacked-queries-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      informational,
                      low,
                      moderate,
                      substantial,
                      severe,
                      critical,</span></li>
              <li><span class="li-head"> sql-stacked-queries-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> sql-embeded-queries-status </span> status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> sql-embeded-queries-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      redirect,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      send_http_response,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> sql-embeded-queries-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> sql-embeded-queries-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> sql-embeded-queries-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      informational,
                      low,
                      moderate,
                      substantial,
                      severe,
                      critical,</span></li>
              <li><span class="li-head"> sql-embeded-queries-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> sql-condition-based-status </span> status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> sql-condition-based-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      redirect,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      send_http_response,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> sql-condition-based-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> sql-condition-based-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> sql-condition-based-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      informational,
                      low,
                      moderate,
                      substantial,
                      severe,
                      critical,</span></li>
              <li><span class="li-head"> sql-condition-based-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> sql-arithmetic-operation-status </span> status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> sql-arithmetic-operation-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      redirect,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      send_http_response,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> sql-arithmetic-operation-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> sql-arithmetic-operation-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> sql-arithmetic-operation-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      informational,
                      low,
                      moderate,
                      substantial,
                      severe,
                      critical,</span></li>
              <li><span class="li-head"> sql-arithmetic-operation-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> sql-line-comments-status </span> status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> sql-line-comments-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      redirect,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      send_http_response,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> sql-line-comments-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> sql-line-comments-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> sql-line-comments-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      informational,
                      low,
                      moderate,
                      substantial,
                      severe,
                      critical,</span></li>
              <li><span class="li-head"> sql-line-comments-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> sql-function-based-status </span> status <span class="li-normal"> type:string choice:
                      enable,
                      disable,</span></li>
              <li><span class="li-head"> sql-function-based-action </span> action <span class="li-normal"> type:string choice:
                      alert,
                      redirect,
                      deny_no_log,
                      alert_deny,
                      block-period,
                      send_http_response,
                      client-id-block-period,</span></li>
              <li><span class="li-head"> sql-function-based-block-period </span> block period(1-3600) <span class="li-normal"> type:integer
                    maximum:3600
                    minimum:1</span></li>
              <li><span class="li-head"> sql-function-based-severity </span> severity:High, Medium, Low or Informative <span class="li-normal"> type:string choice:
                      High,
                      Medium,
                      Low,
                      Info,</span></li>
              <li><span class="li-head"> sql-function-based-threat-weight </span> threat weight <span class="li-normal"> type:string choice:
                      informational,
                      low,
                      moderate,
                      substantial,
                      severe,
                      critical,</span></li>
              <li><span class="li-head"> sql-function-based-trigger </span> choose Email or syslog policy <span class="li-normal"> type:string</span></li>
              <li><span class="li-head"> exception-element-list </span> list of exception elements <span class="li-normal"> type:array
                    <ul class="ul-self">
                      <li> <span class="li-head"> id </span> id </li>
                      <li> <span class="li-head"> match-target </span> match targets </li>
                      <li> <span class="li-head"> operator </span> operator </li>
                      <li> <span class="li-head"> ip </span> IP range </li>
                      <li> <span class="li-head"> value-name </span>  value name </li>
                      <li> <span class="li-head"> value-check </span> disable/enable </li>
                      <li> <span class="li-head"> value </span> value </li>
                      <li> <span class="li-head"> concatenate-type </span> concatenate relationship with the previous filter rule </li>
                      <li> <span class="li-head"> attack-type </span> attack type </li>
                    </ul></span></li>
        <li><span class="li-head">mkey</span> If present, objects will be filtered on property with this name  <span class="li-normal"> type:string </span></li><li><span class="li-head">vdom</span> Specify the Virtual Domain(s) from which results are returned or changes are applied to. If this parameter is not provided, the management VDOM will be used. If the admin does not have access to the VDOM, a permission error will be returned. The URL parameter is one of: vdom=root (Single VDOM) vdom=vdom1,vdom2 (Multiple VDOMs) vdom=* (All VDOMs)   <span class="li-normal"> type:array </span></li><li><span class="li-head">clone_mkey</span> Use *clone_mkey* to specify the ID for the new resource to be cloned.  If *clone_mkey* is set, *mkey* must be provided which is cloned from.   <span class="li-normal"> type:string </span></li>
  </ul>

Examples
--------
.. code-block:: yaml+jinja

   - name:
   hosts: all
   vars:
   connection: httpapi
   gather_facts: false
   tasks:
     - name: delete certificate hpkp 
       fwebos_waf_syntax:
        action: delete 
        name: 123 
           
     - name: Create certificate hpkp 
       fwebos_waf_syntax:
        action: add 
        sql_arithmetic_operation_block_period: 600
        sql_stacked_queries_threat_weight: severe
        sql_embeded_queries_block_period: 600
        sql_arithmetic_operation_status: enable
        sql_condition_based_severity: High
        xss_html_attribute_based_block_period: 600
        xss_html_tag_based_trigger: "" 
        sql_condition_based_threat_weight_value: 4
        sql_function_based_severity: High
        xss_javascript_function_based_block_period: 600
        xss_html_attribute_based_threat_weight_value: 4
        xss_html_attribute_based_threat_weight: severe
        sql_embeded_queries_trigger: "" 
        sql_line_comments_status: enable
        xss_javascript_variable_based_trigger: 
        sql_line_comments_threat_weight_value: 4
        xss_html_tag_based_block_period: 600
        sql_arithmetic_operation_severity: High
        sql_embeded_queries_status: enable
        sql_condition_based_threat_weight: severe
        xss_html_attribute_based_severity: High
        sql_condition_based_status: enable
        sql_stacked_queries_trigger: ""
        xss_html_css_based_status: enable
        xss_javascript_variable_based_block_period: 600
        xss_html_attribute_based_action: alert_deny
        detection_target_sql: ARGS_NAMES ARGS_VALUE REQUEST_COOKIES
        sql_stacked_queries_threat_weight_value: 4
        sql_embeded_queries_threat_weight: severe
        sql_stacked_queries_status: enable
        sql_function_based_threat_weight: severe
        xss_javascript_variable_based_threat_weight: severe
        sz_exception_element_list: 0
        xss_html_tag_based_threat_weight: severe
        sql_stacked_queries_action: alert_deny
        xss_javascript_variable_based_threat_weight_value: 4
        sql_arithmetic_operation_action: alert_deny
        sql_condition_based_block_period: 600
        sql_function_based_status: enable
        sql_embeded_queries_severity: High
        sql_embeded_queries_action: alert_deny
        sql_arithmetic_operation_trigger: 
        xss_html_tag_based_action: alert_deny
        xss_html_tag_based_status: enable
        sql_stacked_queries_severity: High
        sql_arithmetic_operation_threat_weight_value: 4
        sql_function_based_threat_weight_value: 4
        xss_html_css_based_trigger: ""
        xss_html_tag_based_severity: High
        xss_javascript_function_based_severity: High
        sql_function_based_trigger: ""
        sql_line_comments_trigger: ""
        xss_html_css_based_block_period: 600
        xss_javascript_variable_based_action: alert_deny
        xss_javascript_function_based_threat_weight_value: 4
        xss_javascript_function_based_status: enable
        detection_target_xss: ARGS_NAMES ARGS_VALUE REQUEST_COOKIES
        xss_javascript_function_based_threat_weight: severe
        sql_embeded_queries_threat_weight_value: 4
        xss_javascript_variable_based_status: enable
        xss_javascript_function_based_trigger: 
        xss_html_css_based_threat_weight: severe
        sql_condition_based_action: alert_deny
        xss_javascript_variable_based_severity: High
        sql_stacked_queries_block_period: 600
        sql_line_comments_action: alert_deny
        xss_html_tag_based_check_level: strict
        name: test4
        xss_html_tag_based_threat_weight_value: 4
        sql_arithmetic_operation_threat_weight: severe
        xss_html_css_based_severity: High
        sql_function_based_block_period: 600
        xss_html_css_based_action: alert_deny
        sql_line_comments_threat_weight: severe
        sql_function_based_action: alert_deny
        xss_javascript_function_based_action: alert_deny
        sql_line_comments_block_period: 600
        sql_condition_based_trigger: ""
        xss_html_attribute_based_status: enable
        sql_line_comments_severity: High
        xss_html_css_based_threat_weight_value: 4
        xss_html_attribute_based_trigger: ""
        vdom: root
 
     - name: edit certificate hpkp
       fwebos_waf_syntax:
        action: edit 
        sql_arithmetic_operation_block_period: 600
        sql_stacked_queries_threat_weight: severe
        sql_embeded_queries_block_period: 600
        sql_arithmetic_operation_status: enable
        sql_condition_based_severity: High
        xss_html_attribute_based_block_period: 600
        xss_html_tag_based_trigger: 
        sql_condition_based_threat_weight_value: 4
        sql_function_based_severity: High
        xss_javascript_function_based_block_period: 600
        xss_html_attribute_based_threat_weight_value: 4
        xss_html_attribute_based_threat_weight: severe
        sql_embeded_queries_trigger: 
        sql_line_comments_status: enable
        xss_javascript_variable_based_trigger: 
        sql_line_comments_threat_weight_value: 4
        xss_html_tag_based_block_period: 600
        sql_arithmetic_operation_severity: High
        sql_embeded_queries_status: enable
        sql_condition_based_threat_weight: severe
        xss_html_attribute_based_severity: High
        sql_condition_based_status: enable
        sql_stacked_queries_trigger: 
        xss_html_css_based_status: enable
        xss_javascript_variable_based_block_period: 600
        xss_html_attribute_based_action: alert_deny
        detection_target_sql: ARGS_NAMES ARGS_VALUE REQUEST_COOKIES
        sql_stacked_queries_threat_weight_value: 4
        sql_embeded_queries_threat_weight: severe
        sql_stacked_queries_status: enable
        sql_function_based_threat_weight: severe
        xss_javascript_variable_based_threat_weight: severe
        sz_exception_element_list: 0
        xss_html_tag_based_threat_weight: severe
        sql_stacked_queries_action: alert_deny
        xss_javascript_variable_based_threat_weight_value: 4
        sql_arithmetic_operation_action: alert_deny
        sql_condition_based_block_period: 600
        sql_function_based_status: enable
        sql_embeded_queries_severity: High
        sql_embeded_queries_action: alert_deny
        sql_arithmetic_operation_trigger: 
        xss_html_tag_based_action: alert_deny
        xss_html_tag_based_status: enable
        sql_stacked_queries_severity: High
        sql_arithmetic_operation_threat_weight_value: 4
        sql_function_based_threat_weight_value: 4
        xss_html_css_based_trigger: 
        xss_html_tag_based_severity: High
        xss_javascript_function_based_severity: High
        sql_function_based_trigger: 
        sql_line_comments_trigger: 
        xss_html_css_based_block_period: 600
        xss_javascript_variable_based_action: alert_deny
        xss_javascript_function_based_threat_weight_value: 4
        xss_javascript_function_based_status: enable
        detection_target_xss: ARGS_NAMES ARGS_VALUE REQUEST_COOKIES
        xss_javascript_function_based_threat_weight: severe
        sql_embeded_queries_threat_weight_value: 4
        xss_javascript_variable_based_status: enable
        xss_javascript_function_based_trigger: 
        xss_html_css_based_threat_weight: severe
        sql_condition_based_action: alert_deny
        xss_javascript_variable_based_severity: High
        sql_stacked_queries_block_period: 600
        sql_line_comments_action: alert_deny
        xss_html_tag_based_check_level: strict
        name: test4
        xss_html_tag_based_threat_weight_value: 4
        sql_arithmetic_operation_threat_weight: severe
        xss_html_css_based_severity: High
        sql_function_based_block_period: 600
        xss_html_css_based_action: alert_deny
        sql_line_comments_threat_weight: severe
        sql_function_based_action: alert_deny
        xss_javascript_function_based_action: alert_deny
        sql_line_comments_block_period: 600
        sql_condition_based_trigger: 
        xss_html_attribute_based_status: enable
        sql_line_comments_severity: High
        xss_html_css_based_threat_weight_value: 4
        xss_html_attribute_based_trigger: 
        vdom: root
 

Return Values
-------------
Common return values are documented: https://docs.ansible.com/ansible/latest/reference_appendices/common_return_values.html#common-return-values, the following are the fields unique to this module:

.. raw:: html

    <ul><li><span class="li-return"> 200 </span> : OK: Request returns successful</li>
      <li><span class="li-return"> 400 </span> : Bad Request: Request cannot be processed by the API</li>
      <li><span class="li-return"> 401 </span> : Not Authorized: Request without successful login session</li>
      <li><span class="li-return"> 403 </span> : Forbidden: Request is missing CSRF token or administrator is missing access profile permissions.</li>
      <li><span class="li-return"> 404 </span> : Resource Not Found: Unable to find the specified resource.</li>
      <li><span class="li-return"> 405 </span> : Method Not Allowed: Specified HTTP method is not allowed for this resource. </li>
      <li><span class="li-return"> 413 </span> : Request Entity Too Large: Request cannot be processed due to large entity </li>
      <li><span class="li-return"> 424 </span> : Failed Dependency: Fail dependency can be duplicate resource, missing required parameter, missing required attribute, invalid attribute value</li>
      <li><span class="li-return"> 429 </span> : Access temporarily blocked: Maximum failed authentications reached. The offended source is temporarily blocked for certain amount of time.</li>
      <li><span class="li-return"> 500 </span> : Internal Server Error: Internal error when processing the request </li>
      
    </ul>

For errorcode please check FortiWeb API errorcode at : https://documenter.getpostman.com/view/11233300/TVetbkaK#887b9eb4-7c13-4338-a8db-16cc117f0119

Status
------

- This module is not guaranteed to have a backwards compatible interface.


Authors
-------

- Jie Li
- Brad Zhang

.. hint::
	If you notice any issues in this documentation, you can create a pull request to improve it.