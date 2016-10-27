#/bin/bash
echo %_signature gpg > ~/.rpmmacros
echo "%_gpg_name mritd (mritd rpm repository)" >> ~/.rpmmacros

for rpmName in `ls ~/kubeadm_release/rpm/output/x86_64/*.rpm`; do
  rpm --addsign $rpmName
  cp ~/kubeadm_release/rpm/output/x86_64/$rpmName /data/repo/centos/7/x86_64
done