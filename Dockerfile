FROM richarvey/nginx-php-fpm

MAINTAINER Owen Ouyang <owen.ouyang@live.com>

RUN apk add --update --no-cache \
	php5-apcu \
	php5-xcache \
	perl \
	asciidoc \
	aspell-devel \
	bzip2 \
	dblatex \
	dbus-x11 \
	docbook-style-dsssl \
	firefox \
	gcc \
	gcc-c++ \
	gd-devel \
	git \
	gmp-devel \
	graphviz \
	jade \
	java-1.7.0-openjdk \
	lynx \
	make \
	memcached \
	mod_perl \
	mod_perl-devel \
	openssl-devel \
	passwd \
	patch \
	perl-App-cpanminus \
	perl-CPAN \
	perl-core \
	postfix \
	python-sphinx \
	sudo \
	supervisor \
	tar \
	texlive-cmap \
	texlive-cyrillic \
	texlive-framed \
	texlive-mdwtools \
	texlive-parskip \
	texlive-tex4ht \
	texlive-threeparttable \
	texlive-ucs \
	texlive-wrapfig \
	tigervnc-server-minimal \
	unzip \
	zip \
	vim-enhanced \
	wget \
	xmlto && \
	cpan --quiet --notest --skip-satisfied FCGI && \
	cpan --quiet --notest --skip-satisfied FCGI::ProcManager && \
	cpan --quiet --notest --skip-satisfied XML::Feed && \
	cpan --quiet --notest --skip-satisfied Software::License && \
	cpan --quiet --notest --skip-satisfied HTML::FormatText::WithLinks && \
	cpan --quiet --notest --skip-satisfied DBD::mysql && \
	cpan --quiet --notest --skip-satisfied JSON::XS && \
	cpan --quiet --notest --skip-satisfied Test::WWW::Selenium && \
	cpan --quiet --notest --skip-satisfied Pod::Coverage && \
	cpan --quiet --notest --skip-satisfied Pod::Checker && \
	cpan --quiet --notest --skip-satisfied                     CGI.pm && \
	cpan --quiet --notest --skip-satisfied                 Digest-SHA && \
	cpan --quiet --notest --skip-satisfied                   TimeDate && \
	cpan --quiet --notest --skip-satisfied                   DateTime && \
	cpan --quiet --notest --skip-satisfied          DateTime-TimeZone && \
	cpan --quiet --notest --skip-satisfied                        DBI && \
	cpan --quiet --notest --skip-satisfied           Template-Toolkit && \
	cpan --quiet --notest --skip-satisfied                 Email-Send && \
	cpan --quiet --notest --skip-satisfied                 Email-MIME && \
	cpan --quiet --notest --skip-satisfied                        URI && \
	cpan --quiet --notest --skip-satisfied             List-MoreUtils && \
	cpan --quiet --notest --skip-satisfied          Math-Random-ISAAC && \
	cpan --quiet --notest --skip-satisfied                   JSON-RPC && \
	cpan --quiet --notest --skip-satisfied                 Test-Taint && \
	cpan --quiet --notest --skip-satisfied                  SOAP-Lite && \
	cpan --quiet --notest --skip-satisfied                 Test-Taint && \
	cpan --quiet --notest --skip-satisfied                       JSON && \
	cpan --quiet --notest --skip-satisfied              HTML-Scrubber && \
	cpan --quiet --notest --skip-satisfied                   XML-Feed && \
	cpan --quiet --notest --skip-satisfied                     DBD-Pg && \
	cpan --quiet --notest --skip-satisfied                  DBD-mysql && \
	cpan --quiet --notest --skip-satisfied                 DBD-SQLite && \
	cpan --quiet --notest --skip-satisfied                 DBD-Oracle && \
	cpan --quiet --notest --skip-satisfied                         GD && \
	cpan --quiet --notest --skip-satisfied                      Chart && \
	cpan --quiet --notest --skip-satisfied                Template-GD && \
	cpan --quiet --notest --skip-satisfied                 GDTextUtil && \
	cpan --quiet --notest --skip-satisfied                    GDGraph && \
	cpan --quiet --notest --skip-satisfied                 MIME-tools && \
	cpan --quiet --notest --skip-satisfied                libwww-perl && \
	cpan --quiet --notest --skip-satisfied                   XML-Twig && \
	cpan --quiet --notest --skip-satisfied                PatchReader && \
	cpan --quiet --notest --skip-satisfied                  perl-ldap && \
	cpan --quiet --notest --skip-satisfied                Authen-SASL && \
	cpan --quiet --notest --skip-satisfied               Net-SMTP-SSL && \
	cpan --quiet --notest --skip-satisfied                 RadiusPerl && \
	cpan --quiet --notest --skip-satisfied                  SOAP-Lite && \
	cpan --quiet --notest --skip-satisfied                XMLRPC-Lite && \
	cpan --quiet --notest --skip-satisfied                   JSON-RPC && \
	cpan --quiet --notest --skip-satisfied                    JSON-XS && \
	cpan --quiet --notest --skip-satisfied                 Test-Taint && \
	cpan --quiet --notest --skip-satisfied                HTML-Parser && \
	cpan --quiet --notest --skip-satisfied              HTML-Scrubber && \
	cpan --quiet --notest --skip-satisfied                     Encode && \
	cpan --quiet --notest --skip-satisfied              Encode-Detect && \
	cpan --quiet --notest --skip-satisfied                Email-Reply && \
	cpan --quiet --notest --skip-satisfied  HTML-FormatText-WithLinks && \
	cpan --quiet --notest --skip-satisfied                TheSchwartz && \
	cpan --quiet --notest --skip-satisfied             Daemon-Generic && \
	cpan --quiet --notest --skip-satisfied                 File-Slurp && \
	cpan --quiet --notest --skip-satisfied                   mod_perl && \
	cpan --quiet --notest --skip-satisfied           Apache-SizeLimit && \
	cpan --quiet --notest --skip-satisfied              File-MimeInfo && \
	cpan --quiet --notest --skip-satisfied                 IO-stringy && \
	cpan --quiet --notest --skip-satisfied                mod_headers && \
	cpan --quiet --notest --skip-satisfied                mod_expires && \
	cpan --quiet --notest --skip-satisfied                    mod_env

asciidoc \
aspell-devel \
bzip2 \
dblatex \
dbus-x11 \
docbook-style-dsssl \
firefox \
gcc \
gcc-c++ \
gd-devel \
git \
gmp-devel \
graphviz \
jade \
java-1.7.0-openjdk \
lynx \
make \
memcached \
mod_perl \
mod_perl-devel \
mysql-community-devel \
mysql-community-server \
openssl-devel \
passwd \
patch \
perl-App-cpanminus \
perl-CPAN \
perl-core \
postfix \
python-sphinx \
sudo \
supervisor \
tar \
texlive-cmap \
texlive-cyrillic \
texlive-framed \
texlive-mdwtools \
texlive-parskip \
texlive-tex4ht \
texlive-threeparttable \
texlive-ucs \
texlive-wrapfig \
tigervnc-server-minimal \
unzip \
vim-enhanced \
wget \
xmlto \

CMD ["/start.sh"]
