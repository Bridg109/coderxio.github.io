---
layout: default
---
# About


## Members
{% for user in site.github.organization_members %}
  * [{{ user.login }}]({{ user.html_url }})
{% endfor %}

## Projects
{% for repository in site.github.public_repositories %}
  * [{{ repository.name }}]({{ repository.html_url }}) (Language: {{ repository.language }})
{% endfor %}


<script>
{% for repository in site.github.public_repositories %}
   console.log({{ repository }})
{% endfor %}
 
</script>
