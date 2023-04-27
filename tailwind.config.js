// eslint-disable-next-line @typescript-eslint/no-var-requires
const defaultTheme = require('tailwindcss/defaultTheme')

/** @type {import('tailwindcss').Config} */
export default {
  content: ["./src/**/*.{html,js,svelte,ts}"],
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
  plugins: [],
};
