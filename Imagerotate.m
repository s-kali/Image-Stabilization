% This program rotates given image.!

% Görüntünün girilmesi ve gösterimi.
im = imread('Image.png');
figure, imshow(im);

% Rotasyon matrisinin oluşturulması.
R_rot = R_x(0.5)*R_y(-9)*R_z(-13);

R_2d  = [   R_rot(1,1)  R_rot(1,2) 0; 
            R_rot(2,1)  R_rot(2,2) 0;
            0           0          1];
% 2D geometrik dönüşüm.
tform = affine2d(R_2d);  

% Geometrik dönüşümün görüntüye uygulanması.
outIMG = imwarp(im,tform);
figure, imshow(outIMG);
figure, imshowpair(im,outIMG,'montage');

filename = 'Rotated_Image.png';
fullname = fullfile('C:\Users\Süha\Documents\MATLAB',filename);
imwrite(outIMG,fullname);


% Rotasyon matris fonksiyonları %
%% Yaw hareketi için Matrix, Z-ekseninde dönme
function [R] = R_z(alfa)
    R = [cosd(alfa) -sind(alfa) 0;
         sind(alfa)  cosd(alfa) 0;
         0          0         1];
end
%% Pitch hareketi için Matrix, Y-ekseninde dönme
function [R] = R_y(theta)
    R = [cosd(theta)    0   sind(theta);
         0              1   0          ;
         -sind(theta)   0   cosd(theta)];
end
%% Roll hareketi için Matrix, X-ekseninde dönme
function [R] = R_x(okta)
    R = [1  0             0;
         0  cosd(okta)   -sind(okta);
         0  sind(okta)    cosd(okta)];
end