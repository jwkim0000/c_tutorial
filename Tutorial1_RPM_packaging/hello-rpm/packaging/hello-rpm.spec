Name: hello-rpm
Version: 0.1
Release: 1
Summary: Test rpm-packaging
Source: %{name}-%{version}.tar.gz
License: MIT

%define package_name	%{name}-%{version}

%description
This is my first test about rpm packaging

%prep
cp -a %_sourcedir/%{package_name}.tar.gz %_builddir/
cd %_builddir
tar xvf %{package_name}.tar.gz
rm %{package_name}.tar.gz

#%setup -q

%build
gcc -o hello-rpm.bin %{name}/src.c

%install
rm -rf $RPM_BUILD_ROOT
#%make_install

mkdir -p $RPM_BUILD_ROOT/%{_bindir}
cp hello-rpm.bin $RPM_BUILD_ROOT/%{_bindir}/

%files
%{_bindir}/hello-rpm.bin
