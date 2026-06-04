/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,ts,tsx}'],
  theme: {
    extend: {
      colors: {
        // Primary palette — warm stone/terracotta
        stone: {
          50: '#FAF7F5',
          100: '#FAF1EE',
        },
        terracotta: {
          DEFAULT: '#C89481',
          dark: '#915B49',
          mid: '#B5826F',
          light: '#E4C5B7',
          50: '#FDF5F1',
        },
        ink: {
          DEFAULT: '#1C1816',
          light: '#3D3430',
          muted: '#6B5D58',
        },
        // Legacy rose tokens for backward compat
        rose: {
          DEFAULT: '#C89481',
          dark: '#915B49',
          light: '#E4C5B7',
          50: '#FDF5F1',
        },
        cream: '#FAF7F5',
        charcoal: {
          DEFAULT: '#1C1816',
          light: '#3D3430',
          muted: '#6B5D58',
        },
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', 'sans-serif'],
        display: ['Outfit', 'system-ui', 'sans-serif'],
        serif: ['"Playfair Display"', 'Georgia', 'serif'],
        body: ['Inter', 'system-ui', 'sans-serif'],
      },
      maxWidth: {
        site: '1280px',
      },
      borderRadius: {
        sm: '6px',
        DEFAULT: '8px',
        md: '12px',
        lg: '16px',
        xl: '20px',
        '2xl': '24px',
        '3xl': '32px',
      },
      backgroundImage: {
        'warm-gradient': 'linear-gradient(135deg, #FAF7F5 0%, #FAF1EE 100%)',
      },
    },
  },
  plugins: [],
};
