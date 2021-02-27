# Image-Stabilization
Image Stabilization using MATLAB

Proje kamera ile görüntü alırken oluşabilen titreme, kayma gibi sorunları kullanılan kameranın veya kameranın bağlı olduğu platformun bağlı olduğu sensörler aracılığıyla görüntü yakalanırken oluşan Euler açılarını alarak görüntünün bilgisayar ortamında stabil hale getirilmesi amaçlanmıştır.

Proje MATLAB ortamı üzerinde gerçekleştirilecek olup, çapraz platformlardan da yararlanılmıştır. Kamera olarak Iphone 11 cihazı ve sensör olarak yine aynı cihazın sensörleri kullanılmıştır. Bu sensör ve kamera verileri MATLAB Mobile uygulaması ile imagesensorgrab.m scripti kullanılarak kayıt altına alınmıştır.

MATLAB kullanılarak ‘Imagerotate.m’ scripti yazılıp, çalıştırılmıştır. Bu script kullanılarak ilk ve kamera üzerinde çekim yapılırken alınan sensörlerin fark değeri alınarak kamerada sallanma hareketi ile oluşan Euler açıları alınıp yine bu açılar yardımıyla Rotasyon Matrisleri oluşturulmuştur.

Bu rotasyon matrisleri görüntü dosyasını ifade eden matris çarpılıp, yeni görüntü elde edilip bu iki görüntü aynı figür üzerinde gösterilmesi ile proje sonlandırılmıştır.

![Image](https://user-images.githubusercontent.com/79456608/108714720-f4bc7600-752a-11eb-9055-20c200a8cc02.png)
Orijinal Görüntü
![Rotated_Image2](https://user-images.githubusercontent.com/79456608/108716016-a4461800-752c-11eb-8df8-39bfb5f4e80f.png)
Rotasyon matrisi ile çarpılıp oluşturulmuş olan görüntü.
![Rotated_Image_ZOOM](https://user-images.githubusercontent.com/79456608/108716080-b922ab80-752c-11eb-9689-a8eeab6ce0eb.png)
Düzenlenmiş görüntü kırpılmış hali.

Görüntü oluştuktan sonra rotasyon işlemi sonucu, görüntünün orijinal karesinin dışına taşılır. Görüntü oluştuktan sonra yakınlaştırarak bu sorun giderilebilir ancak görüntü sonuç itibariyle çözünürlük kaybı yaşar.
