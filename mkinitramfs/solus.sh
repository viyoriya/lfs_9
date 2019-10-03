	./INSTALL.sh

	if [ $(type -p mkinitramfs) ]; then
		kernver=$(file /boot/com.solus-project.current.5.2.13-126  | cut -d ' ' -f9)
		mkinitramfs -k $kernver -o /boot/initrd-com.solus-project.current.5.2.13-126.img
	fi