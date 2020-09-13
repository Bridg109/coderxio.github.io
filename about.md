---
layout: default
---

# Organization
{% for user in organization_members %}
  * {{ user }}
{% endfor %}

# Projects
{% for repository in site.github.public_repositories %}
  * [{{ repository.project_title }}]({{ repository.html_url }})
  {% for user in repository.contributors %}
    {{ user.name }}
  {% endfor %}
{% endfor %}
