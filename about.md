---
layout: default
---

# Organization
{% for user in organization_members %}
  * {{ user.login }}
{% endfor %}

# Projects
{% for repository in site.github.public_repositories %}
  * [{{ repository.repository_name }}]({{ repository.html_url }}) - {{ repository.project_tagline }}
  {% for user in repository.contributors %}
    {{ user.username }}
  {% endfor %}
{% endfor %}
