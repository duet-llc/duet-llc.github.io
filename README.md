# Duet LLC website

Plain HTML, CSS, and SVG in `site/`. No JavaScript, dependencies, or build step.
Colors follow the system light/dark preference.

## Preview

From the repository root, run `python3 -m http.server 8000 --directory site`
and open http://localhost:8000. Python is only needed for this optional local preview.

## Deploy

Push or merge to `main` to deploy `site/` through GitHub Actions to GitHub Pages.
The workflow can also be run manually from the Actions tab. Repository Pages
settings must use GitHub Actions as the deployment source.

Changes prepared through ChatGPT use the same branch/PR and merge workflow.
For another static host, upload the contents of `site/` unchanged.

The homepage is `/`; the policy is `/framatic/privacy-policy/`.
