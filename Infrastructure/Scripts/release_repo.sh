packages_directory="$HOME/code/works/NAB/SwiftjectiveCApp"
version=1.0.1

packages=(
	AppCore
	Authentication
	DesignSystem
	Home
	Models
	Networking
	Profile
)

cd $packages_directory

for package in "${packages[@]}"; do
	echo "[$package] Start"
	cd $package

	echo "🚀 Release version $version"
	git tag $version
	git push origin $version

	echo "[$package] DONE"
	cd ..
done