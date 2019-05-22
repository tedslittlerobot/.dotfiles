
# Adds a domain to DNSmasq so that it always points to 127.0.0.1
function dnsmasq-add() {
	if [ -z "$1" ]; then
	    echo "You must specify a domain to masq"
		return 1
	fi

	sudo mkdir -p /etc/resolver
	sudo mkdir -p $(brew --prefix)/etc

	if [ -f "/etc/resolver/$1" ]; then
		echo "There is already a masq set up at /etc/resolver/$1"
		return 1
	fi

	# # Add config line
	sudo bash -c "echo \"address=/.$1/127.0.0.1\" >> $(brew --prefix)/etc/dnsmasq.conf"
	# Add resolver
	sudo bash -c "echo \"nameserver 127.0.0.1\" > /etc/resolver/$1"

	sudo brew services stop dnsmasq
	sudo brew services start dnsmasq
}

# Check Local DNS entries
function dnsmasq-check() {
	scutil --dns
}
