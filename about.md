---
layout: default
---

# Organization
{% for user in site.github.organization_members %}
  * {{ user.name }}
{% endfor %}

# Projects
{% for repository in site.github.public_repositories %}
  * [{{ repository.name }}]({{ repository.html_url }}) - {{ repository.project_tagline }}
  {% for user in repository.contributors %}
    {{ user.id }}
  {% endfor %}
{% endfor %}
