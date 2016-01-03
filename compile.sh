sudo apt-get install libt1-dev
sudo apt-get install libgmp-dev

ln -s /usr/include/x86_64-linux-gnu/gmp.h /usr/include/gmp.h 

mkdir $HOME/php7
cd $HOME/php7
git clone https://git.php.net/repository/php-src.git

cd php-src
./buildconf
./configure \
    --prefix=$HOME/php7/usr \
    --with-config-file-path=$HOME/php7/usr/etc \
    --enable-mbstring \
    --enable-zip \
    --enable-bcmath \
    --enable-pcntl \
    --enable-ftp \
    --enable-exif \
    --enable-calendar \
    --enable-sysvmsg \
    --enable-sysvsem \
    --enable-sysvshm \
    --enable-wddx \
    --with-curl \
    --with-mcrypt \
    --with-iconv \
    --with-gmp \
    --with-pspell \
    --with-gd \
    --with-jpeg-dir=/usr \
    --with-png-dir=/usr \
    --with-zlib-dir=/usr \
    --with-xpm-dir=/usr \
    --with-freetype-dir=/usr \
    --with-t1lib=/usr \
    --enable-gd-native-ttf \
    --enable-gd-jis-conv \
    --with-openssl \
    --with-mysql=/usr \
    --with-pdo-mysql=/usr \
    --with-gettext=/usr \
    --with-zlib=/usr \
    --with-bz2=/usr \
    --with-recode=/usr \
    --with-mysqli=/usr/bin/mysql_config
    
    make
    make install
    
    mkdir $HOME/php7/usr/etc
    
    $HOME/php7/php-src/sapi/cli/php -v
