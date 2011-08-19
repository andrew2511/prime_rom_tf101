.class public Ldalvik/system/DexClassLoader;
.super Ljava/lang/ClassLoader;
.source "DexClassLoader.java"


# static fields
.field private static final VERBOSE_DEBUG:Z


# instance fields
.field private final mDexOutputPath:Ljava/lang/String;

.field private final mDexs:[Ldalvik/system/DexFile;

.field private final mFiles:[Ljava/io/File;

.field private final mLibPaths:[Ljava/lang/String;

.field private final mRawDexPath:Ljava/lang/String;

.field private final mRawLibPath:Ljava/lang/String;

.field private final mZips:[Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 16
    .parameter "dexPath"
    .parameter "dexOutputDir"
    .parameter "libPath"
    .parameter "parent"

    .prologue
    .line 80
    invoke-direct {p0, p4}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 82
    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    .line 83
    :cond_7
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 86
    :cond_d
    iput-object p1, p0, Ldalvik/system/DexClassLoader;->mRawDexPath:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Ldalvik/system/DexClassLoader;->mDexOutputPath:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Ldalvik/system/DexClassLoader;->mRawLibPath:Ljava/lang/String;

    .line 90
    iget-object v8, p0, Ldalvik/system/DexClassLoader;->mRawDexPath:Ljava/lang/String;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, dexPathList:[Ljava/lang/String;
    array-length v3, v0

    .line 93
    .local v3, length:I
    new-array v8, v3, [Ljava/io/File;

    iput-object v8, p0, Ldalvik/system/DexClassLoader;->mFiles:[Ljava/io/File;

    .line 94
    new-array v8, v3, [Ljava/util/zip/ZipFile;

    iput-object v8, p0, Ldalvik/system/DexClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    .line 95
    new-array v8, v3, [Ldalvik/system/DexFile;

    iput-object v8, p0, Ldalvik/system/DexClassLoader;->mDexs:[Ldalvik/system/DexFile;

    .line 98
    const/4 v2, 0x0

    .local v2, i:I
    :goto_29
    if-ge v2, v3, :cond_65

    .line 99
    new-instance v5, Ljava/io/File;

    aget-object v8, v0, v2

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v5, pathFile:Ljava/io/File;
    iget-object v8, p0, Ldalvik/system/DexClassLoader;->mFiles:[Ljava/io/File;

    aput-object v5, v8, v2

    .line 102
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_62

    .line 103
    aget-object v8, v0, v2

    const-string v9, ".dex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4f

    .line 109
    :try_start_46
    iget-object v8, p0, Ldalvik/system/DexClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v9, v8, v2
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4f} :catch_d4

    .line 124
    :cond_4f
    :goto_4f
    :try_start_4f
    aget-object v8, v0, v2

    iget-object v9, p0, Ldalvik/system/DexClassLoader;->mDexOutputPath:Ljava/lang/String;

    invoke-static {v8, v9}, Ldalvik/system/DexClassLoader;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, outputName:Ljava/lang/String;
    iget-object v8, p0, Ldalvik/system/DexClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v9, v0, v2

    const/4 v10, 0x0

    invoke-static {v9, v4, v10}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v9

    aput-object v9, v8, v2
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_62} :catch_d2

    .line 98
    .end local v4           #outputName:Ljava/lang/String;
    :cond_62
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 138
    .end local v5           #pathFile:Ljava/io/File;
    :cond_65
    const-string v8, "java.library.path"

    const-string v9, "."

    invoke-static {v8, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, pathList:Ljava/lang/String;
    const-string v8, "path.separator"

    const-string v9, ":"

    invoke-static {v8, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, pathSep:Ljava/lang/String;
    const-string v8, "file.separator"

    const-string v9, "/"

    invoke-static {v8, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, fileSep:Ljava/lang/String;
    iget-object v8, p0, Ldalvik/system/DexClassLoader;->mRawLibPath:Ljava/lang/String;

    if-eqz v8, :cond_9e

    .line 143
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_ce

    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ldalvik/system/DexClassLoader;->mRawLibPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 151
    :cond_9e
    :goto_9e
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ldalvik/system/DexClassLoader;->mLibPaths:[Ljava/lang/String;

    .line 152
    iget-object v8, p0, Ldalvik/system/DexClassLoader;->mLibPaths:[Ljava/lang/String;

    array-length v3, v8

    .line 156
    const/4 v2, 0x0

    :goto_a8
    if-ge v2, v3, :cond_d1

    .line 157
    iget-object v8, p0, Ldalvik/system/DexClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_cb

    .line 158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ldalvik/system/DexClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v10, v9, v2

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v2

    .line 156
    :cond_cb
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    .line 147
    :cond_ce
    iget-object v6, p0, Ldalvik/system/DexClassLoader;->mRawLibPath:Ljava/lang/String;

    goto :goto_9e

    .line 163
    :cond_d1
    return-void

    .line 127
    .end local v1           #fileSep:Ljava/lang/String;
    .end local v6           #pathList:Ljava/lang/String;
    .end local v7           #pathSep:Ljava/lang/String;
    .restart local v5       #pathFile:Ljava/io/File;
    :catch_d2
    move-exception v8

    goto :goto_62

    .line 111
    :catch_d4
    move-exception v8

    goto/16 :goto_4f
.end method

.method private static generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "sourcePathName"
    .parameter "outputDir"

    .prologue
    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x50

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    .local v2, newStr:Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 176
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_17
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 181
    .local v1, lastSlash:I
    if-gez v1, :cond_35

    .line 182
    move-object v3, p0

    .line 195
    .local v3, sourceFileName:Ljava/lang/String;
    :goto_20
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 196
    .local v0, lastDot:I
    if-gez v0, :cond_3c

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :goto_2b
    const-string v4, ".dex"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 184
    .end local v0           #lastDot:I
    .end local v3           #sourceFileName:Ljava/lang/String;
    :cond_35
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #sourceFileName:Ljava/lang/String;
    goto :goto_20

    .line 199
    .restart local v0       #lastDot:I
    :cond_3c
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_2b
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 9
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v4, p0, Ldalvik/system/DexClassLoader;->mFiles:[Ljava/io/File;

    array-length v2, v4

    .line 226
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v2, :cond_22

    .line 230
    iget-object v4, p0, Ldalvik/system/DexClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v4, v4, v1

    if-eqz v4, :cond_1f

    .line 231
    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, slashName:Ljava/lang/String;
    iget-object v4, p0, Ldalvik/system/DexClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 233
    .local v0, clazz:Ljava/lang/Class;
    if-eqz v0, :cond_1f

    .line 236
    return-object v0

    .line 226
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v3           #slashName:Ljava/lang/String;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 241
    :cond_22
    new-instance v4, Ljava/lang/ClassNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in loader "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "libname"

    .prologue
    .line 294
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, fileName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v4, p0, Ldalvik/system/DexClassLoader;->mLibPaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2f

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ldalvik/system/DexClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, pathName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v3, test:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object v4, v2

    .line 308
    .end local v2           #pathName:Ljava/lang/String;
    .end local v3           #test:Ljava/io/File;
    :goto_2b
    return-object v4

    .line 295
    .restart local v2       #pathName:Ljava/lang/String;
    .restart local v3       #test:Ljava/io/File;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 308
    .end local v2           #pathName:Ljava/lang/String;
    .end local v3           #test:Ljava/io/File;
    :cond_2f
    const/4 v4, 0x0

    goto :goto_2b
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 10
    .parameter "name"

    .prologue
    .line 256
    iget-object v5, p0, Ldalvik/system/DexClassLoader;->mFiles:[Ljava/io/File;

    array-length v2, v5

    .line 258
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v2, :cond_46

    .line 259
    iget-object v5, p0, Ldalvik/system/DexClassLoader;->mFiles:[Ljava/io/File;

    aget-object v3, v5, v1

    .line 260
    .local v3, pathFile:Ljava/io/File;
    iget-object v5, p0, Ldalvik/system/DexClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v4, v5, v1

    .line 262
    .local v4, zip:Ljava/util/zip/ZipFile;
    invoke-virtual {v4, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_43

    .line 270
    :try_start_14
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jar:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/net/MalformedURLException; {:try_start_14 .. :try_end_3a} :catch_3b

    .line 280
    .end local v3           #pathFile:Ljava/io/File;
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    :goto_3a
    return-object v5

    .line 271
    .restart local v3       #pathFile:Ljava/io/File;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :catch_3b
    move-exception v5

    move-object v0, v5

    .line 272
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 258
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 280
    .end local v3           #pathFile:Ljava/io/File;
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    :cond_46
    const/4 v5, 0x0

    goto :goto_3a
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 12
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 335
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 336
    monitor-enter p0

    .line 337
    :try_start_a
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v9

    .line 339
    .local v9, pack:Ljava/lang/Package;
    if-nez v9, :cond_23

    .line 340
    const-string v2, "Unknown"

    const-string v3, "0.0"

    const-string v4, "Unknown"

    const-string v5, "Unknown"

    const-string v6, "0.0"

    const-string v7, "Unknown"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Ldalvik/system/DexClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v9

    .line 344
    :cond_23
    monitor-exit p0

    move-object v0, v9

    .line 348
    .end local v9           #pack:Ljava/lang/Package;
    :goto_25
    return-object v0

    .line 345
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    move-object v0, v1

    .line 348
    goto :goto_25
.end method
