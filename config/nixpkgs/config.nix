{
    packageOverrides = pkgs: {
        factorio = pkgs.factorio.override {
            releaseType = "expansion";
        };
    };
}
