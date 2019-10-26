!#/bin/bash
rm -rf external;
rm .gitmodules;
touch .gitmodules;
git commit -a;
git submodule add -b monero https://github.com/monero-project/unbound external/unbound
git submodule add https://github.com/monero-project/miniupnp external/miniupnp
git submodule add https://github.com/Tencent/rapidjson external/rapidjson
git submodule add https://github.com/trezor/trezor-common.git external/trezor-common
git submodule add https://github.com/tevador/RandomX external/RandomX
