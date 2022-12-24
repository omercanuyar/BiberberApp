enum KuaforTipleri { erkek, kadin, unisex }

String getKuaforName(KuaforTipleri type) {
  switch (type) {
    case KuaforTipleri.erkek:
      return 'Erkek';

    case KuaforTipleri.kadin:
      return 'Kadın';

    case KuaforTipleri.unisex:
      return 'Unisex';

    default:
      return 'All';
  }
}
