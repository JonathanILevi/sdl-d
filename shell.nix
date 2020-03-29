{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
	
	buildInputs = [
	pkgs.SDL2
	pkgs.SDL2.dev
	pkgs.dmd
	pkgs.dub
	];
	
	LD_LIBRARY_PATH = "${pkgs.SDL2}/lib";
	
}