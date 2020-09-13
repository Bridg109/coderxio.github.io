---
layout: default
---
# About

## Organization
{% for user in site.github.organization_members %}
  * ![{{ user.login }}](user.avatar_url) [{{ user.login }}]({{ user.url }})
{% endfor %}

<script>
{% for user in site.github.organization_members %}
  console.log({{ user | jsonify}})
{% endfor %}
 
</script>

## Projects
{% for repository in site.github.public_repositories %}
  * [{{ repository.name }}]({{ repository.html_url }})
  {% for user in repository.contributors %}
    * {{ user.name }}
  {% endfor %}

{% endfor %}
