---
description: Team Fortress 2'yi ve mastercomfig'i başlatma seçenekleriyle hassas biçimde ayarlayın.
...

# Başlatma Seçenekleri

Steam kütüphanenizde Team Fortress 2'ye sağ tıklayın ve **Özellikler...** kısmını açın. Açılan pencerede, **Başlatma Seçenekleri** yazısının altında bulunan
her şeyi silin ve

```c
-novid -nojoy -nosteamcontroller -nohltv -particles 1 -precachefontchars
```

seçeneklerini kutuya yapıştırın.

İsteğe bağlı başlatma seçenekleri ve size uygun DXLevel komutunu seçmek için aşağıyı okuyun.

## DXLevel Başlatma Seçenekleri

=== "Windows"

     * **-dxlevel 90** : DirectX 9, Pixel Shader 2.0b. Yarı modern görselleştirme yöntemlerini kullanırken daha düşük grafik kalitesi sunar.
     * **-dxlevel 100** : DirectX 9+, Pixel Shader 3.0. En yüksek grafik kalitesi. Grafik özelliklerini belirlemek için donanımı kullanır. (önerilen)

=== "macOS"

    DXLevel oyun tarafından otomatik olarak belirlenir ve değiştirilemez.

=== "Linux"

    DXLevel oyun tarafından otomatik olarak belirlenir ve değiştirilemez.

## Önerilen Başlatma Seçenekleri

`-novid -nojoy -nosteamcontroller -nohltv -particles 1 -precachefontchars`

- **-novid** : Valve başlangıç logosunu devre dışı bırakır, zaman kazandırır.
- **-nojoy** : Joystick sisteminin başlatılmasını durdurur; daha hızlı başlangıç ve daha az bellek kullanımı.
- **-nosteamcontroller** : Steam kontrolcüsünü devre dışı bırakır; daha hızlı başlangıç, daha az bellek kullanımı ve daha az girdi çakışması.
- **-nohltv** : SourceTV barındırmayı devre dışı bırakır; daha az kaynak kullanımı.
- **-particles 1** : Işın sayısını minimum 512 ile sınırlar.
- **-precachefontchars** : Ortak karakterler için yazı tipi oluşturmayı önbelleğe alır.

## Ek Başlatma Seçenekleri

=== "Windows"

    * **-console** : Başlangıçta konsolu gösterir.
    * **-nostartupsound** : Ana menüde oyun müziğini kapatır.
    * **-enablefakeip** : Güvenlik içindir. Yerel sunucunuzun genel IP'sini Steam'e kaydetmesini bunun yerine Steam Datagram kullanarak önler. Eşya sunucularına bağlanmak için birkaç gönderim yüklemesi gerektirebilir.
    * **-no_texture_stream** : Doku akışını devre dışı bırakır. Hızlı doku erişimi olan ve görüntü belleğinin baskısında olmayan güçlü bir sisteminiz varsa kullanışlıdır.
    * **-autoconfig** : Grafik kalitesini donanımınız için önerilene sıfırlar. None Ön Ayarı ile kullanışlı olarak çalışır. İlk başlatmadan sonra kaldırın.
    * **-freq x** : Yenileme hızını, TF2 otomatik olarak algılamadığında belirlenen değer için zorlar. Örneğin, 144hz bir monitörünüz varsa `-freq 144` için x 144 olmalıdır.

=== "macOS"

    * **-console** : Başlangıçta konsolu gösterir.
    * **-nostartupsound** : Ana menüde oyun müziğini kapatır.
    * **-enablefakeip** : Güvenlik içindir. Yerel sunucunuzun genel IP'sini Steam'e kaydetmesini bunun yerine Steam Datagram kullanarak önler. Eşya sunucularına bağlanmak için birkaç gönderim yüklemesi gerektirebilir.
    * **-no_texture_stream** : Doku akışını devre dışı bırakır. Hızlı doku erişimi olan ve görüntü belleği baskısında olmayan güçlü bir sisteminiz varsa kullanışlıdır.
    * **-autoconfig** : Grafik kalitesini donanımınız için önerilene sıfırlar. None Ön Ayarı ile kullanışlı olarak çalışır. İlk başlatmadan sonra kaldırın.
    * **-displayindex x** : Monitörü belirlenen ekran dizininde kullanır. `1` ile başlar. `0` ana (ve varsayılan) ekrandır.
    * **-snd_openal** : Mac Audio Queue yerine gecikmeyi azaltabilen ve gelişmiş ses efektleri sağlayan OpenAL arabirimini kullanır. :warning: Valve tarafından desteklenmediği için **deneyseldir**.
    * **-glslcontrolflow** : GLSL kontrol akışı için destek sağlar. Bu, 4 dünya aydınlatması kullanımına olanak verir. :warning: Görselleştirme sorunlarına neden olabileceği için **deneyseldir**.
    * **-glmenableclipplanes** : Performansı düşüren AMD sürücü onarımını devre dışı bırakmak için kullanılır. :warning: Çökmelere neden olabileceği için **deneyseldir**.

=== "Linux"

    * **-console** : Başlangıçta konsolu gösterir.
    * **-nostartupsound** : Ana menüde oyun müziğini kapatır.
    * **-enablefakeip** : Güvenlik içindir. Yerel sunucunuzun genel IP'sini Steam'e kaydetmesini bunun yerine Steam Datagram kullanarak önler. Eşya sunucularına bağlanmak için birkaç gönderim yüklemesi gerektirebilir.
    * **-no_texture_stream** : Doku akışını devre dışı bırakır. Hızlı doku erişimi olan ve görüntü belleği baskısında olmayan güçlü bir sisteminiz varsa kullanışlıdır.
    * **-autoconfig** : Grafik kalitesini donanımınız için önerilene sıfırlar. None Ön Ayarı ile kullanışlı olarak çalışır. İlk başlatmadan sonra kaldırın.
    * **-displayindex x** : Monitörü belirlenen ekran dizininde kullanır. `1` ile başlar. `0` ana (ve varsayılan) ekrandır.

## Az Kullanılan Başlatma Seçenekleri

Kullanıcıların büyük çoğunluğunun bu başlatma seçeneklerini kullanması gerekmemektedir ama ihtiyacı olan kişiler için burada bulunmaktadırlar.

- **-nouserclip** : Donanım kullanıcı kırpma düzlemleri yerine yazılım kırpma kullanır; FPS artışı ya da azalması CPU+GPU'nuza ve grafik API'nize bağlıdır.
- **-nosound** : Sesi devre dışı bırakır.
- **-small** : Çözünürlüğün 640x480'den küçük olmasına olanak tanır.
