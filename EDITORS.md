# Editors

## Visual Studio Code

Required:

- [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync#review-details)

Packages:

- [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag#review-details)
- [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig#review-details)
- [ES7](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets#review-details)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint#review-details)
- [Rainbow Brackets]()
- [React Native Tools]()
- [Sort JSON](https://marketplace.visualstudio.com/items?itemName=richie5um2.vscode-sort-json#review-details)

Debugger:

- [Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome#review-details)

Git:

- [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph#review-details)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens#review-details)

Themes:

- [Ayu](https://marketplace.visualstudio.com/items?itemName=teabyii.ayu)
- [Horizon Theme](https://marketplace.visualstudio.com/items?itemName=jolaleye.horizon-theme-vscode)
- [Material Theme](https://marketplace.visualstudio.com/items?itemName=Equinusocio.vsc-material-theme)
- [Monokai Pro](https://marketplace.visualstudio.com/items?itemName=monokai.theme-monokai-pro-vscode#review-details)
- [Panda Theme](https://marketplace.visualstudio.com/items?itemName=tinkertrain.theme-panda)
- [Rainglow](https://marketplace.visualstudio.com/items?itemName=daylerees.rainglow)

Themes for icons:

- [VSCode Icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons#review-details)

Syntax highlighting:

- [Docker](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker#review-details)
- [DotENV](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv#review-details)
- [Sass](https://marketplace.visualstudio.com/items?itemName=robinbentley.sass-indented#review-details)
- [Styled Components](https://marketplace.visualstudio.com/items?itemName=jpoissonnier.vscode-styled-components#review-details)

Pair programming:

- [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare#review-details)
- [Live Share Audio](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare-audio#review-details)
- [Live Share Extension Pack](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare-pack#review-details)
- [Team Chat](https://marketplace.visualstudio.com/items?itemName=karigari.chat#review-details)

Extra or optional:

- [Bookmarks](https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks#review-details)
- [Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight#review-details)
- [Project Manager](https://marketplace.visualstudio.com/items?itemName=alefragnani.project-manager#review-details)

## Sublime Text 3

- [Package Control](https://packagecontrol.io)

Packages:

- [Babel](https://packagecontrol.io/packages/Babel)
- [Sass](https://packagecontrol.io/packages/Sass)
- [Pug](https://packagecontrol.io/packages/Pug)

Themes:

- [A File Icon](https://packagecontrol.io/packages/A%20File%20Icon)
- [Material Theme](https://packagecontrol.io/packages/Material%20Theme)
- [Material Theme - Appbar](https://packagecontrol.io/packages/Material%20Theme%20-%20Appbar)
- [Materialize](https://packagecontrol.io/packages/Materialize)
- [Materialize - Appbar](https://packagecontrol.io/packages/Materialize-Appbar)
- [Theme - Monokai Pro](https://packagecontrol.io/packages/Theme%20-%20Monokai%20Pro)

Settings:

```json
{
  // Material Theme - Configs
  "color_scheme": "Packages/Material Theme/schemes/Material-Theme-Darker.tmTheme",
  "theme": "Material-Theme-Darker.sublime-theme",
  "material_theme_accent_red": true, // red, orange, yellow, pink
  "material_theme_appbar_charcoal": true, // charcoal, red, orange, yellow, pink

  // Monokai Pro Theme - Configs
  "color_scheme": "Monokai Pro (Filter Spectrum).sublime-color-scheme",
  "theme": "Monokai Pro (Filter Spectrum).sublime-theme",

  // Default Configs
  "always_show_minimap_viewport": true,
  "bold_folder_labels": true,
  "draw_white_space": "all",
  "ensure_newline_at_eof_on_save": true,
  "folder_exclude_patterns": [".vscode", "coverage", "node_modules"],
  "font_face": "Fira Code",
  "font_options": ["gray_antialias"],
  "highlight_line": true,
  "ignored_packages": ["Vintage"],
  "line_padding_bottom": 2,
  "line_padding_top": 2,
  "overlay_scroll_bars": "enabled",
  "rulers": [80, 100],
  "shift_tab_unindent": true,
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "trim_trailing_white_space_on_save": true,
  "word_wrap": true,
  "wrap_width": 100
}
```

Keybinding:

```json
[{ "keys": ["super+b"], "command": "toggle_side_bar" }]
```

## Atom

Settings:

Selecionar o menu: _Atom >> Config..._

```
"*":
  core:
    telemetryConsent: "no"
    titleBar: "custom-inset"
  editor:
    fontFamily: "Fira Code, Menlo, Consolas, DejaVu Sans Mono, monospace"
    showIndentGuide: true
    showInvisibles: true
  welcome:
    showOnStartup: false
```

Keymap:

```cson
'atom-workspace':
  'cmd-b': 'tree-view:toggle'
  'cmd-g': 'github:toggle-git-tab'

'atom-workspace atom-text-editor:not([mini])':
  'cmd-[': 'pane:show-previous-item'
  'cmd-]': 'pane:show-next-item'
```
