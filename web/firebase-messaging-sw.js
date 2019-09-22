// firebase-messaging-sw.js
window.importScripts('https://www.gstatic.com/firebasejs/3.6.8/firebase-app.js');
window.importScripts('https://www.gstatic.com/firebasejs/3.6.8/firebase-messaging.js');

window.firebase.initializeApp({
    messagingSenderId: '549389229994'
});

const messaging = window.firebase.messaging();