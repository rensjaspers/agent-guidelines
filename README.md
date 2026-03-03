# agents

A library of rules, skills, agents, and templates for AI-assisted development.

## Structure

```
rules/       # Coding rules in Cursor .mdc format
skills/      # Framework and tool skills
  angular/   # Angular-related skills
  nestjs/    # NestJS-related skills
agents/      # Agent definitions for specialist roles
templates/   # Project-specific .agent folder templates
  angular/        # Angular frontend projects
  ionic-angular/  # Ionic + Angular projects
  nestjs/         # NestJS backend projects
```

## Using a template

Run from your **project root** to install a template into `.agents/` without overwriting existing files:

```bash
curl -fsSL https://raw.githubusercontent.com/rensjaspers/agents/main/scripts/install-template.sh | bash -s -- angular
```

Replace `angular` with the name of the template you want (`angular`, `ionic-angular`, or `nestjs`).

## License

MIT — see [LICENSE](./LICENSE)

---

> **Note:** This repository is primarily meant as inspiration. Don't blindly copy someone else's skills — review them critically and adapt them to your own context. Stay safe!
