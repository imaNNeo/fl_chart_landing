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
    image: 'img/docusaurus-social-card.jpg',
    colorMode: {
      defaultMode: 'dark',
      disableSwitch: true,
      respectPrefersColorScheme: false,
    },
    navbar: {
      title: 'FL Chart',
      logo: {
        alt: 'FL Chart Logo',
        src: 'img/logo.svg',
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
      ],
    },
    footer: {
      links: [
        {
          to: '/about', // Ensure you have an 'about' page
          label: 'About',
          position: 'right',
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} FL Chart. Built with Docusaurus.`,
    },
  },
};

export default config;
