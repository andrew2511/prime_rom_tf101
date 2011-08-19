.class public Ljava/util/jar/JarFile;
.super Ljava/util/zip/ZipFile;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarFile$JarFileInputStream;
    }
.end annotation


# static fields
.field public static final MANIFEST_NAME:Ljava/lang/String; = "META-INF/MANIFEST.MF"

.field static final META_DIR:Ljava/lang/String; = "META-INF/"


# instance fields
.field private closed:Z

.field private manifest:Ljava/util/jar/Manifest;

.field private manifestEntry:Ljava/util/zip/ZipEntry;

.field verifier:Ljava/util/jar/JarVerifier;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 5
    .parameter "file"
    .parameter "verify"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    .line 168
    if-eqz p2, :cond_13

    .line 169
    new-instance v0, Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 171
    :cond_13
    invoke-direct {p0}, Ljava/util/jar/JarFile;->readMetaEntries()V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZI)V
    .registers 6
    .parameter "file"
    .parameter "verify"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0, p1, p3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    .line 189
    if-eqz p2, :cond_13

    .line 190
    new-instance v0, Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 192
    :cond_13
    invoke-direct {p0}, Ljava/util/jar/JarFile;->readMetaEntries()V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "filename"
    .parameter "verify"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    .line 221
    if-eqz p2, :cond_f

    .line 222
    new-instance v0, Ljava/util/jar/JarVerifier;

    invoke-direct {v0, p1}, Ljava/util/jar/JarVerifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 224
    :cond_f
    invoke-direct {p0}, Ljava/util/jar/JarFile;->readMetaEntries()V

    .line 225
    return-void
.end method

