.class Ljava/net/URLClassLoader$URLJarHandler;
.super Ljava/net/URLClassLoader$URLHandler;
.source "URLClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "URLJarHandler"
.end annotation


# instance fields
.field final index:Ljava/net/URLClassLoader$IndexFile;

.field final jf:Ljava/util/jar/JarFile;

.field final prefixName:Ljava/lang/String;

.field final subHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/URL;",
            "Ljava/net/URLClassLoader$URLHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/net/URLClassLoader;


# direct methods
.method public constructor <init>(Ljava/net/URLClassLoader;Ljava/net/URL;Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter "url"
    .parameter "jarURL"
    .parameter "jf"
    .parameter "prefixName"

    .prologue
    .line 297
    iput-object p1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    .line 298
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader$URLHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    .line 295
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->subHandlers:Ljava/util/Map;

    .line 299
    iput-object p4, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    .line 300
    iput-object p5, p0, Ljava/net/URLClassLoader$URLJarHandler;->prefixName:Ljava/lang/String;

    .line 301
    iput-object p3, p0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    .line 302
    const-string v1, "META-INF/INDEX.LIST"

    invoke-virtual {p4, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 303
    .local v0, je:Ljava/util/jar/JarEntry;
    if-nez v0, :cond_1e

    const/4 v1, 0x0

    :goto_1b
    iput-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    .line 304
    return-void

    .line 303
    :cond_1e
    invoke-static {p4, v0, p2}, Ljava/net/URLClassLoader$IndexFile;->readIndexFile(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/net/URL;)Ljava/net/URLClassLoader$IndexFile;

    move-result-object v1

    goto :goto_1b
.end method

.method public constructor <init>(Ljava/net/URLClassLoader;Ljava/net/URL;Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/lang/String;Ljava/net/URLClassLoader$IndexFile;)V
    .registers 8
    .parameter
    .parameter "url"
    .parameter "jarURL"
    .parameter "jf"
    .parameter "prefixName"
    .parameter "index"

    .prologue
    .line 306
    iput-object p1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    .line 307
    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader$URLHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;)V

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/net/URLClassLoader$URLJarHandler;->subHandlers:Ljava/util/Map;

    .line 308
    iput-object p4, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    .line 309
    iput-object p5, p0, Ljava/net/URLClassLoader$URLJarHandler;->prefixName:Ljava/lang/String;

    .line 310
    iput-object p6, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    .line 311
    iput-object p3, p0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    .line 312
    return-void
.end method

.method private createClass(Ljava/util/jar/JarEntry;Ljava/util/jar/Manifest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 23
    .parameter "entry"
    .parameter "manifest"
    .parameter "packageName"
    .parameter "origName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarEntry;",
            "Ljava/util/jar/Manifest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 383
    const/16 v16, 0x0

    .line 384
    .local v16, is:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 386
    .local v13, clBuf:[B
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v16

    .line 387
    #calls: Ljava/net/URLClassLoader;->getBytes(Ljava/io/InputStream;)[B
    invoke-static/range {v16 .. v16}, Ljava/net/URLClassLoader;->access$000(Ljava/io/InputStream;)[B
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_67
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_60

    move-result-object v13

    .line 391
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 393
    if-eqz p3, :cond_43

    .line 394
    const/16 v4, 0x2f

    const/16 v5, 0x2e

    move-object/from16 v0, p3

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, packageDotName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    move-object v4, v0

    #calls: Ljava/net/URLClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;
    invoke-static {v4, v5}, Ljava/net/URLClassLoader;->access$400(Ljava/net/URLClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v17

    .line 396
    .local v17, packageObj:Ljava/lang/Package;
    if-nez v17, :cond_7c

    .line 397
    if-eqz p2, :cond_6c

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    move-object v6, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p2

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/util/jar/Manifest;Ljava/net/URL;)Ljava/lang/Package;

    .line 418
    .end local v5           #packageDotName:Ljava/lang/String;
    .end local v17           #packageObj:Ljava/lang/Package;
    :cond_43
    :goto_43
    new-instance v11, Ljava/security/CodeSource;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    move-object v4, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-direct {v11, v4, v5}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    .line 419
    .local v11, codeS:Ljava/security/CodeSource;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    move-object v6, v0

    const/4 v9, 0x0

    array-length v10, v13

    move-object/from16 v7, p4

    move-object v8, v13

    #calls: Ljava/net/URLClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;
    invoke-static/range {v6 .. v11}, Ljava/net/URLClassLoader;->access$700(Ljava/net/URLClassLoader;Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v4

    .end local v11           #codeS:Ljava/security/CodeSource;
    :goto_5f
    return-object v4

    .line 388
    :catch_60
    move-exception v4

    move-object v14, v4

    .line 389
    .local v14, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .line 391
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_5f

    .end local v14           #e:Ljava/io/IOException;
    :catchall_67
    move-exception v4

    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .line 401
    .restart local v5       #packageDotName:Ljava/lang/String;
    .restart local v17       #packageObj:Ljava/lang/Package;
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    move-object v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    #calls: Ljava/net/URLClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;
    invoke-static/range {v4 .. v12}, Ljava/net/URLClassLoader;->access$500(Ljava/net/URLClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    goto :goto_43

    .line 405
    :cond_7c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Package;->isSealed()Z

    move-result v15

    .line 406
    .local v15, exception:Z
    if-eqz p2, :cond_b7

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #packageDotName:Ljava/lang/String;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    #calls: Ljava/net/URLClassLoader;->isSealed(Ljava/util/jar/Manifest;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Ljava/net/URLClassLoader;->access$600(Ljava/net/URLClassLoader;Ljava/util/jar/Manifest;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLClassLoader$URLJarHandler;->codeSourceUrl:Ljava/net/URL;

    move-object v4, v0

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Package;->isSealed(Ljava/net/URL;)Z

    move-result v4

    if-nez v4, :cond_cb

    const/4 v4, 0x1

    move v15, v4

    .line 412
    :cond_b7
    :goto_b7
    if-eqz v15, :cond_43

    .line 413
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Package %s is sealed"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 408
    :cond_cb
    const/4 v4, 0x0

    move v15, v4

    goto :goto_b7
.end method

.method private createURLSubJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .registers 15
    .parameter "url"

    .prologue
    const/4 v12, 0x0

    .line 479
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v7

    .line 480
    .local v7, file:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 481
    const-string v5, ""

    .line 492
    .local v5, prefixName:Ljava/lang/String;
    :goto_13
    :try_start_13
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/JarURLConnection;

    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFileURL()Ljava/net/URL;

    move-result-object v3

    .line 494
    .local v3, jarURL:Ljava/net/URL;
    new-instance v1, Ljava/net/URL;

    const-string v2, "jar"

    const-string v6, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v2, v6, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/JarURLConnection;

    .line 497
    .local v8, juc:Ljava/net/JarURLConnection;
    invoke-virtual {v8}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v4

    .line 498
    .local v4, jf:Ljava/util/jar/JarFile;
    new-instance v0, Ljava/net/URLClassLoader$URLJarHandler;

    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ljava/net/URLClassLoader$URLJarHandler;-><init>(Ljava/net/URLClassLoader;Ljava/net/URL;Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/lang/String;Ljava/net/URLClassLoader$IndexFile;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_50} :catch_64

    .local v0, jarH:Ljava/net/URLClassLoader$URLJarHandler;
    move-object v1, v0

    .line 503
    .end local v0           #jarH:Ljava/net/URLClassLoader$URLJarHandler;
    .end local v3           #jarURL:Ljava/net/URL;
    .end local v4           #jf:Ljava/util/jar/JarFile;
    .end local v5           #prefixName:Ljava/lang/String;
    .end local v8           #juc:Ljava/net/JarURLConnection;
    :goto_51
    return-object v1

    .line 483
    :cond_52
    const-string v1, "!/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 484
    .local v9, sepIdx:I
    const/4 v1, -0x1

    if-ne v9, v1, :cond_5d

    move-object v1, v12

    .line 486
    goto :goto_51

    .line 488
    :cond_5d
    add-int/lit8 v9, v9, 0x2

    .line 489
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #prefixName:Ljava/lang/String;
    goto :goto_13

    .line 501
    .end local v9           #sepIdx:I
    :catch_64
    move-exception v1

    move-object v1, v12

    .line 503
    goto :goto_51
.end method

.method private declared-synchronized getSubHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    .registers 6
    .parameter "url"

    .prologue
    .line 459
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Ljava/net/URLClassLoader$URLJarHandler;->subHandlers:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URLClassLoader$URLHandler;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3d

    .line 460
    .local v1, sub:Ljava/net/URLClassLoader$URLHandler;
    if-eqz v1, :cond_e

    move-object v2, v1

    .line 474
    .end local v1           #sub:Ljava/net/URLClassLoader$URLHandler;
    .local v2, sub:Ljava/net/URLClassLoader$URLHandler;
    :goto_c
    monitor-exit p0

    return-object v2

    .line 463
    .end local v2           #sub:Ljava/net/URLClassLoader$URLHandler;
    .restart local v1       #sub:Ljava/net/URLClassLoader$URLHandler;
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, protocol:Ljava/lang/String;
    const-string v3, "jar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 465
    iget-object v3, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    #calls: Ljava/net/URLClassLoader;->createURLJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    invoke-static {v3, p1}, Ljava/net/URLClassLoader;->access$800(Ljava/net/URLClassLoader;Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v1

    .line 471
    :goto_20
    if-eqz v1, :cond_27

    .line 472
    iget-object v3, p0, Ljava/net/URLClassLoader$URLJarHandler;->subHandlers:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    move-object v2, v1

    .line 474
    .end local v1           #sub:Ljava/net/URLClassLoader$URLHandler;
    .restart local v2       #sub:Ljava/net/URLClassLoader$URLHandler;
    goto :goto_c

    .line 466
    .end local v2           #sub:Ljava/net/URLClassLoader$URLHandler;
    .restart local v1       #sub:Ljava/net/URLClassLoader$URLHandler;
    :cond_29
    const-string v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 467
    invoke-direct {p0, p1}, Ljava/net/URLClassLoader$URLJarHandler;->createURLSubJarHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v1

    goto :goto_20

    .line 469
    :cond_36
    iget-object v3, p0, Ljava/net/URLClassLoader$URLJarHandler;->this$0:Ljava/net/URLClassLoader;

    #calls: Ljava/net/URLClassLoader;->createURLHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    invoke-static {v3, p1}, Ljava/net/URLClassLoader;->access$900(Ljava/net/URLClassLoader;Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_3d

    move-result-object v1

    goto :goto_20

    .line 459
    .end local v0           #protocol:Ljava/lang/String;
    .end local v1           #sub:Ljava/net/URLClassLoader$URLHandler;
    :catchall_3d
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 14
    .parameter "packageName"
    .parameter "name"
    .parameter "origName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ljava/net/URLClassLoader$URLJarHandler;->prefixName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, entryName:Ljava/lang/String;
    iget-object v8, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    invoke-virtual {v8, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 347
    .local v0, entry:Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_27

    .line 354
    :try_start_1b
    iget-object v8, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    invoke-virtual {v8}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v4

    .line 355
    .local v4, manifest:Ljava/util/jar/Manifest;
    invoke-direct {p0, v0, v4, p1, p3}, Ljava/net/URLClassLoader$URLJarHandler;->createClass(Ljava/util/jar/JarEntry;Ljava/util/jar/Manifest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_26

    move-result-object v8

    .line 379
    .end local v4           #manifest:Ljava/util/jar/Manifest;
    :goto_25
    return-object v8

    .line 356
    :catch_26
    move-exception v8

    .line 359
    :cond_27
    iget-object v8, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    if-eqz v8, :cond_5f

    .line 361
    if-nez p1, :cond_58

    .line 362
    iget-object v8, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    invoke-virtual {v8, p2}, Ljava/net/URLClassLoader$IndexFile;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 366
    .local v7, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    :goto_33
    if-eqz v7, :cond_5f

    .line 367
    iget-object v8, p0, Ljava/net/URLClassLoader$URLJarHandler;->url:Ljava/net/URL;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/URL;

    .line 369
    .local v6, url:Ljava/net/URL;
    invoke-direct {p0, v6}, Ljava/net/URLClassLoader$URLJarHandler;->getSubHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v2

    .line 370
    .local v2, h:Ljava/net/URLClassLoader$URLHandler;
    if-eqz v2, :cond_3e

    .line 371
    invoke-virtual {v2, p1, p2, p3}, Ljava/net/URLClassLoader$URLHandler;->findClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 372
    .local v5, res:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v5, :cond_3e

    move-object v8, v5

    .line 373
    goto :goto_25

    .line 364
    .end local v2           #h:Ljava/net/URLClassLoader$URLHandler;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #res:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #url:Ljava/net/URL;
    .end local v7           #urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    :cond_58
    iget-object v8, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    invoke-virtual {v8, p1}, Ljava/net/URLClassLoader$IndexFile;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .restart local v7       #urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    goto :goto_33

    .line 379
    .end local v7           #urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    :cond_5f
    const/4 v8, 0x0

    goto :goto_25
.end method

.method findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 10
    .parameter "name"

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader$URLJarHandler;->findResourceInOwn(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 433
    .local v4, res:Ljava/net/URL;
    if-eqz v4, :cond_8

    move-object v7, v4

    .line 455
    :goto_7
    return-object v7

    .line 436
    :cond_8
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    if-eqz v7, :cond_47

    .line 437
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 440
    .local v3, pos:I
    if-lez v3, :cond_45

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 441
    .local v2, indexedName:Ljava/lang/String;
    :goto_1a
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    invoke-virtual {v7, v2}, Ljava/net/URLClassLoader$IndexFile;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 442
    .local v6, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    if-eqz v6, :cond_47

    .line 443
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->url:Ljava/net/URL;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 444
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URL;

    .line 445
    .local v5, url:Ljava/net/URL;
    invoke-direct {p0, v5}, Ljava/net/URLClassLoader$URLJarHandler;->getSubHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    .line 446
    .local v0, h:Ljava/net/URLClassLoader$URLHandler;
    if-eqz v0, :cond_2b

    .line 447
    invoke-virtual {v0, p1}, Ljava/net/URLClassLoader$URLHandler;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 448
    if-eqz v4, :cond_2b

    move-object v7, v4

    .line 449
    goto :goto_7

    .end local v0           #h:Ljava/net/URLClassLoader$URLHandler;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #indexedName:Ljava/lang/String;
    .end local v5           #url:Ljava/net/URL;
    .end local v6           #urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    :cond_45
    move-object v2, p1

    .line 440
    goto :goto_1a

    .line 455
    .end local v3           #pos:I
    :cond_47
    const/4 v7, 0x0

    goto :goto_7
.end method

.method findResourceInOwn(Ljava/lang/String;)Ljava/net/URL;
    .registers 5
    .parameter "name"

    .prologue
    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URLClassLoader$URLJarHandler;->prefixName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, entryName:Ljava/lang/String;
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->jf:Ljava/util/jar/JarFile;

    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 425
    iget-object v1, p0, Ljava/net/URLClassLoader$URLJarHandler;->url:Ljava/net/URL;

    invoke-virtual {p0, v1, p1}, Ljava/net/URLClassLoader$URLJarHandler;->targetURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 427
    :goto_21
    return-object v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method findResources(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 11
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p2, resources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    invoke-virtual {p0, p1}, Ljava/net/URLClassLoader$URLJarHandler;->findResourceInOwn(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 321
    .local v4, res:Ljava/net/URL;
    if-eqz v4, :cond_f

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 322
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_f
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    if-eqz v7, :cond_4a

    .line 325
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 328
    .local v3, pos:I
    if-lez v3, :cond_48

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 329
    .local v2, indexedName:Ljava/lang/String;
    :goto_21
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    invoke-virtual {v7, v2}, Ljava/net/URLClassLoader$IndexFile;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 330
    .local v6, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    if-eqz v6, :cond_4a

    .line 331
    iget-object v7, p0, Ljava/net/URLClassLoader$URLJarHandler;->url:Ljava/net/URL;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URL;

    .line 333
    .local v5, url:Ljava/net/URL;
    invoke-direct {p0, v5}, Ljava/net/URLClassLoader$URLJarHandler;->getSubHandler(Ljava/net/URL;)Ljava/net/URLClassLoader$URLHandler;

    move-result-object v0

    .line 334
    .local v0, h:Ljava/net/URLClassLoader$URLHandler;
    if-eqz v0, :cond_32

    .line 335
    invoke-virtual {v0, p1, p2}, Ljava/net/URLClassLoader$URLHandler;->findResources(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_32

    .end local v0           #h:Ljava/net/URLClassLoader$URLHandler;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #indexedName:Ljava/lang/String;
    .end local v5           #url:Ljava/net/URL;
    .end local v6           #urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/URL;>;"
    :cond_48
    move-object v2, p1

    .line 328
    goto :goto_21

    .line 341
    .end local v3           #pos:I
    :cond_4a
    return-void
.end method

.method getIndex()Ljava/net/URLClassLoader$IndexFile;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Ljava/net/URLClassLoader$URLJarHandler;->index:Ljava/net/URLClassLoader$IndexFile;

    return-object v0
.end method
