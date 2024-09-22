# 実行ファイルの名前
EXECUTABLE = myProgram

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

# クリーンターゲット
clean:
	rm -f $(EXECUTABLE) *.hi *.o
	rm -f src/*.hi src/*.o