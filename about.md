---
layout: default
---
# About

## Projects
{% for repository in site.github.public_repositories %}
  * [{{ repository.name }}]({{ repository.html_url }}) 
    * Primary language: {{ repository.language }}
    * [Contributors]({{ repository.html_url }}/graphs/contributors)
{% endfor %}
