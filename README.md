Redmine Absolute Dates Plugin
=============================

This Plugin supports Japanese, English and German locales currently.

Other locales will be presented with absolute dates, but still use the original
_x minutes ago_ texts. Please submit a pull request if you wish to add support
for more languages.

機能
---------------------

Redmineのチケットの作成日、更新日はデフォルトでは
「今日」からの相対的な日時数で表示されます。(...日前など)

このプラグインはこの日付を通常の日付(yyyy/MM/dd)で表示します。

インストール / Usage
---------------------

Just put the plugin into plugins/redmine_absolute_dates. No migrations or other
setup tasks required.

1. Redmineのインストールディレクトリ内の plugins/ にて

   $ git clone git://github.com/suer/redmine_absolute_dates.git

2. Redmine の再起動

ライセンス / License
---------------------

[MIT](https://opensource.org/licenses/MIT)

MITライセンスとします

