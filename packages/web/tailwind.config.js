module.exports = {
  content: ["./src/**/*.{js,jsx,ts,tsx}"],
  plugins: [require("daisyui")],
  daisyui: {
    themes: [
      {
        mytheme: {
          primary: "#159cfe",
          "primary-content": "#ffffff",
          secondary: "#524948",
          "secondary-content": "#ffffff",
          accent: "#3B28CC",
          neutral: "#3d4451",
          "base-100": "#ffffff",
          error: "#D50F25",
        },
      },
    ],
  },
  theme: {
    extend: {
      fontFamily: {
        body: ["Poppins"],
      },
      colors: {
        "link-color": "#213368",
        primary: "#159cfe",
        "primary-accent": "#1181d1",
        danger: "#D50F25",
      },
    },
  },
  themes: [
    {
      mytheme: {
        primary: "#a991f7",
        secondary: "#f6d860",
        accent: "#37cdbe",
        neutral: "#3d4451",
        "base-100": "#ffffff",
      },
    },
    "dark",
    "cupcake",
  ],
};
