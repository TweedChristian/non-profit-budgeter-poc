/* eslint-disable @typescript-eslint/no-var-requires */
const defaultTheme = require('tailwindcss/defaultTheme')
const path = require('path');

/** @type {import('tailwindcss').Config} */
export default {
  darkMode: 'class',
  content: [
		'./src/**/*.{html,js,svelte,ts}',
		// eslint-disable-next-line @typescript-eslint/no-var-requires
		path.join(require.resolve(
			'@skeletonlabs/skeleton'),
			'../**/*.{html,js,svelte,ts}'
		)
	],
  theme: {
    extend: {
      fontFamily: {
        'sans': ['Gothic A1', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        "gray-green": "#425558",
        "accent-gray": "#9EB4B7",
        "gray-green-dark": "#222B2D"
      },
    },
  },
  plugins: [...require('@skeletonlabs/skeleton/tailwind/skeleton.cjs')()],
};