.method private getMetaEntriesImpl()[Ljava/util/zip/ZipEntry;
    .registers 7

    .prologue
    .line 433
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 434
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 435
    .local v0, allEntries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 436
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 437
    .local v3, ze:Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "META-INF/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "META-INF/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_b

    .line 439
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 442
    .end local v3           #ze:Ljava/util/zip/ZipEntry;
    :cond_37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3f

    .line 443
    const/4 v4, 0x0

    .line 447
    :goto_3e
    return-object v4

    .line 445
    :cond_3f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Ljava/util/zip/ZipEntry;

    .line 446
    .local v2, result:[Ljava/util/zip/ZipEntry;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v4, v2

    .line 447
    goto :goto_3e
.end method

.method private readMetaEntries()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 323
    invoke-direct {p0}, Ljava/util/jar/JarFile;->getMetaEntriesImpl()[Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 324
    .local v6, metaEntries:[Ljava/util/zip/ZipEntry;
    if-nez v6, :cond_a

    .line 325
    iput-object v10, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 361
    :cond_9
    :goto_9
    return-void

    .line 329
    :cond_a
    const/4 v7, 0x0

    .line 331
    .local v7, signed:Z
    move-object v0, v6

    .local v0, arr$:[Ljava/util/zip/ZipEntry;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_e
    if-ge v3, v5, :cond_28

    aget-object v1, v0, v3

    .line 332
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, entryName:Ljava/lang/String;
    iget-object v8, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    if-nez v8, :cond_2d

    const-string v8, "META-INF/MANIFEST.MF"

    invoke-static {v8, v2}, Lorg/apache/harmony/archive/util/Util;->asciiEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 335
    iput-object v1, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    .line 337
    iget-object v8, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-nez v8, :cond_5a

    .line 358
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #entryName:Ljava/lang/String;
    :cond_28
    if-nez v7, :cond_9

    .line 359
    iput-object v10, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    goto :goto_9

    .line 342
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v2       #entryName:Ljava/lang/String;
    :cond_2d
    iget-object v8, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v8, :cond_5a

    const-string v8, ".SF"

    invoke-static {v2, v8}, Lorg/apache/harmony/archive/util/Util;->asciiEndsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_49

    const-string v8, ".DSA"

    invoke-static {v2, v8}, Lorg/apache/harmony/archive/util/Util;->asciiEndsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_49

    const-string v8, ".RSA"

    invoke-static {v2, v8}, Lorg/apache/harmony/archive/util/Util;->asciiEndsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 346
    :cond_49
    const/4 v7, 0x1

    .line 347
    invoke-super {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 349
    .local v4, is:Ljava/io/InputStream;
    :try_start_4e
    iget-object v8, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-static {v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/util/jar/JarVerifier;->addMetaEntry(Ljava/lang/String;[B)V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_5d

    .line 351
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 331
    .end local v4           #is:Ljava/io/InputStream;
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 351
    .restart local v4       #is:Ljava/io/InputStream;
    :catchall_5d
    move-exception v8

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v8
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    invoke-super {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/jar/JarFile;->closed:Z

    .line 460
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Ljava/util/jar/JarFile$1JarFileEnumerator;

    invoke-super {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Ljava/util/jar/JarFile$1JarFileEnumerator;-><init>(Ljava/util/jar/JarFile;Ljava/util/Enumeration;Ljava/util/jar/JarFile;)V

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 5
    .parameter "name"

    .prologue
    .line 417
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 418
    .local v1, ze:Ljava/util/zip/ZipEntry;
    if-nez v1, :cond_8

    move-object v2, v1

    .line 423
    :goto_7
    return-object v2

    .line 421
    :cond_8
    new-instance v0, Ljava/util/jar/JarEntry;

    invoke-direct {v0, v1}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 422
    .local v0, je:Ljava/util/jar/JarEntry;
    iput-object p0, v0, Ljava/util/jar/JarEntry;->parentJar:Ljava/util/jar/JarFile;

    move-object v2, v0

    .line 423
    goto :goto_7
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 8
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 375
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    if-eqz v2, :cond_8

    .line 376
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    .line 378
    :cond_8
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v2, :cond_43

    .line 379
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/jar/JarVerifier;->setManifest(Ljava/util/jar/Manifest;)V

    .line 380
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-eqz v2, :cond_23

    .line 381
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v3, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v3}, Ljava/util/jar/Manifest;->getMainAttributesEnd()I

    move-result v3

    iput v3, v2, Ljava/util/jar/JarVerifier;->mainAttributesEnd:I

    .line 383
    :cond_23
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier;->readCertificates()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 384
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier;->removeMetaEntries()V

    .line 385
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-eqz v2, :cond_39

    .line 386
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    invoke-virtual {v2}, Ljava/util/jar/Manifest;->removeChunks()V

    .line 388
    :cond_39
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {v2}, Ljava/util/jar/JarVerifier;->isSignedJar()Z

    move-result v2

    if-nez v2, :cond_43

    .line 389
    iput-object v4, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    .line 393
    :cond_43
    invoke-super {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 394
    .local v1, in:Ljava/io/InputStream;
    if-nez v1, :cond_4b

    move-object v2, v4

    .line 404
    :goto_4a
    return-object v2

    .line 397
    :cond_4b
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v2, :cond_59

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_5b

    :cond_59
    move-object v2, v1

    .line 398
    goto :goto_4a

    .line 400
    :cond_5b
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/jar/JarVerifier;->initEntry(Ljava/lang/String;)Ljava/util/jar/JarVerifier$VerifierEntry;

    move-result-object v0

    .line 401
    .local v0, entry:Ljava/util/jar/JarVerifier$VerifierEntry;
    if-nez v0, :cond_69

    move-object v2, v1

    .line 402
    goto :goto_4a

    .line 404
    :cond_69
    new-instance v2, Ljava/util/jar/JarFile$JarFileInputStream;

    invoke-direct {v2, v1, p1, v0}, Ljava/util/jar/JarFile$JarFileInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/jar/JarVerifier$VerifierEntry;)V

    goto :goto_4a
.end method

.method public getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    .registers 2
    .parameter "name"

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/jar/JarEntry;

    return-object p0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 284
    iget-boolean v2, p0, Ljava/util/jar/JarFile;->closed:Z

    if-eqz v2, :cond_d

    .line 285
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "JarFile has been closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_d
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    if-eqz v2, :cond_14

    .line 288
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    .line 309
    :goto_13
    return-object v2

    .line 291
    :cond_14
    :try_start_14
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-super {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 292
    .local v1, is:Ljava/io/InputStream;
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_1c} :catch_50

    if-eqz v2, :cond_36

    .line 294
    :try_start_1e
    iget-object v2, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    iget-object v3, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/jar/JarVerifier;->addMetaEntry(Ljava/lang/String;[B)V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_4b

    .line 296
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 298
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    invoke-super {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_35
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_35} :catch_50

    move-result-object v1

    .line 301
    :cond_36
    :try_start_36
    new-instance v2, Ljava/util/jar/Manifest;

    iget-object v3, p0, Ljava/util/jar/JarFile;->verifier:Ljava/util/jar/JarVerifier;

    if-eqz v3, :cond_55

    const/4 v3, 0x1

    :goto_3d
    invoke-direct {v2, v1, v3}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;Z)V

    iput-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_57

    .line 303
    :try_start_42
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 305
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;
    :try_end_48
    .catch Ljava/lang/NullPointerException; {:try_start_42 .. :try_end_48} :catch_50

    .line 309
    .end local v1           #is:Ljava/io/InputStream;
    :goto_48
    iget-object v2, p0, Ljava/util/jar/JarFile;->manifest:Ljava/util/jar/Manifest;

    goto :goto_13

    .line 296
    .restart local v1       #is:Ljava/io/InputStream;
    :catchall_4b
    move-exception v2

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_50
    .catch Ljava/lang/NullPointerException; {:try_start_4c .. :try_end_50} :catch_50

    .line 306
    .end local v1           #is:Ljava/io/InputStream;
    :catch_50
    move-exception v2

    move-object v0, v2

    .line 307
    .local v0, e:Ljava/lang/NullPointerException;
    iput-object v5, p0, Ljava/util/jar/JarFile;->manifestEntry:Ljava/util/zip/ZipEntry;

    goto :goto_48

    .line 301
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #is:Ljava/io/InputStream;
    :cond_55
    const/4 v3, 0x0

    goto :goto_3d

    .line 303
    :catchall_57
    move-exception v2

    :try_start_58
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_5c
    .catch Ljava/lang/NullPointerException; {:try_start_58 .. :try_end_5c} :catch_50
.end method
