'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "c3fa173a227024163c99421459edbdba",
".git/config": "a4c86f60fba3ac435b34f7c81fcc47f4",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "f9eb9636df8ee68a980257f29a5c696f",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
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
".git/index": "58e06e7e5ab41fdb569f40cca5a1e217",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "dd8e02d4474c3253050e2557313ebd38",
".git/logs/refs/heads/main": "dd8e02d4474c3253050e2557313ebd38",
".git/logs/refs/remotes/origin/main": "213fad18de77e6db8cbe40370572c92f",
".git/objects/00/19a3669c6f9a224460dca05e0467d9b00acb60": "0ba5b9ead1d9d4db956df4a18cbcfb52",
".git/objects/04/12472911360ba3dcef5181a2d5072eea49a551": "85c5f697656183c51043a35a862da143",
".git/objects/11/ebe0abf0e894a859e0fb58e7eae195cda45183": "a448adc1da0456db701dc50d773d932a",
".git/objects/17/723b4b4487c22fd4a25a33cf7d69076ce259ce": "c8217bd8244e40ecbf5efdd8f244a250",
".git/objects/18/7ab6a89ca7b1a7361a27f20965af387aa65376": "9b82775b9508b1e061285d1c0019e147",
".git/objects/1a/b847b818dec389fb43fb9da80637c02e27d3d3": "8af286f2a069534106d53e8c037b0a4a",
".git/objects/21/7b7b0be9ff3ff304542fe88e435fa0b357717d": "62d0a582ad9e3c76131ee933283b48f5",
".git/objects/29/8ce1fd56dd5f2b2a51046f23c64da74a5398f7": "3c4c1467df84866f3c85ae181f906a02",
".git/objects/2b/330ede24dadb0b6a5393d8309e15ae6af9eb27": "36e19d24f659ee63cc9eef0f8e544516",
".git/objects/2d/0471ef9f12c9641643e7de6ebf25c440812b41": "d92fd35a211d5e9c566342a07818e99e",
".git/objects/30/443420da233de9eb7fc0dec46e8d587cde397d": "ccbd0933424479e2622e558ba34299fb",
".git/objects/36/a6550b063839b2b379145103e32d3b2ecdec24": "79de43e252b72a24eb508a9474f751fd",
".git/objects/3c/b3b53a24ee4712b8463133dca203ddd72fb43b": "c3066eae2c84f5465b93f0624f5ecfa6",
".git/objects/3e/425f73b3a50c0cc9adf0f21cb3385fe8f94f95": "b6ab7018c69f3ea62ba318483e7bc6c8",
".git/objects/3e/53a9a267e3ab93041e98758f0f3eb00d45d5b7": "c265d5618f7af4203adfa8895a1f37a6",
".git/objects/3f/7682a6e830e34f27e98a37d386fa63b2985df4": "1acac7a08041d4c873c649de6751474c",
".git/objects/3f/c12b0b19f9881151ff0477b10530370add5c47": "bd533f1a6d1fad5df37cc654238c88f2",
".git/objects/41/6b6946c0773a50d4032a055c92d0fa28c37e92": "1b12b66befd1ad3865521b9165b98728",
".git/objects/45/d365e6841576a781b5ffdbb0713e6c7799585e": "03065c8fbe378d677fe56b5b476dc591",
".git/objects/4b/825dc642cb6eb9a060e54bf8d69288fbee4904": "75589287973d2772c2fc69d664e10822",
".git/objects/53/71606466151b700b1ca8e7f16a48f59425f55e": "1a92f428821ce6c2140bf577c8a96c0d",
".git/objects/5a/465a210a2d01e14d9808db532b060b646af6fd": "e9a73c26936d0e9c42be1f4e6221b028",
".git/objects/5f/b736ff55b0b339acd646f933ec024c3dd103bb": "0c7cd029525abfede024ec49b9f2262a",
".git/objects/60/9619efe653b2930f843999579125f3944800d5": "5afeecfdca25a6420cf454af43f78f2a",
".git/objects/65/b384c04ef7ee9fb9b7582b77377280c5d64cd5": "88422bbb2bc42436f8f242eb59c23af7",
".git/objects/6c/4ef4fc5fde69d019100dca0c11910449d683ea": "a1d325491e57e04dbbf352dfa8154add",
".git/objects/74/dac8e70dcb9050f9215962378cdc26a65cb331": "d2598d3ae6f633202bde9c1129e13302",
".git/objects/78/029f58022df22f818285e36b5074b52ce2b19f": "7a37fc1177a2979e69125025f055d300",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7c/fb6f962bdb8c4b610bb1bb25b6c4361f9d20e8": "20235224869b650fc9ceb371e56bb5c9",
".git/objects/7d/60e3e16c3167b6d4a68ac87039c3c0322b7de7": "cc7e9d87ff26099918199649ec63ff0e",
".git/objects/84/0d828d2acf9843218dce8567e78d28d61d4dae": "d74193eb5ba229dccf40cdd96019d2ca",
".git/objects/85/29957bb1ec5efcd242871f48f210fa88c32eaa": "8611be4c9d376ac8b6eb28fc91422537",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8b/cec9c70ce39f80945cb8c800823ad254cf5eae": "f690013c42827d0d1a8c6e9b3b79c00f",
".git/objects/8d/4eebf20665d5ae746c622a2bd42274b54d2bf1": "1af37619c66ce985101983d9c8fa0fe3",
".git/objects/8e/522ae6e9744b70edd679fb4bed5feae06ceecc": "f0c7bc23c0cc17bee65602577ed202d4",
".git/objects/8e/82c70d1081e2857ada1b73395d4f42c2e8adc9": "26623a433e72cc0c70229cb55963874c",
".git/objects/97/8746b5424d1212460133977131fc5ef0971abb": "3cc094294d4d3275ff02b12eff5e10c3",
".git/objects/9e/47ad62791951220bfff815e56848d58927ea66": "2781f331e9b850ec901db320485149c6",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a4/ee7db597fecb322dc7ebdc9cee6207a0c22986": "0cbc6992200365e02245cae6b527edf0",
".git/objects/a7/7f98757ca3f621c194d1dd785352e1b1836b5f": "61eda2ef2ed0416bf316a208d3fccab7",
".git/objects/ac/dff003233d90b91aebe67dcd38d5049aacda7b": "6fea100e06e06948e49143e92be1a8dd",
".git/objects/ad/28649412e6e5adf2a81d089452165b439d4499": "6b500e7364a5b7a17ac39f723d81ac2a",
".git/objects/ad/8776e271b8a8b78ff1168da374bbfead61cc18": "4044989ad4accc9298814bf81e6da2a3",
".git/objects/ae/c6b9ab54efc3c131dfb42c4c54df6a60b6a1d1": "5012e50e0afc04d606caa746c9882c50",
".git/objects/b0/800345ba9410149a2b816c662e51e361acac13": "429305f7a9765e2dd2348f77e328be8d",
".git/objects/b2/0bbd27553ae0e005c3e60ffda1e402a528dcbd": "6ec2044ab406a2d6ab4bbf2ed776751b",
".git/objects/b3/28f99da996ed381a5784f0ee79fa12e9c3b03a": "a29ae2901399c25b8455e35ea73d43d9",
".git/objects/b5/c8a03d38938ecde733e46c448f8f2e3920b6c4": "eada47d14f5ec48296985c1c49ee615c",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b7/d5b23e56b06a0d552da149644a0317be5dc753": "83dfc4ae2cd5cd4b5a5878348fd1f3fc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/8694621129355c3e3f1b4a2a0268868d2ecdda": "fd9d40548dae2a1ab0a2af72e7a601a6",
".git/objects/bb/1a94df5373e4c47811a845f9c92193cd939383": "90e778210c1f52b8043267d47cf1e7d6",
".git/objects/bb/f6aa66f04733acadf9f99b7363275db9e12397": "91149ea77be91071db79c3db0c619677",
".git/objects/bd/40374dbc932abb5415eb75dcd99fba4eb5c774": "19b84a4bcc44d9fe1a1bbfd977e60343",
".git/objects/c1/0a3af850288a45d9dc63905bbdd9a3564a41e9": "27f6e09ca154973b396eab27d646960d",
".git/objects/c4/a6118df6408fb3b565c1a6ef5a1a311a03f1b4": "db96ca9dc65e7e71bb8276c495b4f122",
".git/objects/c5/13cb1ea4c3491ec529a7f2f29d9e255c541daa": "2d1abac36705202485c40e476724ec71",
".git/objects/c5/404ee082ed4b4618925753e7b1d7efd00940ba": "193fef377349480411cc438218ee472b",
".git/objects/c7/85ba21e23c34ea3ef60bee2705d97d5dfdb6a5": "75f632b5d4bf5fc40cf381446751e40f",
".git/objects/c9/7fcb3872ae45b77e0fdbe4bc7c25884ece60cc": "e3e98190f223361ec6f08e18fa1e233b",
".git/objects/ca/570fe5011b597796cf090f27df53834d39ede2": "325c60f78419ef497f39430a20e51cba",
".git/objects/cc/5725b315760d100f6386e6bbf09af8fe57a9f1": "29c19352d2bee0821600856656c95791",
".git/objects/cc/648404753417666f1fc121d452866c14b98f86": "c460b306ee5bc2703192ec8e2c38b1d6",
".git/objects/cd/22076013ce8b84475eae9bb4cd6c60b5460fbe": "81c620e2d6cbe5638d6c90ee25886389",
".git/objects/cd/6a11e14b782bb01aea486a74aef2140d9f5a3d": "e24208d9b2e5f0314c1cebb6a36d8015",
".git/objects/ce/d45e50b114f798f8b186e5296e8e2f882c94b6": "91b14895766d32d7c3e4ac12494e1898",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/dd/fcdb8803eb703a5f27b05fab1a2b8c14e0b439": "8055f3e550074112b3f2273fb1db4819",
".git/objects/de/22b426a81aa6816874f743b4f36c640ef5d800": "3c4d61ea9c4f57ee3601bab5162c3cad",
".git/objects/de/28db843d7df6ed23b8a7526f6b6b4a83425fe7": "797e4f7b3d8dced098c51679ff33e848",
".git/objects/de/a75e28cbd5c45c09e80b27be70bd8001caea5e": "625022263a988910d1792f2b3e8abd0a",
".git/objects/e0/2012ca0a73da86edd7614aebdc24f350669305": "4cb516f7f367eb8387729d8cfc7cf9b2",
".git/objects/e1/c273873a477a275540b3e60511e45c18fb4dcc": "7263b76d35ea2cba8a52abe971cb5f39",
".git/objects/e4/7a879b13c76589f05222831f9404f4fe9a0f8d": "4d6140bc2d4afede1b74b57ebe7ac202",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e6/67096c9f2494f3f8bac9f1081794a2b45f93e2": "c8568226aba0385f8ec331273d8ab7e8",
".git/objects/ea/27fe423bc8f2beadfdf4cf5a9a53997024cfef": "a68da8f48909178804b403a8be90f999",
".git/objects/eb/69aefdd530d973950a3b322de4efd2d684c627": "7314ae0769384ca182cbc7e7d67e701a",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/fd/ecc04bcc614ecf0dcf27c0510d538aabe4dd37": "6485ba2a94022a4ec2d0d1161ebe3529",
".git/objects/ff/2bb70526a57de3b4ce23c9fa40dacf193eb5a3": "da8da2ea967b03febabb9625d2380f86",
".git/ORIG_HEAD": "5429743c7759b77ae38215a38f0e7e04",
".git/refs/heads/main": "5429743c7759b77ae38215a38f0e7e04",
".git/refs/remotes/origin/main": "5429743c7759b77ae38215a38f0e7e04",
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
"assets/NOTICES": "a9c2d07150e333fd983a4e34f26ba815",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "e7006a0a033d834ef9414d48db3be6fc",
"assets/shaders/ink_sparkle.frag": "ae6c1fd6f6ee6ee952cde379095a8f3f",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "10c8c06149e43c198c5ff294469a09ca",
"/": "10c8c06149e43c198c5ff294469a09ca",
"main.dart.js": "9b0cfa73b10448dc3ef918bb2356ee21",
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
