.class Ldalvik/system/TouchDexLoader;
.super Ljava/lang/ClassLoader;
.source "TouchDexLoader.java"


# instance fields
.field private final mDexs:[Ldalvik/system/DexFile;

.field private final mFiles:[Ljava/io/File;

.field private final mLibPaths:[Ljava/lang/String;

.field private final mPaths:[Ljava/lang/String;

.field private final mZips:[Ljava/util/zip/ZipFile;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 13
    .parameter "path"
    .parameter "parent"

    .prologue
    .line 59
    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 61
    if-nez p1, :cond_b

    .line 62
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 64
    :cond_b
    iput-object p1, p0, Ldalvik/system/TouchDexLoader;->path:Ljava/lang/String;

    .line 66
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    .line 68
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    array-length v7, v7

    new-array v7, v7, [Ljava/io/File;

    iput-object v7, p0, Ldalvik/system/TouchDexLoader;->mFiles:[Ljava/io/File;

    .line 69
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    array-length v7, v7

    new-array v7, v7, [Ljava/util/zip/ZipFile;

    iput-object v7, p0, Ldalvik/system/TouchDexLoader;->mZips:[Ljava/util/zip/ZipFile;

    .line 70
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    array-length v7, v7

    new-array v7, v7, [Ldalvik/system/DexFile;

    iput-object v7, p0, Ldalvik/system/TouchDexLoader;->mDexs:[Ldalvik/system/DexFile;

    .line 72
    const-string v7, "android.vm.dexfile"

    const-string v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 76
    .local v6, wantDex:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_39
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_a1

    .line 78
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, pathFile:Ljava/io/File;
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mFiles:[Ljava/io/File;

    aput-object v3, v7, v1

    .line 81
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_84

    .line 92
    if-eqz v6, :cond_5c

    .line 95
    :try_start_53
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mDexs:[Ldalvik/system/DexFile;

    new-instance v8, Ldalvik/system/DexFile;

    invoke-direct {v8, v3}, Ldalvik/system/DexFile;-><init>(Ljava/io/File;)V

    aput-object v8, v7, v1
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5c} :catch_5f

    .line 76
    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 97
    :catch_5f
    move-exception v7

    move-object v2, v7

    .line 98
    .local v2, ioex:Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " as DEX"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5c

    .line 103
    .end local v2           #ioex:Ljava/io/IOException;
    :cond_84
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5c

    .line 110
    .end local v3           #pathFile:Ljava/io/File;
    :cond_a1
    const-string v7, "java.library.path"

    const-string v8, "."

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, pathList:Ljava/lang/String;
    const-string v7, "path.separator"

    const-string v8, ":"

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, pathSep:Ljava/lang/String;
    const-string v7, "file.separator"

    const-string v8, "/"

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, fileSep:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ldalvik/system/TouchDexLoader;->mLibPaths:[Ljava/lang/String;

    .line 118
    const/4 v1, 0x0

    :goto_c0
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mLibPaths:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_e9

    .line 119
    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e6

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ldalvik/system/TouchDexLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v9, v8, v1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v1

    .line 118
    :cond_e6
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    .line 124
    :cond_e9
    return-void
.end method

.method private isInArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z
    .registers 4
    .parameter "zip"
    .parameter "name"

    .prologue
    .line 294
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

    .line 259
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 260
    .local v3, entry:Ljava/util/zip/ZipEntry;
    if-nez v3, :cond_9

    move-object v6, v8

    .line 287
    :goto_8
    return-object v6

    .line 273
    :cond_9
    :try_start_9
    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 274
    .local v5, stream:Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 275
    .local v1, byteStream:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 276
    .local v0, buf:[B
    :goto_1b
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    if-lez v2, :cond_2a

    .line 277
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1b

    .line 281
    .end local v0           #buf:[B
    .end local v1           #byteStream:Ljava/io/ByteArrayOutputStream;
    .end local v2           #count:I
    .end local v5           #stream:Ljava/io/InputStream;
    :catch_26
    move-exception v6

    move-object v4, v6

    .local v4, ioex:Ljava/io/IOException;
    move-object v6, v8

    .line 283
    goto :goto_8

    .line 279
    .end local v4           #ioex:Ljava/io/IOException;
    .restart local v0       #buf:[B
    .restart local v1       #byteStream:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #count:I
    .restart local v5       #stream:Ljava/io/InputStream;
    :cond_2a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2d} :catch_26

    .line 287
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_8
.end method

.method private loadFromDirectory(Ljava/lang/String;)[B
    .registers 6
    .parameter "path"

    .prologue
    .line 242
    :try_start_0
    invoke-static {p1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 246
    :goto_4
    return-object v1

    .line 243
    :catch_5
    move-exception v0

    .line 244
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

    .line 246
    const/4 v1, 0x0

    goto :goto_4
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 24
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
    .line 138
    const/4 v15, 0x0

    .line 143
    .local v15, data:[B
    const/16 v18, 0x0

    .local v18, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_fd

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/TouchDexLoader;->mDexs:[Ldalvik/system/DexFile;

    move-object v5, v0

    aget-object v5, v5, v18

    if-eqz v5, :cond_37

    .line 147
    const/16 v5, 0x2e

    const/16 v6, 0x2f

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v21

    .line 148
    .local v21, slashName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/TouchDexLoader;->mDexs:[Ldalvik/system/DexFile;

    move-object v5, v0

    aget-object v5, v5, v18

    move-object v0, v5

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v14

    .line 149
    .local v14, clazz:Ljava/lang/Class;
    if-eqz v14, :cond_6f

    move-object v5, v14

    .line 181
    .end local v14           #clazz:Ljava/lang/Class;
    .end local v21           #slashName:Ljava/lang/String;
    :goto_36
    return-object v5

    .line 151
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/TouchDexLoader;->mZips:[Ljava/util/zip/ZipFile;

    move-object v5, v0

    aget-object v5, v5, v18

    if-eqz v5, :cond_af

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 153
    .local v17, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/TouchDexLoader;->mZips:[Ljava/util/zip/ZipFile;

    move-object v5, v0

    aget-object v5, v5, v18

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ldalvik/system/TouchDexLoader;->loadFromArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B

    move-result-object v15

    .line 167
    .end local v17           #fileName:Ljava/lang/String;
    :cond_6f
    :goto_6f
    if-eqz v15, :cond_f9

    .line 169
    const/16 v5, 0x2e

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 170
    .local v16, dotIndex:I
    const/4 v5, -0x1

    move/from16 v0, v16

    move v1, v5

    if-eq v0, v1, :cond_a1

    .line 171
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, packageName:Ljava/lang/String;
    monitor-enter p0

    .line 173
    :try_start_8b
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Ldalvik/system/TouchDexLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v19

    .line 174
    .local v19, packageObj:Ljava/lang/Package;
    if-nez v19, :cond_a0

    .line 175
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Ldalvik/system/TouchDexLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    .line 178
    :cond_a0
    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_8b .. :try_end_a1} :catchall_f6

    .line 181
    .end local v6           #packageName:Ljava/lang/String;
    .end local v19           #packageObj:Ljava/lang/Package;
    :cond_a1
    const/4 v5, 0x0

    array-length v6, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ldalvik/system/TouchDexLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v5

    goto :goto_36

    .line 155
    .end local v16           #dotIndex:I
    :cond_af
    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/TouchDexLoader;->mFiles:[Ljava/io/File;

    move-object v5, v0

    aget-object v20, v5, v18

    .line 156
    .local v20, pathFile:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    move-object v6, v0

    aget-object v6, v6, v18

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 159
    .restart local v17       #fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ldalvik/system/TouchDexLoader;->loadFromDirectory(Ljava/lang/String;)[B

    move-result-object v15

    goto/16 :goto_6f

    .line 178
    .end local v17           #fileName:Ljava/lang/String;
    .end local v20           #pathFile:Ljava/io/File;
    .restart local v6       #packageName:Ljava/lang/String;
    .restart local v16       #dotIndex:I
    :catchall_f6
    move-exception v5

    :try_start_f7
    monitor-exit p0
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v5

    .line 143
    .end local v6           #packageName:Ljava/lang/String;
    .end local v16           #dotIndex:I
    :cond_f9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 185
    :cond_fd
    new-instance v5, Ljava/lang/ClassNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in loader "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "libname"

    .prologue
    .line 304
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, fileName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v4, p0, Ldalvik/system/TouchDexLoader;->mLibPaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2f

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ldalvik/system/TouchDexLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, pathName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v3, test:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object v4, v2

    .line 313
    .end local v2           #pathName:Ljava/lang/String;
    .end local v3           #test:Ljava/io/File;
    :goto_2b
    return-object v4

    .line 305
    .restart local v2       #pathName:Ljava/lang/String;
    .restart local v3       #test:Ljava/io/File;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 313
    .end local v2           #pathName:Ljava/lang/String;
    .end local v3           #test:Ljava/io/File;
    :cond_2f
    const/4 v4, 0x0

    goto :goto_2b
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 11
    .parameter "name"

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 198
    .local v0, data:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v6, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_bc

    .line 199
    iget-object v6, p0, Ldalvik/system/TouchDexLoader;->mFiles:[Ljava/io/File;

    aget-object v4, v6, v3

    .line 200
    .local v4, pathFile:Ljava/io/File;
    iget-object v6, p0, Ldalvik/system/TouchDexLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v5, v6, v3

    .line 201
    .local v5, zip:Ljava/util/zip/ZipFile;
    if-eqz v5, :cond_42

    .line 202
    invoke-direct {p0, v5, p1}, Ldalvik/system/TouchDexLoader;->isInArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 206
    :try_start_17
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jar:file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_39} :catch_3a

    .line 231
    .end local v4           #pathFile:Ljava/io/File;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    :goto_39
    return-object v6

    .line 208
    .restart local v4       #pathFile:Ljava/io/File;
    .restart local v5       #zip:Ljava/util/zip/ZipFile;
    :catch_3a
    move-exception v6

    move-object v2, v6

    .line 209
    .local v2, e:Ljava/net/MalformedURLException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 212
    .end local v2           #e:Ljava/net/MalformedURLException;
    :cond_42
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 213
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, dataFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_95

    .line 218
    :try_start_6e
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/net/MalformedURLException; {:try_start_6e .. :try_end_86} :catch_87

    goto :goto_39

    .line 220
    :catch_87
    move-exception v6

    move-object v2, v6

    .line 221
    .restart local v2       #e:Ljava/net/MalformedURLException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 224
    .end local v1           #dataFile:Ljava/io/File;
    .end local v2           #e:Ljava/net/MalformedURLException;
    :cond_8f
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_99

    .line 198
    :cond_95
    :goto_95
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 226
    :cond_99
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TouchDexLoader: can\'t find \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ldalvik/system/TouchDexLoader;->mPaths:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_95

    .line 231
    .end local v4           #pathFile:Ljava/io/File;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    :cond_bc
    const/4 v6, 0x0

    goto/16 :goto_39
.end method
