.class public Ldalvik/system/PathClassLoader;
.super Ljava/lang/ClassLoader;
.source "PathClassLoader.java"


# instance fields
.field private final libPath:Ljava/lang/String;

.field private final libraryPathElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDexs:[Ldalvik/system/DexFile;

.field private final mFiles:[Ljava/io/File;

.field private final mPaths:[Ljava/lang/String;

.field private final mZips:[Ljava/util/zip/ZipFile;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4
    .parameter "path"
    .parameter "parent"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 14
    .parameter "path"
    .parameter "libPath"
    .parameter "parent"

    .prologue
    .line 107
    invoke-direct {p0, p3}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 109
    if-nez p1, :cond_b

    .line 110
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 113
    :cond_b
    iput-object p1, p0, Ldalvik/system/PathClassLoader;->path:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Ldalvik/system/PathClassLoader;->libPath:Ljava/lang/String;

    .line 116
    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    .line 117
    iget-object v8, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    array-length v4, v8

    .line 119
    .local v4, length:I
    new-array v8, v4, [Ljava/io/File;

    iput-object v8, p0, Ldalvik/system/PathClassLoader;->mFiles:[Ljava/io/File;

    .line 120
    new-array v8, v4, [Ljava/util/zip/ZipFile;

    iput-object v8, p0, Ldalvik/system/PathClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    .line 121
    new-array v8, v4, [Ldalvik/system/DexFile;

    iput-object v8, p0, Ldalvik/system/PathClassLoader;->mDexs:[Ldalvik/system/DexFile;

    .line 124
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    if-ge v1, v4, :cond_5d

    .line 125
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v6, pathFile:Ljava/io/File;
    iget-object v8, p0, Ldalvik/system/PathClassLoader;->mFiles:[Ljava/io/File;

    aput-object v6, v8, v1

    .line 128
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 129
    iget-object v8, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v8, v8, v1

    const-string v9, ".dex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_51

    .line 135
    :try_start_48
    iget-object v8, p0, Ldalvik/system/PathClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v9, v8, v1
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_51} :catch_a7

    .line 150
    :cond_51
    :goto_51
    :try_start_51
    iget-object v8, p0, Ldalvik/system/PathClassLoader;->mDexs:[Ldalvik/system/DexFile;

    new-instance v9, Ldalvik/system/DexFile;

    invoke-direct {v9, v6}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    aput-object v9, v8, v1
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5a} :catch_a5

    .line 124
    :cond_5a
    :goto_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 167
    .end local v6           #pathFile:Ljava/io/File;
    :cond_5d
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Ldalvik/system/PathClassLoader;->libraryPathElements:Ljava/util/List;

    .line 168
    if-eqz p2, :cond_7e

    .line 169
    sget-object v8, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6e
    if-ge v2, v3, :cond_7e

    aget-object v5, v0, v2

    .line 170
    .local v5, pathElement:Ljava/lang/String;
    iget-object v8, p0, Ldalvik/system/PathClassLoader;->libraryPathElements:Ljava/util/List;

    invoke-direct {p0, v5}, Ldalvik/system/PathClassLoader;->cleanupPathElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 173
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pathElement:Ljava/lang/String;
    :cond_7e
    const-string v8, "java.library.path"

    const-string v9, "."

    invoke-static {v8, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, systemLibraryPath:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a4

    .line 175
    sget-object v8, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_94
    if-ge v2, v3, :cond_a4

    aget-object v5, v0, v2

    .line 176
    .restart local v5       #pathElement:Ljava/lang/String;
    iget-object v8, p0, Ldalvik/system/PathClassLoader;->libraryPathElements:Ljava/util/List;

    invoke-direct {p0, v5}, Ldalvik/system/PathClassLoader;->cleanupPathElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    .line 179
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pathElement:Ljava/lang/String;
    :cond_a4
    return-void

    .line 152
    .end local v7           #systemLibraryPath:Ljava/lang/String;
    .restart local v6       #pathFile:Ljava/io/File;
    :catch_a5
    move-exception v8

    goto :goto_5a

    .line 137
    :catch_a7
    move-exception v8

    goto :goto_51
.end method

.method private cleanupPathElement(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "path"

    .prologue
    .line 185
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p1

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private findResource(Ljava/lang/String;I)Ljava/net/URL;
    .registers 10
    .parameter "name"
    .parameter "i"

    .prologue
    .line 301
    iget-object v4, p0, Ldalvik/system/PathClassLoader;->mFiles:[Ljava/io/File;

    aget-object v2, v4, p2

    .line 302
    .local v2, pathFile:Ljava/io/File;
    iget-object v4, p0, Ldalvik/system/PathClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v3, v4, p2

    .line 303
    .local v3, zip:Ljava/util/zip/ZipFile;
    if-eqz v3, :cond_3f

    .line 304
    invoke-direct {p0, v3, p1}, Ldalvik/system/PathClassLoader;->isInArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 311
    :try_start_10
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jar:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_36} :catch_37

    .line 334
    :goto_36
    return-object v4

    .line 313
    :catch_37
    move-exception v4

    move-object v1, v4

    .line 314
    .local v1, e:Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 317
    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_3f
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 318
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, dataFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 323
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/File;->toURL()Ljava/net/URL;
    :try_end_6e
    .catch Ljava/net/MalformedURLException; {:try_start_6b .. :try_end_6e} :catch_70

    move-result-object v4

    goto :goto_36

    .line 325
    :catch_70
    move-exception v1

    .line 326
    .restart local v1       #e:Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 329
    .end local v0           #dataFile:Ljava/io/File;
    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_77
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 334
    :cond_7d
    :goto_7d
    const/4 v4, 0x0

    goto :goto_36

    .line 331
    :cond_7f
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PathClassLoader: can\'t find \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v6, v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7d
.end method

.method private isInArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z
    .registers 4
    .parameter "zip"
    .parameter "name"

    .prologue
    .line 396
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private loadFromArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B
    .registers 12
    .parameter "zip"
    .parameter "name"

    .prologue
    const/4 v8, 0x0

    .line 361
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 362
    .local v3, entry:Ljava/util/zip/ZipEntry;
    if-nez v3, :cond_9

    move-object v6, v8

    .line 389
    :goto_8
    return-object v6

    .line 375
    :cond_9
    :try_start_9
    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 376
    .local v5, stream:Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 377
    .local v1, byteStream:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 378
    .local v0, buf:[B
    :goto_1b
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    if-lez v2, :cond_2a

    .line 379
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1b

    .line 383
    .end local v0           #buf:[B
    .end local v1           #byteStream:Ljava/io/ByteArrayOutputStream;
    .end local v2           #count:I
    .end local v5           #stream:Ljava/io/InputStream;
    :catch_26
    move-exception v6

    move-object v4, v6

    .local v4, ioex:Ljava/io/IOException;
    move-object v6, v8

    .line 385
    goto :goto_8

    .line 381
    .end local v4           #ioex:Ljava/io/IOException;
    .restart local v0       #buf:[B
    .restart local v1       #byteStream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #count:I
    .restart local v5       #stream:Ljava/io/InputStream;
    :cond_2a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2d} :catch_26

    .line 389
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_8
.end method

.method private loadFromDirectory(Ljava/lang/String;)[B
    .registers 6
    .parameter "path"

    .prologue
    .line 344
    :try_start_0
    invoke-static {p1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 348
    :goto_4
    return-object v1

    .line 345
    :catch_5
    move-exception v0

    .line 346
    .local v0, ex:Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    const/4 v1, 0x0

    goto :goto_4
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 12
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
    const/16 v9, 0x2f

    const/16 v8, 0x2e

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, data:[B
    iget-object v6, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    array-length v4, v6

    .line 207
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v4, :cond_78

    .line 210
    iget-object v6, p0, Ldalvik/system/PathClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v6, v6, v3

    if-eqz v6, :cond_1c

    .line 211
    iget-object v6, p0, Ldalvik/system/PathClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v6, v6, v3

    invoke-virtual {v6, p1, p0}, Ldalvik/system/DexFile;->loadClassBinaryName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 212
    .local v0, clazz:Ljava/lang/Class;
    if-eqz v0, :cond_41

    .line 213
    return-object v0

    .line 214
    .end local v0           #clazz:Ljava/lang/Class;
    :cond_1c
    iget-object v6, p0, Ldalvik/system/PathClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v6, v6, v3

    if-eqz v6, :cond_44

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, fileName:Ljava/lang/String;
    iget-object v6, p0, Ldalvik/system/PathClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v6, v6, v3

    invoke-direct {p0, v6, v2}, Ldalvik/system/PathClassLoader;->loadFromArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B

    move-result-object v1

    .line 207
    .end local v2           #fileName:Ljava/lang/String;
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 218
    :cond_44
    iget-object v6, p0, Ldalvik/system/PathClassLoader;->mFiles:[Ljava/io/File;

    aget-object v5, v6, v3

    .line 219
    .local v5, pathFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .restart local v2       #fileName:Ljava/lang/String;
    invoke-direct {p0, v2}, Ldalvik/system/PathClassLoader;->loadFromDirectory(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_41

    .line 251
    .end local v2           #fileName:Ljava/lang/String;
    .end local v5           #pathFile:Ljava/io/File;
    :cond_78
    new-instance v6, Ljava/lang/ClassNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in loader "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "libname"

    .prologue
    .line 410
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, fileName:Ljava/lang/String;
    iget-object v5, p0, Ldalvik/system/PathClassLoader;->libraryPathElements:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 412
    .local v2, pathElement:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, pathName:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v4, test:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v5, v3

    .line 420
    .end local v2           #pathElement:Ljava/lang/String;
    .end local v3           #pathName:Ljava/lang/String;
    .end local v4           #test:Ljava/io/File;
    :goto_33
    return-object v5

    :cond_34
    const/4 v5, 0x0

    goto :goto_33
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 6
    .parameter "name"

    .prologue
    .line 268
    iget-object v3, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    array-length v1, v3

    .line 270
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_11

    .line 271
    invoke-direct {p0, p1, v0}, Ldalvik/system/PathClassLoader;->findResource(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v2

    .line 272
    .local v2, result:Ljava/net/URL;
    if-eqz v2, :cond_e

    move-object v3, v2

    .line 277
    .end local v2           #result:Ljava/net/URL;
    :goto_d
    return-object v3

    .line 270
    .restart local v2       #result:Ljava/net/URL;
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 277
    .end local v2           #result:Ljava/net/URL;
    :cond_11
    const/4 v3, 0x0

    goto :goto_d
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 7
    .parameter "resName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v4, p0, Ldalvik/system/PathClassLoader;->mPaths:[Ljava/lang/String;

    array-length v1, v4

    .line 290
    .local v1, length:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_17

    .line 292
    invoke-direct {p0, p1, v0}, Ldalvik/system/PathClassLoader;->findResource(Ljava/lang/String;I)Ljava/net/URL;

    move-result-object v2

    .line 293
    .local v2, result:Ljava/net/URL;
    if-eqz v2, :cond_14

    .line 294
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 297
    .end local v2           #result:Ljava/net/URL;
    :cond_17
    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v4

    return-object v4
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .registers 12
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 447
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 448
    monitor-enter p0

    .line 449
    :try_start_a
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v9

    .line 451
    .local v9, pack:Ljava/lang/Package;
    if-nez v9, :cond_23

    .line 452
    const-string v2, "Unknown"

    const-string v3, "0.0"

    const-string v4, "Unknown"

    const-string v5, "Unknown"

    const-string v6, "0.0"

    const-string v7, "Unknown"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Ldalvik/system/PathClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v9

    .line 455
    :cond_23
    monitor-exit p0

    move-object v0, v9

    .line 458
    .end local v9           #pack:Ljava/lang/Package;
    :goto_25
    return-object v0

    .line 456
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    move-object v0, v1

    .line 458
    goto :goto_25
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldalvik/system/PathClassLoader;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
