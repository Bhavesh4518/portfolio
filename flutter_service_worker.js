'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "2c76478eabcca7a6b64d98e8b1e3c05a",
"assets/AssetManifest.bin.json": "73c4703b7f196108648c286d9d3bf013",
"assets/AssetManifest.json": "f32e64196ad3fbc5cf5d5c2b69f38e3b",
"assets/assets/ab/a2.png": "4c282896a76480eb9e7ba8f675179911",
"assets/assets/ab/a4.png": "67f861a560b460580b5b80939c3ed7b5",
"assets/assets/ab/a5.png": "7b86d2e693008136c262a6af5ef13b44",
"assets/assets/ab/a6.png": "40fb8e7f069f21f3d28df828a4988ea9",
"assets/assets/ck/b1.png": "6ca82c4059472bb996c03f872e774935",
"assets/assets/ck/b2.png": "1a40767b2a3a2e9f0ddc1036eb306dfa",
"assets/assets/ck/b3.png": "2e3b075f59c6716103da0dac7116235c",
"assets/assets/ck/b5.png": "d950abc6987021e0a49858add46915de",
"assets/assets/e11.png": "adb85bf7e63875f882b4837113f0fd7b",
"assets/assets/e4.png": "eb66cd35cdadb45966857eb297fb1fa5",
"assets/assets/e6.png": "f52877d8c66102b3752f763b6a1c1f59",
"assets/assets/et/e1.png": "775ec1f2f720e4eefd8db43adddf1447",
"assets/assets/et/e11.png": "adb85bf7e63875f882b4837113f0fd7b",
"assets/assets/et/e2.png": "24e1f84ba0ea2ecb7204511ca6d4b2db",
"assets/assets/et/e3.png": "236a8e97150ea9caa01b2d26dd5b49f8",
"assets/assets/et/e4.png": "eb66cd35cdadb45966857eb297fb1fa5",
"assets/assets/et/e6.png": "f52877d8c66102b3752f763b6a1c1f59",
"assets/assets/flutter.png": "4262c71228b7aa391e995fe5f1d57795",
"assets/assets/lionreading.gif": "412b17d01ebc65df514d77513a64d246",
"assets/assets/my.jpg": "88e2bb131048bbf4894cc1f5020aadfd",
"assets/assets/mypfp.jpg": "61c85b5d4498558a2b912e00ad5e9260",
"assets/assets/pfp.png": "b807e1e910d36cfe4a887d8fb0a05924",
"assets/assets/poet.png": "bc893df74c27500362d7151af0afe34c",
"assets/assets/port-removebg-preview%2520(1).png": "7613e7ae3c0d48b0583d9721b227066f",
"assets/assets/port-removebg-preview.png": "8895dac25998d4fc0b7972c233f3ec87",
"assets/assets/port.png": "b71f01e7368f3e737a8ead6ee79c4608",
"assets/assets/skills/c.png": "8ac616dd765f3cc27c06734619818b8a",
"assets/assets/skills/com.png": "9bf4cdf36ff67fe02aed4de8ccce19ca",
"assets/assets/skills/create.png": "07e606644d5f4aacbcb16017c3b9fe51",
"assets/assets/skills/dart.png": "84faece66090426189f0c24b97974c72",
"assets/assets/skills/firebase.png": "2a0d521e9fb0e81fb9e44f6255e245da",
"assets/assets/skills/flutter.png": "4262c71228b7aa391e995fe5f1d57795",
"assets/assets/skills/getx.png": "3439504bf79220bbef5020ea25620b93",
"assets/assets/skills/oop.png": "8137ebc24a830c40da5c07d76bffbc15",
"assets/assets/skills/pr.png": "5752f15167409bcda41354ec0df374f1",
"assets/assets/skills/sql.png": "672ab4e1444b1971cf26320ac2bd3df8",
"assets/assets/skills/team.png": "b6771c18a28052369d747e677dd67822",
"assets/assets/skills/time.png": "536866cd8db8e22c29fe3c9ad2f884d2",
"assets/assets/treads.png": "90d04729fce85ede1e1af743bc155a57",
"assets/assets/tt/AccountScreen.png": "2d3c6911478ca19532fe9ea9c5b246e5",
"assets/assets/tt/checkOut.png": "8d4c8eb53cec8716f4503672e39642b3",
"assets/assets/tt/homeScreen.png": "378a2907d46cfc403052c27a00456e8b",
"assets/assets/tt/storeScreen.png": "838ffd15bd40edc182441ff2350433e7",
"assets/assets/w1.png": "4d6a9c5f0e3041063ac5e6198cbd6bc3",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "b20b326b7f6616e7c9588cebc71be997",
"assets/NOTICES": "4fc23200b5e519dec99a8d11bf73d625",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "59a12ab9d00ae8f8096fffc417b6e84f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "c757ff978df96c3bbc9894c25f9de6de",
"/": "c757ff978df96c3bbc9894c25f9de6de",
"main.dart.js": "b2deb39a86c4f0a977a02f084b4b6c95",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
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
