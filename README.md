# Computer Logic Design Practice

東京科学大学（旧・東京工業大学）の「コンピュータ論理構成」で作成した、Verilog HDLの演習コードを管理するリポジトリです。

## 内容

### 演習1

- `code057.v`：100 MHzクロックを分周して、4個のLEDを同時に点滅させる回路
- `code057_pract1.v`：1秒ごとに値が増える4ビットカウンタ
- `code057_pract1_2.v`：4ビットカウンタの別バージョン

4ビットカウンタは、LED出力を次のように変化させます。

```text
0000 → 0001 → 0010 → ... → 1111 → 0000 → ...
```

### 演習2

- `code073.v`：半加算器と、その動作を確認するテストベンチ

## 構文チェックとシミュレーション

[Icarus Verilog](https://steveicarus.github.io/iverilog/)を使用する場合の例です。

演習1の構文チェック：

```bash
iverilog -tnull "演習１/code057_pract1.v"
```

演習2のシミュレーション：

```bash
iverilog -o sim.out "演習２/code073.v"
vvp sim.out
```

演習1の各ファイルには同じ名前の`m_main`モジュールが含まれているため、コンパイルするときは使用するファイルを1つだけ指定します。
