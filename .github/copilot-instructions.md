## Repo quick context

- Language & runtime: Plain PHP (procedural), no framework. Served via XAMPP (Apache + PHP) under the workspace path `c:/xampp/htdocs/ProyectoGdeS`.
- No build system or automated tests found. Deploy/run by placing project in XAMPP `htdocs` and opening `http://localhost/ProyectoGdeS` (admin at `/admin`).

## How this site is organized (big-picture)

- `index.php` — public entry (root of site).
- `admin/` — backend admin UI. Uses simple PHP includes for templates and a small PDO-based DB layer.
  - `admin/bd.php` — PDO connection (host: `localhost`, DB: `restaurante`, user: `root`). Example: `new PDO("mysql:host=$servidor;dbname=$baseDatos",...)`.
  - `admin/templetes/header.php`, `footer.php` — admin HTML wrapper. Header defines `$url_base = "http://localhost/ProyectoGdeS/admin/"` and links to sections.
  - `admin/seccion/*` — per-section CRUD screens (banners, colaboradores, testimonios, menu, comentarios, usuarios).

## Important conventions & patterns (for automated edits)

- Files rely on relative includes. Example: `admin/seccion/colaboradores/crear.php` does `include("../../bd.php");` and `include("../../templetes/header.php");`. Maintain relative paths when moving files.
- DB access uses PDO with prepared statements. Follow that pattern (bind params, call `execute()`) when adding queries.
- Templates are simple includes — avoid introducing routing frameworks. Keep changes minimal to existing include approach.

## Common gotchas / repo-specific issues to watch for

- Copy-paste artifacts exist: `admin/seccion/colaboradores/crear.php` currently prepares an INSERT for table `tbl_banners` — verify target table when editing section files.
- Form issues to fix when implementing uploads/forms:
  - `enctype` typo: `enctype="multipar/form-data"` should be `multipart/form-data`.
  - Multiple social-link inputs share the same `name="link"`; prefer distinct names (e.g., `link_facebook`, `link_instagram`, `link_linkedin`) or use an array name (`link[]`) and handle accordingly.

## DB & local data

- SQL dump: `database/proyecto_gdes.sql`. Import via phpMyAdmin (see `database/README.md`). Typical workflow: start XAMPP, open phpMyAdmin, create DB, import the SQL file.

## How to run / debug locally

1. Start XAMPP (Apache + MySQL). Ensure document root includes this repo as `c:/xampp/htdocs/ProyectoGdeS`.
2. Import `database/proyecto_gdes.sql` into MySQL if you need initial tables/data.
3. Visit admin: `http://localhost/ProyectoGdeS/admin/`.
4. Use browser devtools + PHP error display (or XAMPP logs) for debugging. DB errors in `admin/bd.php` are echoed from Exception — tests should watch for that pattern.

## When you make changes (recommended checklist)

- Keep relative includes intact (or update all includes if you change file organization).
- Use PDO prepared statements like existing files. Check `bindParam` usage in `admin/seccion/*` files.
- Verify forms: correct `enctype`, unique `name` attributes for inputs, and file handling code (move uploaded files to `images/` as needed).
- Run manual smoke test: login to admin (if present), create a record in the section edited, verify DB row and file saved to `images/`.

## Search hints for an AI agent

- DB connection: search for `new PDO` or `bd.php`.
- Admin templates: search `templetes/header.php` or `$url_base` to discover admin routes.
- Common copy-paste pattern: look for `INSERT INTO \`tbl_banners\`` across `admin/seccion` to spot reused queries that may need correction.

If any section needs more detail (example flows, common bugs, or missing conventions), tell me which area you want expanded and I will update this file.
