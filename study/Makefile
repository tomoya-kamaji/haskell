# 実行ファイルの名前
EXECUTABLE = study

# ソースファイルのリスト
SOURCES = src/Main.hs src/Math.hs src/Utils.hs

# デフォルトターゲット
all: build run

# ビルドターゲット
build:
	ghc -o $(EXECUTABLE) $(SOURCES)

# 実行ターゲット
run:
	./$(EXECUTABLE)

# テストターゲット
test:
	stack test

# クリーンターゲット
clean:
	rm -f $(EXECUTABLE) *.hi *.o
	rm -f src/*.hi src/*.o