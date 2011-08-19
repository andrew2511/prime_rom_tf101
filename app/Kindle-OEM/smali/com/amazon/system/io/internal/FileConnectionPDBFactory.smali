.class public Lcom/amazon/system/io/internal/FileConnectionPDBFactory;
.super Ljava/lang/Object;
.source "FileConnectionPDBFactory.java"

# interfaces
.implements Lcom/mobipocket/common/filesystem/PDBFactory;


# static fields
.field private static final CACHE_FILE_NAME:Ljava/lang/String; = "kindlereader.cache"

.field private static final ENCRYPTED_FILE_EXTENSION:Ljava/lang/String; = "rem"

.field private static final RECOGNIZED_EXTENSIONS:[Ljava/lang/String;


# instance fields
.field private cacheDirectory:Ljava/lang/String;

.field private eBooksDirectory:[Ljava/lang/String;

.field private final filefactory:Lcom/amazon/system/io/IFileConnectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".prc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".pdb"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".mobi"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->RECOGNIZED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/system/io/IFileConnectionFactory;)V
    .locals 5
    .parameter "fileFactory"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->filefactory:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->filefactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v3}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, separator:Ljava/lang/String;
    invoke-interface {p1}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/system/io/IPathDescriptor;->getApplicationPaths()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->eBooksDirectory:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->eBooksDirectory:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->eBooksDirectory:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->eBooksDirectory:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->eBooksDirectory:[Ljava/lang/String;

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-interface {p1}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/system/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->cacheDirectory:Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->cacheDirectory:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->cacheDirectory:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->cacheDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->cacheDirectory:Ljava/lang/String;

    .line 79
    :cond_2
    return-void
.end method

.method private list(Ljava/util/Vector;Ljava/util/Vector;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 335
    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->filefactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v0, p4}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v0

    .line 339
    if-eqz v0, :cond_8

    :try_start_1
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List all under bookFolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->list()[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v1

    move-object v2, v0

    move v0, v8

    .line 343
    :goto_0
    :try_start_2
    array-length v3, v1

    if-ge v0, v3, :cond_7

    .line 345
    aget-object v3, v1, v0

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tFound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->filefactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v5}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    if-eqz v4, :cond_2

    .line 349
    if-eqz v2, :cond_0

    .line 353
    :try_start_3
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    move-object v2, v9

    .line 361
    :cond_0
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->list(Ljava/util/Vector;Ljava/util/Vector;[Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v4, v8

    .line 365
    :goto_2
    array-length v5, p3

    if-ge v4, v5, :cond_1

    .line 367
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 368
    if-eqz p1, :cond_4

    aget-object v6, p3, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tFile added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 365
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 373
    :cond_4
    if-eqz p2, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/amazon/system/io/internal/FileSystemHelper;->getTemporaryExtension()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tTemp File added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 389
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 391
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 399
    if-eqz v1, :cond_5

    .line 403
    :try_start_6
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 411
    :cond_5
    :goto_5
    return-void

    .line 378
    :cond_6
    if-eqz p1, :cond_3

    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "rem"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 380
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "rem"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 381
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tFile added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 393
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 395
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 399
    if-eqz v1, :cond_5

    .line 403
    :try_start_9
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 407
    :catch_2
    move-exception v0

    goto :goto_5

    :cond_7
    move-object v0, v2

    .line 399
    :cond_8
    if-eqz v0, :cond_5

    .line 403
    :try_start_a
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_5

    .line 407
    :catch_3
    move-exception v0

    goto :goto_5

    .line 399
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_7
    if-eqz v1, :cond_9

    .line 403
    :try_start_b
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 407
    :cond_9
    :goto_8
    throw v0

    :catch_4
    move-exception v2

    goto/16 :goto_1

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_8

    .line 399
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    .line 393
    :catch_7
    move-exception v0

    move-object v1, v9

    goto :goto_6

    :catch_8
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_6

    .line 389
    :catch_9
    move-exception v0

    move-object v1, v9

    goto/16 :goto_4

    :catch_a
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_4
.end method


# virtual methods
.method public canRemoveFromCache(Ljava/lang/String;)Z
    .locals 3
    .parameter "identifier"

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, fsMounted:Z
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->eBooksDirectory:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->eBooksDirectory:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 470
    iget-object v2, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->eBooksDirectory:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    const/4 v0, 0x1

    .line 468
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    :cond_1
    return v0
.end method

.method public createBookIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 418
    const-string v0, ""

    .line 419
    const/4 v1, 0x0

    .line 420
    const/4 v2, 0x0

    move v5, v2

    move-object v2, v1

    move v1, v5

    :goto_0
    iget-object v3, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->eBooksDirectory:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->eBooksDirectory:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 424
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->eBooksDirectory:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".prc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 425
    iget-object v4, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->filefactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v4, v3}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;

    move-result-object v2

    .line 426
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v4

    if-eqz v4, :cond_1

    .line 442
    if-eqz v2, :cond_5

    .line 446
    :try_start_1
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    .line 455
    :cond_0
    :goto_1
    return-object v0

    .line 450
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_1

    .line 442
    :cond_1
    if-eqz v2, :cond_2

    .line 446
    :try_start_2
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 420
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    :catch_1
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    .line 434
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 442
    if-eqz v3, :cond_4

    .line 446
    :try_start_4
    invoke-interface {v3}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v2, v3

    .line 451
    goto :goto_2

    .line 450
    :catch_2
    move-exception v2

    move-object v2, v3

    goto :goto_2

    .line 436
    :catch_3
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    .line 438
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 442
    if-eqz v3, :cond_4

    .line 446
    :try_start_6
    invoke-interface {v3}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v2, v3

    .line 451
    goto :goto_2

    .line 450
    :catch_4
    move-exception v2

    move-object v2, v3

    goto :goto_2

    .line 442
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    .line 446
    :try_start_7
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 450
    :cond_3
    :goto_4
    throw v0

    :catch_5
    move-exception v3

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_4

    .line 442
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method public final deletePDB(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 90
    const/4 v0, 0x0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->filefactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v1, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v1

    if-nez v1, :cond_2

    .line 110
    :cond_0
    if-eqz v0, :cond_1

    .line 114
    :try_start_2
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move v0, v3

    .line 122
    :goto_1
    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 98
    :cond_2
    :try_start_3
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7

    move-result v1

    .line 110
    if-eqz v0, :cond_5

    .line 114
    :try_start_4
    invoke-interface {v0}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v1

    .line 119
    goto :goto_1

    .line 116
    :catch_1
    move-exception v0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 119
    goto :goto_1

    .line 100
    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 102
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 110
    if-eqz v1, :cond_4

    .line 114
    :try_start_6
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move v0, v3

    .line 119
    goto :goto_1

    .line 116
    :catch_3
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 119
    goto :goto_1

    .line 104
    :catch_4
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 106
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 110
    if-eqz v1, :cond_4

    .line 114
    :try_start_8
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    move v0, v3

    .line 119
    goto :goto_1

    .line 116
    :catch_5
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 119
    goto :goto_1

    .line 110
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_4
    if-eqz v1, :cond_3

    .line 114
    :try_start_9
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 119
    :cond_3
    :goto_5
    throw v0

    .line 116
    :catch_6
    move-exception v1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 110
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 104
    :catch_7
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    .line 100
    :catch_8
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_4
    move v0, v3

    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method

.method public final getBookSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 137
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 138
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->filefactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 140
    if-ge v1, v0, :cond_0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mbp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mbp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, fileName:Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->cacheDirectory:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->cacheDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kindlereader.cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    :cond_0
    return-object v0
.end method

.method public getLastModifiedDate(Ljava/lang/String;)J
    .locals 7
    .parameter

    .prologue
    .line 497
    const-wide/16 v0, 0x0

    .line 498
    const/4 v2, 0x0

    .line 501
    :try_start_0
    iget-object v3, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->filefactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v3, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 502
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->lastModified()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-wide v0

    .line 517
    :cond_0
    if-eqz v2, :cond_1

    .line 521
    :try_start_2
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 529
    :cond_1
    :goto_0
    return-wide v0

    .line 523
    :catch_0
    move-exception v2

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 507
    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 509
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 517
    if-eqz v3, :cond_1

    .line 521
    :try_start_4
    invoke-interface {v3}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 523
    :catch_2
    move-exception v2

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 511
    :catch_3
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 513
    :goto_2
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileConnectionPDBFactory - getLastModifiedDate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 517
    if-eqz v3, :cond_1

    .line 521
    :try_start_6
    invoke-interface {v3}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 523
    :catch_4
    move-exception v2

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 521
    :try_start_7
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 526
    :cond_2
    :goto_4
    throw v0

    .line 523
    :catch_5
    move-exception v1

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 517
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_3

    .line 511
    :catch_6
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_2

    .line 507
    :catch_7
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_1
.end method

.method public final getReadPDB(Ljava/lang/String;)Lcom/mobipocket/common/filesystem/ReadPDB;
    .locals 4
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->filefactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->openFileInputStream(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/system/io/IFileInputStream;

    move-result-object v0

    .line 164
    const/4 v1, 0x0

    .line 165
    if-eqz v0, :cond_1

    .line 167
    const/4 v2, 0x0

    .line 170
    :try_start_0
    new-instance v3, Lcom/amazon/system/io/internal/InputStreamReadPDB;

    invoke-direct {v3, v0}, Lcom/amazon/system/io/internal/InputStreamReadPDB;-><init>(Lcom/amazon/system/io/IFileInputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 171
    const/4 v1, 0x1

    .line 186
    if-nez v1, :cond_2

    .line 190
    :try_start_1
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    .line 199
    :goto_0
    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v3

    .line 195
    goto :goto_0

    .line 175
    :catch_1
    move-exception v3

    if-nez v2, :cond_1

    .line 190
    :try_start_2
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 195
    goto :goto_0

    .line 192
    :catch_2
    move-exception v0

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 195
    goto :goto_0

    .line 177
    :catch_3
    move-exception v3

    .line 179
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    if-nez v2, :cond_1

    .line 190
    :try_start_4
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v1

    .line 195
    goto :goto_0

    .line 192
    :catch_4
    move-exception v0

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 195
    goto :goto_0

    .line 186
    :catchall_0
    move-exception v1

    if-nez v2, :cond_0

    .line 190
    :try_start_5
    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 195
    :cond_0
    :goto_1
    throw v1

    .line 192
    :catch_5
    move-exception v0

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public final getWritePDB(Ljava/lang/String;[B)Lcom/mobipocket/common/filesystem/WritePDB;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 213
    .line 215
    const/4 v0, 0x0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->filefactory:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v1, p1}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 219
    :try_start_1
    new-instance v2, Lcom/amazon/system/io/internal/OutputStreamWritePDB;

    invoke-direct {v2, v1, p2}, Lcom/amazon/system/io/internal/OutputStreamWritePDB;-><init>(Lcom/amazon/system/io/IFileConnection;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    .line 220
    const/4 v0, 0x1

    .line 235
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 239
    :try_start_2
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v2

    .line 247
    :goto_0
    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 244
    goto :goto_0

    .line 224
    :catch_1
    move-exception v1

    move-object v1, v3

    :goto_1
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 239
    :try_start_3
    invoke-interface {v1}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v3

    .line 244
    goto :goto_0

    .line 241
    :catch_2
    move-exception v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v3

    .line 244
    goto :goto_0

    .line 226
    :catch_3
    move-exception v1

    move-object v2, v3

    .line 228
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 235
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 239
    :try_start_5
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v3

    .line 244
    goto :goto_0

    .line 241
    :catch_4
    move-exception v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v3

    .line 244
    goto :goto_0

    .line 235
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_3
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 239
    :try_start_6
    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 244
    :cond_0
    :goto_4
    throw v1

    .line 241
    :catch_5
    move-exception v0

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 235
    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_3

    :catchall_2
    move-exception v1

    goto :goto_3

    .line 226
    :catch_6
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_2

    .line 224
    :catch_7
    move-exception v2

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto/16 :goto_0

    :cond_2
    move-object v0, v2

    goto/16 :goto_0
.end method

.method protected list(Ljava/util/Vector;Ljava/util/Vector;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->eBooksDirectory:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->eBooksDirectory:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->eBooksDirectory:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->list(Ljava/util/Vector;Ljava/util/Vector;[Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method public listCompleteAndPartialBooks(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 1
    .parameter "completeBooks"
    .parameter "partialBooks"

    .prologue
    .line 298
    sget-object v0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->RECOGNIZED_EXTENSIONS:[Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->list(Ljava/util/Vector;Ljava/util/Vector;[Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public final listEBooks()Ljava/util/Vector;
    .locals 3

    .prologue
    .line 262
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 263
    .local v0, rep:Ljava/util/Vector;
    const/4 v1, 0x0

    sget-object v2, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->RECOGNIZED_EXTENSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->list(Ljava/util/Vector;Ljava/util/Vector;[Ljava/lang/String;)V

    .line 264
    return-object v0
.end method

.method public final listPartialEBooks()Ljava/util/Vector;
    .locals 3

    .prologue
    .line 280
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 281
    .local v0, partialBooks:Ljava/util/Vector;
    const/4 v1, 0x0

    sget-object v2, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->RECOGNIZED_EXTENSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->list(Ljava/util/Vector;Ljava/util/Vector;[Ljava/lang/String;)V

    .line 282
    return-object v0
.end method
