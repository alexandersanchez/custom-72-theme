# Custom 7.2 Theme Based on Liferay's Classic Theme

A simple Liferay theme that allows for easy customization of the color scheme.

### Set Up

*** At this point Liferay Theme's require `NPM 10` or earlier in order to play nicely with `Gulp 3`.

1. `npm install`
2. `gulp init`
3. `gulp deploy`

### Desktop

![desktop](/src/images/desktop.png)

### Mobile

![mobile](/src/images/mobile.png)

### Features

* Embedded Language Selector in Header
* Embeded Navigation Portlet in Footer
* Social Icons
* Header Search
* Secondary Header Navigation
* Customizable Theme Settings

### Customizing

The color of the header and footer can easily be changed through the following theme settings: `theme-color`, `theme-blend-color`, `text-with-theme-background-color`.

Any additional changes to the color scheme can be made in `_clay_variables.scss`. 

```scss
/* Theme Colors */

// $primary: #7ac2e5;
// $secondary: #57585a;
// $success: #093829;
// $info: #17ab8b;
// $warning: #cb5648;
// $danger: #c2242e;
// $light: #e6e7e9;
// $dark: #083829;

/* Header and Navigation Background Color */

$theme: #00467F; // Primary color on header, footer, and navigation hover effect.
$themeSoft: #A5CC82; // Secondary color on header, footer, and navigation hover effect.

$textWithThemeBackground: #FFF; // Color of text to be used when the background is the `$theme` color.
```