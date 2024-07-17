{
  description = "A very basic flake";

  outputs = { self }: {
    service = import ./default.nix;
  };
}
