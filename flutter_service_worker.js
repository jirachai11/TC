'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "eb11f1ceeedf1aa0f4159edb5655b81b",
"assets/AssetManifest.bin.json": "9f17e01e6dd578a320cb77f3616fb828",
"assets/AssetManifest.json": "9308f8c31f0fd2b6ac1a95379176a6a1",
"assets/assets/3_boon_sart_1.jpeg": "19a53eeb5cc417e230e44c9f8012789a",
"assets/assets/3_boon_sart_2.jpeg": "358a116ebb2db1497bc8447f8ba18cf1",
"assets/assets/3_manora_1.jpeg": "cf673662ff65fe1d2469a9811bb3f2d3",
"assets/assets/3_manora_2.jpeg": "96dd2d19f67b830cf494bdf164764176",
"assets/assets/3_manora_3.jpeg": "b47b46b36c4bbe3c5465cc38464bb81f",
"assets/assets/coffee.png": "004dd3d6522558ae459ac954d04879f8",
"assets/assets/culture_pha_thing_thatu.jpg": "2aa020175dfffe34d3c0ba99c34fd59b",
"assets/assets/culture_pha_thing_thatu_2.jpg": "ff0ca7aedd694a3ad96f7497ccca849e",
"assets/assets/dried_bananas.png": "45b88e88cd8a827add8b3b53107ba8cd",
"assets/assets/history_main_cover.jpeg": "16ec9420cf170b5cc288a06edd1b50e2",
"assets/assets/hom_farm.jpg": "7073358e8797b0325210479c1a6bf723",
"assets/assets/khai_khem.jpeg": "60aa6c105a30b96b63ccf86bd9c29721",
"assets/assets/khanom_jeeb.jpeg": "c48497734dbd84d0033847d3d7e9a271",
"assets/assets/khanom_sai_lanta.jpeg": "1f727c6d74d4b33c7ad65189e3aaa241",
"assets/assets/khao_sangyot.jpeg": "7a634ba0475d4d3bf59c2be354b9ae8e",
"assets/assets/my_best.png": "4ba37fb360e44ec6b2b72c741dd7f7bd",
"assets/assets/pornthip.jpeg": "d5695632d610351f8e182867c4842240",
"assets/assets/prakai_chan.png": "8414e0e32223cd39127469fc4d8d0cc4",
"assets/assets/rose_mooncakes.jpg": "06b5c342488381e08ee376586ab8d51a",
"assets/assets/south.png": "1d914be64d8b75f092dfcd32f25455c5",
"assets/assets/tao_so.jpeg": "bf2c82cab15ac67fe25b28160003a008",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1f124136d9cc2fe43dca7f1d4dfe662c",
"assets/NOTICES": "7eec0db26786ca9160c555b45664fec1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "8cf6e87eff144e2453a9640bfa1a4ad0",
"canvaskit/canvaskit.js.symbols": "8d7b042615c3df3b6084a43f4cbab201",
"canvaskit/canvaskit.wasm": "f2bff9540242b13879d64cad2240f3d7",
"canvaskit/chromium/canvaskit.js": "9dc7a140b1f0755e6321e9c61b9bd4d9",
"canvaskit/chromium/canvaskit.js.symbols": "fb34b276adaa25a69526127d3eb90c16",
"canvaskit/chromium/canvaskit.wasm": "c03ca38cf9e6d7c428fb4002bc85f4e7",
"canvaskit/skwasm.js": "9c817487f9f24229450747c66b9374a6",
"canvaskit/skwasm.js.symbols": "7157d996c331b2a9e316b6ec288305ad",
"canvaskit/skwasm.wasm": "a789594257ac1bdad1f89ec1bb3a823d",
"canvaskit/skwasm_st.js": "7df9d8484fef4ca8fff6eb4f419a89f8",
"canvaskit/skwasm_st.js.symbols": "21bd5519d3b07c5c54daf3ce328fbf37",
"canvaskit/skwasm_st.wasm": "48287a212ba5f76ff8d45a852ee51441",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "1e28bc80be052b70b1e92d55bea86b2a",
"flutter_bootstrap.js": "e56465699b14dc3c8c4e04c7dad649f0",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "30b41b403f95398b24b1365e14101b37",
"/": "30b41b403f95398b24b1365e14101b37",
"main.dart.js": "885b862356ea2eabb523b8490e9f097c",
"manifest.json": "201d4365db888e1c0f9a0b729066c1a7",
"version.json": "2b37a0757edf4949a3f28678c6aee16e"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
