# HDI_ForEach

![4D](https://img.shields.io/badge/4D-21%2B-blue) ![Platform](https://img.shields.io/badge/platform-macOS%20%7C%20Windows-lightgrey) ![License](https://img.shields.io/github/license/miyako/HDI_ForEach)

**How do I loop over collections, object properties, and entity selections with `For each`?**

A 4D "How Do I" (HDI) example project. Originally a 4D v17 binary database, it has been converted to project mode and updated to current 4D conventions.

## Overview

The `For each` loop (introduced in 4D v16 R6) iterates over a **collection**, an **object**'s properties, or an **entity selection**. The demo window has one tab per scenario, each with a short explanation and a button to run the code.

| Tab | Iterates over | Technique |
|-----|---------------|-----------|
| Numbers | 100 random numbers | Counting odd/even, ranges, and multiples of 7 in one pass |
| Words | A collection of text values | Filtering by length |
| Entity selection | `ds.Employees` query | Updating and saving each entity (e.g. salary raise) |
| Object properties | Two contact objects | Merging properties with *Skip* or *Replace* behaviour |

Tick **Trace code** before pressing a button to step through the code in the 4D debugger.

## Requirements

- 4D 21 or later (project mode, `compatibilityVersion` 2101)
- The demo itself requires 4D v17 or later (the splash checks `minimumVersion`)

## Getting started

1. Clone or download this repository.
2. Open `Project/HDI_ForEach.4DProject` with 4D.
3. Run **File > Demo** (`Cmd/Ctrl+K`) or let `onStartup` open the splash window.
4. Sample data in `Resources/*.4ie` is imported automatically the first time the data file is empty.

## Points of interest

- **Startup pattern** (`Project/Sources/Methods/00_Start.4dm`): `CALL WORKER(1; ...)` plus a non-blocking `DIALOG(...; *)`; if the splash window is already open it is brought to the front instead of being duplicated.
- **Splash to demo hand-off** (`Forms/HDI/ObjectMethods/BtnDemo.4dm`): the `Form` object is passed from the splash to the main form; no interprocess variables are used.
- **Loops**: `Forms/HDI2/ObjectMethods/Button*.4dm` contains the actual `For each` examples.
- **ORDA**: `ds.Employees.query(...)` and `entity.save()` in `Button10.4dm`.
- **Menu standard actions**: Quit, Edit, and Design items use `"action"` in `menus.json`; no wrapper methods.
- **Dark mode**: form objects use `"automatic"` / `"automaticAlternate"` colours; branded colours live in `styleSheets.css` behind `prefers-color-scheme` media queries.
- **Liquid Glass**: `styleSheets_mac.css` sets button heights per `form-theme` (27px `liquid-glass`, 23px `mac-classic`), so buttons have no `height` in the form JSON.
- **Localisation**: all UI strings come from XLIFF (`:xliff:` in forms and menus, `Localized string` in code); English and Japanese are provided.
- **Method hygiene**: typed with `var` / `#DECLARE`; subroutines are marked `invisible`.

## Project structure

```
Project/Sources/
  Forms/HDI/          splash window (title, version, blog link)
  Forms/HDI2/         demo window (tabs, listbox, buttons)
  TableForms/         input/output forms for [INFO] and [Employees]
  Methods/            00_Start, HDI_UpdatePage, ReadWrite, compiler methods
  menus.json          menu bar
  styleSheets*.css    dark mode and platform/theme styling
Resources/
  en.lproj, ja.lproj  XLIFF files (menu, HDI, HDI2, tableforms, messages)
  *.4ie / *.4si       sample data import files
```

## Adapting this template

To reuse the splash for another HDI example, edit the options in `00_Start.4dm` (title, info, `minimumVersion`, optional `license`) and the matching strings in `Resources/*.lproj/messages*.xlf`.

## References

- Blog post: [Loops, loops and more loops](https://blog.4d.com/loops-loops-and-more-loops/)
- Original download: [HDI_ForEach.zip](https://download.4d.com/Demos/4D_v17/HDI_ForEach.zip)
- [CSS in 4D forms](https://developer.4d.com/docs/FormEditor/stylesheets)

## License

See [LICENSE](LICENSE).
