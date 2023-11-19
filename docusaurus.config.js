// @ts-check
// `@type` JSDoc annotations allow editor autocompletion and type checking
// (when paired with `@ts-check`).
// There are various equivalent ways to declare your Docusaurus config.
// See: https://docusaurus.io/docs/api/docusaurus-config

import {themes as prismThemes} from 'prism-react-renderer';

const config = {
  title: 'FL Chart',
  tagline: 'Highly customizable flutter chart library',
  favicon: 'img/favicon.ico',

  url: 'https://flchart.dev',
  baseUrl: '/',
  organizationName: 'imaNNeo',
  projectName: 'fl_chart',

  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',

  // Even if you don't use internationalization, you can use this field to set
  // useful metadata like html lang. For example, if your site is Chinese, you
  // may want to replace "en" with "zh-Hans".
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      {
        theme: {
          customCss: './src/css/custom.css',
        },
      },
    ],
  ],

  themeConfig: {
    image: 'img/social_preview.jpg',
    colorMode: {
      defaultMode: 'dark',
      disableSwitch: true,
      respectPrefersColorScheme: false,
    },
    navbar: {
      logo: {
        alt: 'FL Chart Logo',
        src: 'img/logo_with_text.svg',
      },
      items: [
        {
          to: 'https://docs.flchart.dev/',
          label: 'Docs',
          position: 'right',
        },
        {
          href: 'https://app.flchart.dev/',
          label: 'Examples App',
          position: 'right',
        },
        {
          href: 'https://github.com/imaNNeo/fl_chart',
          label: 'GitHub',
          position: 'right',
        },
        {
          href: '/about',
          label: 'About',
          position: 'right',
        },
      ],
    },
    footer: {
      links: [
        {
          to: '/about', // Ensure you have an 'about' page
          label: 'About',
        },
        {
          to: 'https://docs.flchart.dev', // Ensure you have an 'about' page
          label: 'Docs',
        },
        {
          to: 'https://github.com/imaNNeo/fl_chart', // Ensure you have an 'about' page
          label: 'Source code',
        },
        {
          to: 'https://github.com/imaNNeo/fl_chart_landing', // Ensure you have an 'about' page
          label: 'Landing page source code',
        },
        {
          to: 'https://flutter4fun.com/', // Ensure you have an 'about' page
          label: 'Flutter 4 Fun',
        },
        {
          to: 'https://github.com/imaNNeo/fl_chart/issues/new/choose', // Ensure you have an 'about' page
          label: 'Report and issue',
        },
        {
          to: 'https://github.com/imaNNeo/fl_chart/blob/master/CONTRIBUTING.md', // Ensure you have an 'about' page
          label: 'Contribute',
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} FL Chart. Built with Docusaurus.`,
    },
  },
};

export default config;
