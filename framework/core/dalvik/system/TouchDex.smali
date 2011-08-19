.class public Ldalvik/system/TouchDex;
.super Ljava/lang/Object;
.source "TouchDex.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static expandDirectories(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "dexPath"

    .prologue
    .line 87
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, parts:[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .end local p0
    invoke-direct {v7, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    .local v7, outPath:Ljava/lang/StringBuilder;
    new-instance v2, Ldalvik/system/TouchDex$1;

    invoke-direct {v2}, Ldalvik/system/TouchDex$1;-><init>()V

    .line 97
    .local v2, filter:Ljava/io/FilenameFilter;
    move-object p0, v0

    .local p0, arr$:[Ljava/lang/String;
    array-length v5, p0

    .local v5, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    move v4, v0

    .end local v0           #i$:I
    .end local v5           #len$:I
    .end local p0           #arr$:[Ljava/lang/String;
    .local v4, i$:I
    :goto_18
    if-ge v4, v5, :cond_8d

    aget-object v8, p0, v4

    .line 98
    .local v8, part:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 101
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const/16 v0, 0x3a

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .end local v0           #f:Ljava/io/File;
    .end local v4           #i$:I
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v4, 0x1

    .local v0, i$:I
    move v4, v0

    .end local v0           #i$:I
    .restart local v4       #i$:I
    goto :goto_18

    .line 103
    .local v0, f:Ljava/io/File;
    :cond_33
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 104
    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, filenames:[Ljava/lang/String;
    if-nez v0, :cond_58

    .line 107
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .end local v0           #filenames:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error with directory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2f

    .line 111
    .restart local v0       #filenames:[Ljava/lang/String;
    :cond_58
    move-object v0, v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v1, 0x0

    .end local v4           #i$:I
    .local v1, i$:I
    move v3, v1

    .end local v1           #i$:I
    .local v3, i$:I
    :goto_5c
    if-ge v3, v6, :cond_2f

    aget-object v1, v0, v3

    .line 112
    .local v1, filename:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    sget-char v9, Ljava/io/File;->separatorChar:C

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const/16 v1, 0x3a

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .end local v1           #filename:Ljava/lang/String;
    add-int/lit8 v1, v3, 0x1

    .end local v3           #i$:I
    .local v1, i$:I
    move v3, v1

    .end local v1           #i$:I
    .restart local v3       #i$:I
    goto :goto_5c

    .line 118
    .end local v3           #i$:I
    .end local v6           #len$:I
    .local v0, f:Ljava/io/File;
    .restart local v4       #i$:I
    :cond_74
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .end local v0           #f:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2f

    .line 123
    .end local v8           #part:Ljava/lang/String;
    :cond_8d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .parameter "args"

    .prologue
    const/4 v5, 0x0

    .line 66
    const-string v3, "-"

    aget-object v4, p0, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 67
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x100

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 72
    .local v1, in:Ljava/io/BufferedReader;
    :goto_19
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_32

    .line 73
    invoke-static {v2}, Ldalvik/system/TouchDex;->prepFiles(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_23

    goto :goto_19

    .line 75
    .end local v2           #line:Ljava/lang/String;
    :catch_23
    move-exception v3

    move-object v0, v3

    .line 76
    .local v0, ex:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error processing stdin"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/BufferedReader;
    :cond_2d
    aget-object v3, p0, v5

    invoke-static {v3}, Ldalvik/system/TouchDex;->prepFiles(Ljava/lang/String;)V

    .line 82
    :cond_32
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " Prep complete"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private static prepFiles(Ljava/lang/String;)V
    .registers 5
    .parameter "dexPath"

    .prologue
    .line 128
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Prepping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ldalvik/system/TouchDexLoader;

    invoke-static {p0}, Ldalvik/system/TouchDex;->expandDirectories(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldalvik/system/TouchDexLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 141
    .local v0, loader:Ldalvik/system/TouchDexLoader;
    :try_start_22
    const-string v1, "com.google.NonexistentClassNeverFound"

    invoke-virtual {v0, v1}, Ldalvik/system/TouchDexLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "nonexistent class loaded?!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_2f} :catch_2f

    .line 143
    :catch_2f
    move-exception v1

    .line 146
    return-void
.end method

.method public static start(Ljava/lang/String;)I
    .registers 2
    .parameter "dexFiles"

    .prologue
    .line 44
    const-string v0, "java.boot.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldalvik/system/TouchDex;->trampoline(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native trampoline(Ljava/lang/String;Ljava/lang/String;)I
.end method
