cat common/start

cat <<\EOF
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    <a>Download <small>BlackArch Linux Resources</small></a>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Downloads</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <!-- Sidebar Column -->
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#iso-download" class="list-group-item active">Live ISOs</a>
                    <a href="#install-repo" class="list-group-item">Installing on top of ArchLinux</a>
                    <a href="#install-iso" class="list-group-item">Installing from ISO</a>
                    <a href="#blackarch-arm" class="list-group-item">ARM</a>
                    <a href="#mirror-list" class="list-group-item">Mirrors</a>
                </div>
            </div>
            <!-- Content Column -->
            <div class="col-md-9">
                <p>
				    Here you will find official BlackArch Linux downloads and installation instructions.
                </p>
                <hr />
                <br />
                <div class="panel panel-default text-left">
                    <a name="iso-download"></a>
                    <div class="panel-heading">
                        <b>Live ISOs</b>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <p>
							    The following list contains official BlackArch live and netinstall ISO images. You can burn these images to DVDs and flashdrives.
                            </p>
							<p>
                                The live ISO contains a complete, functional BlackArch Linux system. The netinstall ISO is a lightweight image for bootstrapping machines.
							</p>
							<p>
							    If possible, please try to use a mirror near you to download the ISOs. You can find a <a href="#mirror-list">list of mirrors</a> below.
						    </p>
                            <hr />
                            <table style="table-layout:fixed;overflow:hidden">
                                <col width="260px" />
                                <col width="100px" />
                                <col width="80px" />
                                <col width="80px" />
                                <col />
                                <tr>
                                    <td style="padding-bottom:5px" align="left"><b>Image</b></td>
                                    <td align="left"><b>Version</b></td>
                                    <td align="left"><b>Torrent</b></td>
                                    <td align="left"><b>Size</b></td>
                                    <td align="left"><b>SHA1sum</b></td>
                                </tr>
                                <tr>
                                    <td align="left"><a href="http://www.mirrorservice.org/sites/blackarch.org/blackarch/iso/blackarchlinux-live-2015.07.31-x86_64.iso">BlackArch Linux 64 bit Live ISO</a></td>
                                    <td align="left">2015.07.31</a></td>
                                    <td align="left"><a href="/blackarch/torrent/blackarchlinux-live-2015.07.31-x86_64.iso.torrent">Torrent</a></td>
                                    <td align="left">4.4 GB</td>
                                    <td align="left" style="font-size:13px">cc9993cb4fae4c6674301d3440ef5b7c8cfdd9d6</td>
                                </tr>
                                <tr>
                                    <td align="left"><a href="http://www.mirrorservice.org/sites/blackarch.org/blackarch/iso/blackarchlinux-live-2015.07.31-i686.iso">BlackArch Linux 32 bit Live ISO</a></td>
                                    <td align="left">2015.07.31</a></td>
                                    <td align="left"><a href="/blackarch/torrent/blackarchlinux-live-2015.07.31-i686.iso.torrent">Torrent</a></td>
                                    <td align="left">4.1 GB</td>
                                    <td align="left" style="font-size:13px">92f36757a50a6b685804fc2701f5c546b54d342d</td>
                                </tr>
                                <tr>
                                    <td align="left"><a href="http://www.mirrorservice.org/sites/blackarch.org/blackarch/iso/blackarchlinux-netinst-2015.07.31-x86_64.iso">BlackArch Linux 64 bit Netinstall ISO</a></td>
                                    <td align="left">2015.07.31</a></td>
                                    <td align="left"><a href="/blackarch/torrent/blackarchlinux-netinst-2015.07.31-x86_64.iso.torrent">Torrent</a></td>
                                    <td align="left">365 MB</td>
                                    <td align="left" style="font-size:13px">823e29759b0af69bfa21ef260e518dfa2206a4b9</td>
                                </tr>
                                <tr>
                                    <td align="left"><a href="http://www.mirrorservice.org/sites/blackarch.org/blackarch/iso/blackarchlinux-netinst-2015.07.31-i686.iso">BlackArch Linux 32 bit Netinstall ISO</a></td>
                                    <td align="left">2015.07.31</a></td>
                                    <td align="left"><a href="/blackarch/torrent/blackarchlinux-netinst-2015.07.31-i686.iso.torrent">Torrent</a></td>
                                    <td align="left">328 MB</td>
                                    <td align="left" style="font-size:13px">d319b9e7af4b2666d5abff08ab8617323b7f36dc</td>
                                </tr>
                            </table>
                            <hr />
                            <p>
                                Do not use UNetBootIn to write ISO files to flashdrives. UNetBootIn modifies the bootloader configuration, which is bad.
                                You can use this instead (where /dev/sdX is your flashdrive and file.iso is a BlackArch ISO):
                            </p>
                            <div class="code-block">
                                <codecomment># Example</codecomment>
                                <br />
                                $
                                <codecmd>
                                    sudo dd bs=512M if=file.iso of=/dev/sdX
                                </codecmd>
                            </div>
                            <br />
                            <p>
                                The default login for all ISOs is:
                                <strong>root:blackarch</strong>
                            </p>
                        </li>
                    </ul>
                </div>
                <br />
                <div class="panel panel-default text-left">
                    <a name="install-repo"></a>
                    <div class="panel-heading">
                        <b>Installing on top of ArchLinux</b>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <p>
							    BlackArch Linux is compatible with existing/normal Arch installations. It acts as an unofficial user repository. Below you will find
                                instructions on how to install BlackArch in this manner.
                            </p>
                            <div class="code-block">
                                <codecomment>
                                    # Run https://blackarch.org/strap.sh as root and follow the instructions:
                                    <br />
                                </codecomment>
                                $ <codecmd>curl -O http://blackarch.org/strap.sh && sha1sum strap.sh </codecmd>
                                <br /><br />
                                <codecomment>
                                    # SHA1 sum should match: f8456229463718c097cf70ed06a806f981be7423
                                </codecomment>
                                <br />
                                $ <codecmd>sudo ./strap.sh</codecmd>
                            </div>
                            <br />
                            You may now install tools from the blackarch repository.
                            <div class="code-block">
                                <codecomment>
                                    # To list all of the available tools, run
                                </codecomment>
                                <br />
                                $ <codecmd>sudo pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u</codecmd>
                                <br /><br />
                                <codecomment>
                                    # To install all of the tools, run
                                </codecomment>
                                <br />
                                $
                                <codecmd>
                                    sudo pacman -S blackarch
                                </codecmd>
                                <br /><br />
                                <codecomment>
                                    # To install a category of tools, run
                                </codecomment>
                                <br />
                                $
                                <codecmd>
                                    sudo pacman -S blackarch-&lt;category&gt;
                                </codecmd>
                                <br /><br />
                                <codecomment>
                                    # To see the blackarch categories, run
                                </codecomment>
                                <br />
                                $
                                <codecmd>
                                    sudo pacman -Sg | grep blackarch
                                </codecmd>
                            </div>
                            <p>
                            <br />
                                As part of an alternative method of installation, you can build the blackarch packages from source.
                                You can find the PKGBUILDs <a href="https://github.com/BlackArch/blackarch" target="_blank">on github</a>.
                                To build the entire repo, you can use the blackman tool.
                            <br />
                            </p>
                            <div class="code-block">
                                <codecomment>
                                    # First, you must install blackman. If the BlackArch package repository is setup on your machine,
                                    <br />
                                    # you can install blackman like:
                                </codecomment>
                                <br />
                                $
                                <codecmd>
                                    sudo pacman -S blackman
                                </codecmd>
                                <br /><br />
                                <codecomment>
                                    # Download, compile and install package:
                                </codecomment>
                                <br />
                                $
                                <codecmd>
                                    sudo blackman -i &lt;package&gt;
                                </codecmd>
                                <br /><br />
                                <codecomment>
                                    # Download, compile and install whole category
                                </codecomment>
                                <br />
                                $
                                <codecmd>
                                    sudo blackman -g &lt;group&gt;
                                </codecmd>
                                <br /><br />
                                <codecomment>
                                    # Download, compile and install all BlackArch tools
                                </codecomment>
                                <br />
                                $
                                <codecmd>
                                    sudo blackman -a
                                </codecmd>
                                <br /><br />
                                <codecomment>
                                    # To list blackarch categories
                                </codecomment>
                                <br />
                                $
                                <codecmd>
                                    blackman -l
                                </codecmd>
                                <br /><br />
                                <codecomment>
                                    # To list category tools
                                </codecomment>
                                <br />
                                $
                                <codecmd>
                                    blackman -p &lt;category&gt;
                                </codecmd>
                            </div>
                            <br />
                            <p>
                                The complete tool list of the BlackArch Linux repository can be found <a href="tools.html" target="_blank">here</a>.
                            </p>
                        </li>
                    </ul>
                </div>
                <br />
                <div class="panel panel-default text-left">
                    <a name="install-iso"></a>
                    <div class="panel-heading">
                        <b>Installing from ISO</b>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            You can install BlackArch Linux (packages AND environment) using the Live or Netinstall medium.
                            <div class="code-block">
                                <codecomment>
                                    # Install blackarch-install-scripts package
                                </codecomment>
                                <br />
                                $
                                <codecmd>
                                    sudo pacman -S blackarch-install-scripts
                                </codecmd>
                                <br /><br />
                                <codecomment>
                                    # Now, you can run and follow the instructions
                                </codecomment>
                                <br />
                                $
                                <codecmd>
                                    sudo blackarch-install
                                </codecmd>
                            </div>
                        </li>
                    </ul>
                </div>
                <br />
                <div class="panel panel-default text-left">
                    <a name="blackarch-arm"></a>
                    <div class="panel-heading">
                        <b>ARM</b>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <p>
                                BlackArch is compatible with Arch Linux ARM. It effectively supports all of the ARMv6 and ARMv7 platforms listed
                                <a href="http://archlinuxarm.org/platforms" target="_blank">here</a>.
                            </p>
                            <p>
                                In order to install BlackArch on an ARM platform, follow the install instructions for your device on
                                <a href="http://archlinuxarm.org/" target="_blank">archlinuxarm.org</a> and install BlackArch
                                <a href="#install-repo">as an unofficial user repository</a>.
                                Soon we will release adaptations of the Arch Linux ARM images with BlackArch packages pre-installed.
                            </p>
                        </li>
                    </ul>
                </div>
                <br />
                <div class="panel panel-default text-left">
                    <a name="mirror-list"></a>
                    <div class="panel-heading">
                        <b>Official BlackArch Linux Mirror Sites</b>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <img src="/images/flags/au.png" alt="Australia" /> Australia<br />
                            <a href="http://blackarch.mirror.digitalpacific.com.au/" target="_blank">http://blackarch.mirror.digitalpacific.com.au/</a><br />
                            <a href="rsync://mirror.digitalpacific.com.au/blackarch/" target="_blank">rsync://mirror.digitalpacific.com.au/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/at.png" alt="Austria" /> Austria<br />
                            <a href="http://mirror.easyname.at/blackarch/" target="_blank">http://mirror.easyname.at/blackarch/</a><br />
                            <a href="ftp://mirror.easyname.at/blackarch/" target="_blank">ftp://mirror.easyname.at/blackarch/</a><br />
                            <a href="rsync://mirror.easyname.at/blackarch/" target="_blank">rsync://mirror.easyname.at/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/be.png" alt="Belgium" /> Belgium<br />
                            <a href="http://mirror.alexiobash.com/blackarch/" target="_blank">http://mirror.alexiobash.com/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/ca.png" alt="Canada" /> Canada<br />
                            <a href="http://mirror.clibre.uqam.ca/blackarch/" target="_blank">http://mirror.clibre.uqam.ca/blackarch/</a><br />
                            <a href="http://blackarch.dropswitch.net/blackarch/" target="_blank">http://blackarch.dropswitch.net/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/cn.png" alt="China" /> China<br />
                            <a href="http://mirrors.hustunique.com/blackarch/" target="_blank">http://mirrors.hustunique.com/blackarch/</a><br />
                            <a href="https://mirrors.ustc.edu.cn/blackarch/" target="_blank">https://mirrors.ustc.edu.cn/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/dk.png" alt="Denmark" /> Denmark<br />
                            <a href="http://mirrors.dotsrc.org/blackarch/" target="_blank">http://mirrors.dotsrc.org/blackarch/</a><br />
                            <a href="ftp://mirrors.dotsrc.org/blackarch/" target="_blank">ftp://mirrors.dotsrc.org/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/ec.png" alt="Ecuador" /> Ecuador<br />
                            <a href="http://mirror.uta.edu.ec/blackarch/" target="_blank">http://mirror.uta.edu.ec/blackarch/</a><br />
                            <a href="ftp://mirror.uta.edu.ec/blackarch/" target="_blank">ftp://mirror.uta.edu.ec/blackarch/</a><br />
                            <a href="rsync://mirror.uta.edu.ec/blackarch/" target="_blank">rsync://mirror.uta.edu.ec/blackarch/</a><br />
                            <a href="http://mirror.cedia.org.ec/blackarch/" target="_blank">http://mirror.cedia.org.ec/blackarch/</a><br />
                            <a href="http://mirror.espoch.edu.ec/blackarch" target="_blank">http://mirror.espoch.edu.ec/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/fr.png" alt="France" /> France<br />
                            <a href="http://www.blackarch.org/blackarch/" target="_blank">http://www.blackarch.org/blackarch/</a><br />
                            <a href="http://blackarch.tamcore.eu/" target="_blank">http://blackarch.tamcore.eu/</a><br />
                            <a href="https://blackarch.tamcore.eu/" target="_blank">https://blackarch.tamcore.eu/</a><br />
                            <a href="rsync://blackarch.tamcore.eu/blackarch/" target="_blank">rsync://blackarch.tamcore.eu/blackarch/</a><br />
                            <a href="http://blackarch.leneveu.fr/blackarch/" target="_blank">http://blackarch.leneveu.fr/blackarch/</a><br />
                            <a href="http://blackarch.pi3rrot.net/blackarch/" target="_blank">http://blackarch.pi3rrot.net/blackarch/</a><br />
                            <a href="http://mirror.adversec.com/blackarch/" target="_blank">http://mirror.adversec.com/blackarch/</a><br />
                            <a href="http://blackarch.uteditor.de/" target="_blank">http://blackarch.uteditor.de/</a>
                            <br /><br />
                            <img src="/images/flags/gr.png" alt="Greece" /> Greece<br />
                            <a href="http://ftp.cc.uoc.gr/mirrors/linux/blackarch/" target="_blank">http://ftp.cc.uoc.gr/mirrors/linux/blackarch/</a><br />
                            <a href="ftp://ftp.cc.uoc.gr/mirrors/linux/blackarch/" target="_blank">ftp://ftp.cc.uoc.gr/mirrors/linux/blackarch/</a><br />
                            <a href="rsync://blackarch@blackarch.org/blackarch/" target="_blank">rsync://blackarch@blackarch.org/blackarch </a>
                            <br /><br />
                            <img src="/images/flags/gb.png" alt="Great Britain" /> Great Britain<br />
                            <a href="http://www.mirrorservice.org/sites/blackarch.org/blackarch/" target="_blank">http://www.mirrorservice.org/sites/blackarch.org/blackarch/</a><br />
                            <a href="ftp://ftp.mirrorservice.org/sites/blackarch.org/blackarch/" target="_blank">ftp://ftp.mirrorservice.org/sites/blackarch.org/blackarch/</a><br />
                            <a href="rsync://rsync.mirrorservice.org/blackarch.org/blackarch/" target="_blank">rsync://rsync.mirrorservice.org/blackarch.org/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/ie.png" alt="Ireland" /> Ireland<br />
                            <a href="http://ftp.heanet.ie/mirrors/blackarch/" target="_blank">ftp.heanet.ie/mirrors/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/it.png" alt="Italy" /> Italy<br />
                            <a href="http://blackarch.mirror.garr.it/mirrors/blackarch/" target="_blank">http://blackarch.mirror.garr.it/mirrors/blackarch/</a><br />
                            <a href="rsync://blackarch.mirror.garr.it/blackarch/" target="_blank">rsync://blackarch.mirror.garr.it/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/jp.png" alt="Japan" /> Japan<br />
                            <a href="http://www.ftp.ne.jp/Linux/packages/blackarch/" target="_blank">http://www.ftp.ne.jp/Linux/packages/blackarch/</a><br />
                            <a href="ftp://ftp.kddilabs.jp/Linux/packages/blackarch/" target="_blank">ftp://ftp.kddilabs.jp/Linux/packages/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/nl.png" alt="Netherlands" /> Netherlands<br />
                            <a href="http://blackarch.pr0s3c.nl/blackarch/" target="_blank">http://blackarch.pr0s3c.nl/blackarch/</a><br />
                            <a href="https://blackarch.pr0s3c.nl/blackarch/" target="_blank">https://blackarch.pr0s3c.nl/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/pl.png" alt="Poland" /> Poland<br />
                            <a href="http://ftp.icm.edu.pl/pub/Linux/dist/blackarch/" target="_blank">http://ftp.icm.edu.pl/pub/Linux/dist/blackarch/</a><br />
                            <a href="ftp://ftp.icm.edu.pl/pub/Linux/dist/blackarch/" target="_blank">ftp://ftp.icm.edu.pl/pub/Linux/dist/blackarch/</a><br />
                            <a href="rsync://ftp.icm.edu.pl/pub/Linux/dist/blackarch/" target="_blank">rsync://ftp.icm.edu.pl/pub/Linux/dist/blackarch/</a><br />
                            <a href="gopher://ftp.icm.edu.pl/1/pub/Linux/dist/blackarch/" target="_blank">gopher://ftp.icm.edu.pl/1/pub/Linux/dist/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/ru.png" alt="Russia" /> Russia<br />
                            <a href="http://mirror.yandex.ru/mirrors/blackarch/" target="_blank">http://mirror.yandex.ru/mirrors/blackarch/</a><br />
                            <a href="ftp://mirror.yandex.ru/mirrors/blackarch/" target="_blank">ftp://mirror.yandex.ru/mirrors/blackarch/</a><br />
                            <a href="rsync://mirror.yandex.ru/mirrors/blackarch/" target="_blank">rsync://mirror.yandex.ru/mirrors/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/es.png" alt="Spain" /> Spain<br />
                            <a href="http://blackarch.smartdefence.cl/blackarch/" target="_blank">http://blackarch.smartdefence.cl/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/se.png" alt="Sweden" /> Sweden<br />
                            <a href="http://mirror.zetup.net/blackarch/" target="_blank">http://mirror.zetup.net/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/ch.png" alt="Switzerland" /> Switzerland<br />
                            <a href="http://mirror.easyname.ch/blackarch/" target="_blank">http://mirror.easyname.ch/blackarch/</a><br />
                            <a href="ftp://mirror.easyname.ch/blackarch/" target="_blank">ftp://mirror.easyname.ch/blackarch/</a><br />
                            <a href="rsync://mirror.easyname.ch/blackarch/" target="_blank">rsync://mirror.easyname.ch/blackarch/</a><br />
                            <a href="https://mirror.tillo.ch/ftp/blackarch/" target="_blank">https://mirror.tillo.ch/ftp/blackarch/</a><br />
                            <a href="http://mirror.tillo.ch/ftp/blackarch/" target="_blank">http://mirror.tillo.ch/ftp/blackarch/</a><br />
                            <a href="ftpes://mirror.tillo.ch/blackarch/" target="_blank">ftpes://mirror.tillo.ch/blackarch/</a><br />
                            <a href="ftp://mirror.tillo.ch/blackarch/" target="_blank">ftp://mirror.tillo.ch/blackarch/</a><br />
                            <a href="rsync://mirror.tillo.ch/blackarch/" target="_blank">rsync://mirror.tillo.ch/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/tr.png" alt="Turkey" /> Turkey<br />
                            <a href="http://ftp.linux.org.tr/blackarch/" target="_blank">http://ftp.linux.org.tr/blackarch/</a><br />
                            <a href="ftp://ftp.linux.org.tr/blackarch/" target="_blank">ftp://ftp.linux.org.tr/blackarch/</a><br />
                            <a href="rsync://rsync.linux.org.tr/blackarch/" target="_blank">rsync://rsync.linux.org.tr/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/tw.png" alt="Taiwan" /> Taiwan<br />
                            <a href="http://blackarch.cs.nctu.edu.tw/" target="_blank">http://blackarch.cs.nctu.edu.tw/</a><br />
                            <a href="rsync://blackarch.cs.nctu.edu.tw/blackarch/" target="_blank">rsync://blackarch.cs.nctu.edu.tw/blackarch/</a><br />
                            <a href="http://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank">http://ftp.yzu.edu.tw/Linux/blackarch/</a><br />
                            <a href="ftp://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank">ftp://ftp.yzu.edu.tw/Linux/blackarch/</a><br />
                            <a href="rsync://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank">rsync://ftp.yzu.edu.tw/Linux/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/us.png" alt="USA" /> USA<br />
                            <a href="http://mirror2.tscinc.co/blackarch" target="_blank">http://mirror2.tscinc.co/blackarch/</a><br />
                            <a href="rsync://mirror2.tscinc.co/blackarch" target="_blank">rsync://mirror2.tscinc.co/blackarch</a><br />
                            <a href="https://blackarch.cdndepo.com/" target="_blank">https://blackarch.cdndepo.com/</a><br />
                            <a href="http://blackarch.cdndepo.com/" target="_blank">http://blackarch.cdndepo.com/</a><br />
                            <a href="rsync://blackarch.cdndepo.com/" target="_blank">rsync://blackarch.cdndepo.com/</a><br />
                            <a href="https://blackarch.mirror.packetfire.org/" target="_blank">https://blackarch.mirror.packetfire.org/</a><br />
                            <a href="http://blackarch.mirror.packetfire.org/" target="_blank">http://blackarch.mirror.packetfire.org/</a><br />
                            <a href="rsync://blackarch.mirror.packetfire.org/" target="_blank">rsync://blackarch.mirror.packetfire.org/</a><br />
                            <a href="https://deadbeef.ninja/blackarch/" target="_blank">https://deadbeef.ninja/blackarch/</a><br />
                            <a href="http://mirror.team-cymru.org/blackarch/" target="_blank">http://mirror.team-cymru.org/blackarch/</a><br />
                            <a href="ftp://mirror.team-cymru.org/blackarch/" target="_blank">ftp://mirror.team-cymru.org/blackarch/</a><br />
                            <a href="rsync://mirror.team-cymru.org/blackarch/" target="_blank">rsync://mirror.team-cymru.org/blackarch/</a><br />
                            <a href="http://mirror.jmu.edu/blackarch/" target="_blank">http://mirror.jmu.edu/blackarch/</a><br />
                            <a href="ftp://mirror.jmu.edu/blackarch/" target="_blank">ftp://mirror.jmu.edu/blackarch/</a><br />
                            <a href="rsync://mirror.jmu.edu/blackarch/" target="_blank">rsync://mirror.jmu.edu/blackarch/</a><br />
                            <a href="http://mirror.oss.maxcdn.com/blackarch/" target="_blank">http://mirror.oss.maxcdn.com/blackarch/</a><br />
                            <a href="ftp://mirror.oss.maxcdn.com/blackarch/" target="_blank">ftp://mirror.oss.maxcdn.com/blackarch/</a><br />
                            <a href="rsync://mirror.oss.maxcdn.com/mirrors/blackarch/" target="_blank">rsync://mirror.oss.maxcdn.com/mirrors/blackarch/</a><br />
                            <a href="http://arch.localmsp.org/blackarch/" target="_blank">http://arch.localmsp.org/blackarch/</a>
                            <br /><br />
                            <img src="/images/flags/vn.png" alt="Vietnam" /> Vietnam<br />
                            <a href="http://f.archlinuxvn.org/blackarch/" target="_blank">http://f.archlinuxvn.org/blackarch/</a>
                        </li>
                    </ul>
                </div>
           </div>
        </div>
        <!-- /.row -->

EOF

cat common/end
