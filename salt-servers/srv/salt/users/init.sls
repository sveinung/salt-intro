{% for usr in 'ole', 'dole', 'doffen' %}
{{ usr }}:
  user:
    - present
{% endfor %}
