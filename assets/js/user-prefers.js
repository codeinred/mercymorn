const userPrefers = localStorage.getItem('theme');

function changeModeMeta(theme) {
    document.documentElement.setAttribute('data-theme', theme);
}

if (userPrefers === 'dark') {
    changeModeMeta('dark');
} else if (userPrefers === 'light') {
    changeModeMeta('light');
}