% Bu script iOS cihazı üzerinde fotograf cekip sensör verilerini oa üzerine
% kayıt eder.
clear m;
clear mobiledev;
clear cam;
%mobil cihaz bağlantısı.
m=mobiledev;
%kamera baglantısı ve ayarları.
cam = camera(m,'back');
cam.Resolution = '1280x720';
cam.Autofocus ='on';
%Loggings kullanılarak sensor verileri tutulabilir.
m.Logging = 1;
clear orientlog;
%Snapshot kullanılarak cihaz üzerinden fotograf cekilmesi saglanır.
[img,t] = snapshot(cam,'immediate');
%Mevcut euler acılarının tutulması saglanır.
[oa, ta] = orientlog(m);
%Imaj dosyasının kayıt islemi
filename = 'Image.png';
fullname = fullfile('Published',filename);
imwrite(img,fullname);