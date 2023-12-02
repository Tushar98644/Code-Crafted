/** @type {import('tailwindcss').Config} */
export default {
  purge: ['./index.html', './src/**/*.{vue,js,ts,jsx,tsx}'],
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx,vue}",
  ],
  theme: {
    extend: {
      animation: {
        'infinite-scroll': 'infinite-scroll 25s linear infinite',
        'reverse-infinite-scroll': 'reverse-infinite-scroll 25s linear infinite'
      },
      keyframes: {
        'infinite-scroll': {
          from: { transform: 'translateX(0)' },
          to: { transform: 'translateX(-100%)' },
        },
        'reverse-infinite-scroll':{
          from: { transform: 'translateX(-100%)' },
          to: { transform: 'translateX(0%)' },
        }
      }
    },

  },
  plugins: [],
}

