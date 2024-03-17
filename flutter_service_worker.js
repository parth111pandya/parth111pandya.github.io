'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "a480c04791170bd929f8d5f260885608",
".git/config": "aff06de47f84dae31bf845bb72b59cbb",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "d6628019dca291cf79c10adb10b6a597",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "521b512391960e0e0534014b475dfcde",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "e27e21f96fc5595960c3532ed15c1da9",
".git/logs/refs/heads/web": "45f390a8ad0f36a5219477718ff79538",
".git/logs/refs/remotes/origin/web": "052781c00f32e582df15619e28a08612",
".git/objects/01/f665fedf8eb045f0ed61e645e10b553f6fdd4e": "061e5cc896eb91854af9fae67bc3691a",
".git/objects/04/268fa4a18b3bf3789a6ea2de68f3f3b896e918": "173d651b3fa218d69b8b2a34d6a04bb8",
".git/objects/04/e7f17901a087c43c4782f5397a4e8c13e57392": "5817f2e134de329706ee44c5ea644457",
".git/objects/07/74c17c0fa7a7e87e24a6935830998d92b52c75": "cd62ee54b7ceea7b2a7804e69b1d9134",
".git/objects/11/2c0145603352f5cb752cf6d666f3b262833d3d": "2d230aaf336ce0fc6717858514b23b3a",
".git/objects/16/5ce0ddf03a820a38f48cba9aa0c9df9b6e6b79": "71df17c95c3124eada62b59e7dabda78",
".git/objects/1a/55de08f8a7af21c3aa64b2b67e1c7af17fa35f": "7b0fd28175e2d06554a35fe5eb7e4a5b",
".git/objects/1f/56f7125f73a4f05b7d0ad9d2e3daf4e164b371": "96cf9139b1b8a8bc760bed2badaafa57",
".git/objects/20/1afe538261bd7f9a38bed0524669398070d046": "82a4d6c731c1d8cdc48bce3ab3c11172",
".git/objects/27/1a9e9abe5ea01caedb0924d585fc033571630a": "b1019d91637625c2021df8150e5e3e26",
".git/objects/2a/4a7404b5b606ed7691afefe42a16204ed5aea6": "e0baa51a803ad366decb3a344799678a",
".git/objects/2f/506dd4bfd5f3c743193c772a9b3efb8288327f": "2f2261863bd02d338a1d18a0523c9120",
".git/objects/35/1226fb3e6241c53de046e7e21afc35108a0492": "09eba3c38e6bea745778c2b5e17f6429",
".git/objects/44/0328ad602b0388c45d46e18ec125747548c155": "67417e16bf4e27b18b98722619cf79ce",
".git/objects/44/ca15b4859a6411a007bdbbbd80903829a25062": "467f8ece4ff10093eba8e1e82a598eac",
".git/objects/4a/39079e580dc9be820cba2fae41238c49eaa798": "ada1a19fea32fbb6719120809b9eae60",
".git/objects/51/35b3a9e8f7ecd16c1eb3c43907e4991e8370b3": "bdbe229f2f1a6c23bc049a4ca80a11fd",
".git/objects/53/7807567919e88db2866b7825339c57e94c24d8": "970aec5149a3dbe9370a9dc982cdd022",
".git/objects/5a/7b05e1be311772247124911182fda78fde2cec": "d38bfbb93663df272dc4920186bd1040",
".git/objects/5c/5a01181114a765de12459723ca4a35ed43d4c0": "5c8ba18b13d92fbbf9c837d38e098956",
".git/objects/61/eac8ec9dd7dd0d31ccf19c6e4d803f4bb29a45": "c4d14b9e98b74fbba3ad388673365885",
".git/objects/62/cf4fa893a9cd68acd783fe436b26753cb31a25": "65d62694357914ea68e04235a4c916ee",
".git/objects/6f/9cad4c116bc8d72e2497226abb5c05ee64982c": "0d104480d68c1652a53721377a02a882",
".git/objects/71/7117947090611c3967f8681ab1ac0f79bca7fc": "ad4e74c0da46020e04043b5cf7f91098",
".git/objects/71/7809363ed19bdd7e1d78f6e421e40a96bc29e3": "9414a3044cb191cc3f57340f57c3dc93",
".git/objects/72/2f88cc39a7163a2a2cc2915566f48d19a25a6c": "97881afa7f3b2519b9966071ab88c4da",
".git/objects/7d/6b66ec32f36d067a16b9f08a907907e0a44e62": "dd5f7a0c4af846fd881db2a121c3d977",
".git/objects/84/359a0479d307c791393ca375ea1ac5109abaac": "592a88929dbb360c1497694ec1986a88",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/30d8548be729b6bff978d283a8c6ef0d5a06ba": "c9cc0377a6534d53666337d1ad38a3f5",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8e/8724c9c645581bb7a69a57dd24d51843849b4e": "3decfbe00547a9ae6fa1c60a67948932",
".git/objects/91/3ac7e1b80dcb438babe14d0e66bf5d430fca8c": "061658a49d635928e3f9dc8b7864aca6",
".git/objects/91/fb44f1d837646eb329ff58b3ec54b3fd9538f0": "e016422e03441148bdfa8237de628971",
".git/objects/94/bfb1463ad8331bfd687bc751b8920b133da744": "fd2d8c0d844b234856b36b93f652048f",
".git/objects/98/8dd86953a94fe1b050062080b13ea42b38cee3": "d5b228767f5747d58433ace571e2eed8",
".git/objects/a1/1f89ec28361313739776ef93c01e431711c7dc": "c1c038cfe23cb17557f251996599047e",
".git/objects/ab/219bd91bfc789638d0e0549f0d225190eff6b6": "43cc08dde8a783fb1e2b8cf757503e4f",
".git/objects/af/742adee0a85dd21ea96cbd84182e30e085d6cf": "aa25b932ec40efacb1efe27e7cf25d82",
".git/objects/b5/0254288cc6319d153c4af1d64870d95ee2436f": "468a6506934a07c970a4739eae75eedd",
".git/objects/b5/7a5636dec78e350c629f9858c05656d29129c2": "8a0f656363f958bc2f041657f55d16a2",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b8/1aab8d0f35349e53e43887df3c16282c10230e": "14ae20ce167b6eca4afc76e49cd48c19",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/bd/f82cea914bc107874b69fc0ae9d00b067721ea": "de932a72bf0d0c3970e55993bd5a6c00",
".git/objects/be/10e6515d019fa52f003f5442f18b34db84a603": "b5dd0e01588570181be42640b898978d",
".git/objects/bf/123709c5eba577dc183bff9831a302410c017e": "47420afde509633b32c3b017f275cf1d",
".git/objects/c1/ba9df510ab58c861ad8eff88d94ad07ed9ee34": "1f7e495d1dd0ab8e2a5519dcdf8819d6",
".git/objects/c2/e5b9411319130984e6dd874e06ef2b442083f7": "40abe94be37656fb31a5d63684688a66",
".git/objects/c5/f4bc2a4da91586f3005813077f0d0aa9040f82": "3191028b787554cee4652f5050144bff",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d4/9c6a9bce2be375571a208a81f4417f3cf45a22": "79d14738e51fc0f66a3f2890584e1950",
".git/objects/d4/a90f3cf449194db3829bcb561ef7b1b0dac342": "45a2cb7bcf2f9c6ee7b239ba58d785e8",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d7/2c11112c7cb4e2ce754bc41470f9b829a2d00a": "d7280a766a5d6033f187d874a92b5ad6",
".git/objects/d7/4121fc59a9ce5e43d9b396b3541d8f7c62c476": "434bd235d6c5b0d86af8a3ce6ee85cae",
".git/objects/df/7d2dcb89ab89da87467c0e1059b38c8d8f9296": "a44162ff357b024e4638ab18a9bb01c7",
".git/objects/e1/3cc1286b4ad7e6cb55412eaff75f51428f8dec": "127cbd53bd4ed31ac9844d406a56ff2e",
".git/objects/e4/99f7fad6413af7a9cd54b14cc4be5d061b4f04": "8f390a9247f87567beab65db666db6e5",
".git/objects/e6/b745f90f2a4d1ee873fc396496c110db8ff0f3": "2933b2b2ca80c66b96cf80cd73d4cd16",
".git/objects/e8/2c5850db3a3482d0c954a4dc122c02de555ce7": "d357cd906b3805bf81477f5527cca086",
".git/objects/e8/903a1653839e7cc059ffab7837a61981a8a4b2": "0843cca7c75c900c1069bc07702c7da2",
".git/objects/ea/22456158017b323d7190aaebe417674be0fccd": "d60f63592ab80ac5c81cfa6996b33a0c",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f2/7e80c51e9596719d3baadd3484ac012e7b0fe2": "5c28ac1ebe1ad089a09827b77719e33f",
".git/objects/f3/ab7b3289996f36d313aa6c55af0faa880328ed": "bf512060473121f7b7d7ca5171f130ba",
".git/objects/fd/92b9a98e1f42bb886b2b86e3d9c3555373f9d7": "9d73953032639a7722bcb02bc8f3f2bf",
".git/refs/heads/web": "1dd2c47bb58319a11699182f073da1ff",
".git/refs/remotes/origin/web": "1dd2c47bb58319a11699182f073da1ff",
"assets/AssetManifest.bin": "844c1dc9dc011aa162a88c88c449c8dc",
"assets/AssetManifest.bin.json": "9ba90b753f728fe9824044f79ca65a37",
"assets/AssetManifest.json": "77b3b856ae7cec9afde41ae20e19081f",
"assets/assets/fonts/earthorbiterxtrabold.ttf": "6c6525aaf6b7fd536ef898f860ffcd36",
"assets/assets/fonts/Quicksand-Bold.ttf": "c1d0f36c2c3c71055c35da08abfe6240",
"assets/assets/fonts/Quicksand-Light.ttf": "59c8fe4fee561694c7207d0958b70c21",
"assets/assets/fonts/Quicksand-Medium.ttf": "30b2cad3af7f2ca3686bbb94d8c767db",
"assets/assets/fonts/Quicksand-Regular.ttf": "f09f5fb975956d636590164e9491d874",
"assets/assets/fonts/Quicksand-SemiBold.ttf": "60683c595c4de500713906b9ccf1e2ab",
"assets/assets/image/app_archer_image.png": "60a2e67ac86202f726876d9904bfb73e",
"assets/assets/image/demo_image.jpg": "cacb73f01c29b9b29d9e2fb5e10da2b8",
"assets/FontManifest.json": "1fa0ffd6cfd4cdf1e006bd50fb190239",
"assets/fonts/MaterialIcons-Regular.otf": "f54a3498c9083290a3ea1e107ff26f66",
"assets/NOTICES": "19d74ebb30430c6bccf9b0fd804f317c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "183a176829babe5547155bf7ce07f5de",
"/": "183a176829babe5547155bf7ce07f5de",
"main.dart.js": "5c558f4ebeeb3aa1572cc7c0df4b1c81",
"manifest.json": "015c6ae4a1e92a4cc441a9eccefe97dc",
"version.json": "a3e8fdab49b784fc2dd45ba7e9e2bd2e"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
