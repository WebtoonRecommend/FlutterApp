'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "9eb5e043659569550f88fa3da13dc844",
"assets/assets/fonts/InknutAntiquaLight.ttf": "1131e152b0d8c7d7ef37f4f79a45b1da",
"assets/assets/fonts/InterBold.ttf": "275bfea5dc74c33f51916fee80feae67",
"assets/assets/fonts/InterRegular.ttf": "079af0e2936ccb99b391ddc0bbb73dcb",
"assets/assets/fonts/InterSemiBold.ttf": "079af0e2936ccb99b391ddc0bbb73dcb",
"assets/assets/images/image_not_found.png": "a88029aaad6e6ea7596096c7c451840b",
"assets/assets/images/img_.svg": "6daed53941f913ef4d52edcd1eafd237",
"assets/assets/images/img_1.png": "1dcea49278eb8333cef0831060656b6a",
"assets/assets/images/img_1_1.png": "ae669740a7a2269cebd14d90e820c553",
"assets/assets/images/img_1_101X125.png": "f39bd5ab8e65e1f17efeb5c4a1106df7",
"assets/assets/images/img_arrow1.svg": "b0c4a677fdec6468db8df44c9456d111",
"assets/assets/images/img_carousel.png": "540d1a25300a598bdf08f019dd4545fe",
"assets/assets/images/img_close.svg": "a93de369c173723e02b5549afd7beb34",
"assets/assets/images/img_frame10.png": "2ea5fcd791e3a874917ea6cbc919b8db",
"assets/assets/images/img_frame11.png": "2a16a4b453706a9b7659578e2f1b1d1c",
"assets/assets/images/img_group.svg": "12bab9839a56d094aa3a933a63d4d8db",
"assets/assets/images/img_icons8setting.png": "bba6d8c03f2f87216bb5b78574545c30",
"assets/assets/images/img_plus.svg": "415454eb663eef2ce34b4e16ce456bf0",
"assets/assets/images/img_polygon1.svg": "2ad3cf0ce609b119063dc2d4a94ac9f4",
"assets/assets/images/img_star1.svg": "523e504cfcdf2257fc7316088ff6723c",
"assets/assets/images/img_star1_1.svg": "1e800d0a14c533bd1d80e4e70747beab",
"assets/assets/images/img_star1_27X27.svg": "523e504cfcdf2257fc7316088ff6723c",
"assets/assets/images/img_thumbnailimag0.png": "576b1f9343aa056f3728c620ce446b88",
"assets/assets/images/img_thumbnailimag0_1.png": "c82da69bd55b14eaed78ad1411d4d5af",
"assets/assets/images/img_thumbnailimag0_245X333.png": "cb008323448384aa77322ce0b04d5997",
"assets/assets/images/img_trophy.svg": "21e6d7bccaf5b59af54f1ba341640dc1",
"assets/assets/images/img_user.svg": "2bf9e8a88e08cd49a4f6bf19344058e6",
"assets/assets/images/img_vector.svg": "ecbb5ca8957d56d03b792b021386982e",
"assets/assets/pictures/99inchant.jpg": "d72ac6b0c059d141fb6c1a55917ee72a",
"assets/assets/pictures/dobby.jpg": "47e1a65aab5781d28da8fce80535661c",
"assets/assets/pictures/godread.jpg": "0ec1d8ac235c41021e325ddf6b1ba375",
"assets/assets/pictures/solodiary.jpg": "3c055deb85987b7feae7db12ca7dc5ff",
"assets/assets/pictures/tigerbro.jpg": "ac320408be8895dc3741d4ae4f543827",
"assets/assets/pictures/windbreaker.jpg": "b6e01cad85127ddaede788e03e4823f1",
"assets/FontManifest.json": "1439de6b31becae1219013dee03d70cc",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "67e988897a169ac33651e336df42b1fe",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "e7006a0a033d834ef9414d48db3be6fc",
"assets/shaders/ink_sparkle.frag": "2ad5fabd6a36a6deff087b8edfd0c1f8",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "8ae00b472ec3937a5bee52055d6bc8b4",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "2f0c7434a4bd6310adf4465267d2c8e6",
"/": "2f0c7434a4bd6310adf4465267d2c8e6",
"main.dart.js": "2cc3919d2a7883b17787bcba9b9108eb",
"manifest.json": "57a3fbb9c6753ff8738b7f2910b26618",
"version.json": "5cba214b8f0943b91551e12c6e8e9819"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
