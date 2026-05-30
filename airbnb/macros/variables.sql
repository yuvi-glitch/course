{% macro learn_variables() %}
    {#this is a jinja variable#}

    {% set your_name_jinja = "yuvi" %}
    {{ log("hello" ~' ' ~ your_name_jinja, info=True ) }}
    {#this is a dbt variable#}

    {{ log("hello dbt user " ~var("user_name","no user name value is set" ) ~ "!", info = True) }}

{% endmacro %}