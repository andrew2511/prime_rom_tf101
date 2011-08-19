.class public abstract Lcom/amazon/kcp/library/models/internal/CLocalBookItem;
.super Ljava/lang/Object;
.source "CLocalBookItem.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ILocalBookItem;


# instance fields
.field private atFRL:Lcom/amazon/foundation/internal/EventProvider;

.field private bookID:Lcom/amazon/kcp/library/models/IBookID;

.field protected closeDocumentCallback:Lcom/amazon/foundation/ICallback;

.field protected fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

.field protected imageFactory:Lcom/amazon/system/drawing/ImageFactory;

.field protected final lastReadDateChangeEvent:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

.field private localBookState:Lcom/amazon/kcp/library/models/LocalBookState;

.field private localStorage:Lcom/amazon/kcp/application/ILocalStorage;

.field protected openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

.field private proposeFRL:Lcom/amazon/foundation/internal/StringEventProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 1
    .parameter "fileSystem"
    .parameter "imageFactory"
    .parameter "localStorage"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 37
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 38
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 39
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    .line 41
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localBookState:Lcom/amazon/kcp/library/models/LocalBookState;

    .line 43
    new-instance v0, Lcom/amazon/foundation/internal/StringEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/StringEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->proposeFRL:Lcom/amazon/foundation/internal/StringEventProvider;

    .line 44
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->atFRL:Lcom/amazon/foundation/internal/EventProvider;

    .line 46
    new-instance v0, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->lastReadDateChangeEvent:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    .line 48
    new-instance v0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem$1;-><init>(Lcom/amazon/kcp/library/models/internal/CLocalBookItem;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->closeDocumentCallback:Lcom/amazon/foundation/ICallback;

    .line 63
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 64
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 65
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    .line 66
    return-void
.end method

.method private buildSyncMessage()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getServerLastPageRead()Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;

    move-result-object v0

    .line 174
    iget-object v1, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    const-string v2, "{0}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    const-string v2, "{1}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 193
    :goto_0
    return-object v0

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 181
    iget-object v1, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    const-string v3, "{0}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v3}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getPageLastPosition(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLocationFromPosition(I)I

    move-result v2

    .line 183
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    iget-object v2, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    iget-object v3, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    const-string v4, "{0}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    iget-object v4, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    const-string v5, "{1}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    iget v2, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->position:I

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getAmznUserLocationFromPosition(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object v2, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    iget-object v3, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    const-string v4, "{1}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v1, "\'\'"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    const-string v1, "\'\\{\'"

    const-string v2, "\\{"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v1, "\'\\}\'"

    const-string v2, "\\}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getCoverCacheDirectory()Ljava/lang/String;
    .locals 4

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, targetFilename:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v2}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 434
    .local v0, index:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "covers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-interface {v3}, Lcom/amazon/system/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getServerLastPageReadFilename()Ljava/lang/String;
    .locals 4

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, targetFilename:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 409
    .local v0, index:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 411
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".lpr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected computeBookID(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2
    .parameter "asin"
    .parameter "guid"
    .parameter "bookType"
    .parameter "absolutePath"
    .parameter "lastModifiedTime"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 83
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kcp/library/models/IBookID;

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    if-eqz p4, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_1

    .line 87
    new-instance v0, Lcom/amazon/kcp/library/models/internal/SideloadBookID;

    invoke-direct {v0, p4, p5, p6}, Lcom/amazon/kcp/library/models/internal/SideloadBookID;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kcp/library/models/IBookID;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide asin/guid or absolutePath/lastModifiedTime"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deSerializeCover()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getCoverPath()Ljava/lang/String;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v1, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->exists(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v1, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->inputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_1

    .line 300
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v2, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->fileSize(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 303
    if-lez v0, :cond_2

    .line 305
    new-array v0, v0, [B

    .line 306
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 313
    if-lez v2, :cond_0

    .line 315
    new-instance v2, Lcom/amazon/system/drawing/Dimension;

    invoke-direct {v2}, Lcom/amazon/system/drawing/Dimension;-><init>()V

    .line 316
    invoke-static {v0, v2}, Lcom/amazon/system/drawing/ImageTools;->getImageInfo([BLcom/amazon/system/drawing/Dimension;)I

    .line 317
    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    const/4 v4, 0x2

    invoke-interface {v3, v0, v2, v4}, Lcom/amazon/system/drawing/ImageFactory;->getImage([BLcom/amazon/system/drawing/Dimension;I)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    .line 319
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setCover(Lcom/amazon/system/drawing/Image;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 334
    :catch_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_0

    .line 324
    :catch_1
    move-exception v0

    .line 326
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 334
    :catch_2
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    .line 332
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 337
    :goto_2
    throw v0

    .line 334
    :catch_3
    move-exception v1

    .line 336
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_2

    .line 344
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move v0, v4

    .line 345
    goto :goto_1

    .line 347
    :catch_4
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v0, v4

    .line 356
    goto :goto_1
.end method

.method protected abstract getAmznUserLocationFromPosition(I)I
.end method

.method public getAtTheFurtherReadLocationEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->atFRL:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kcp/library/models/IBookID;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kcp/library/models/IBookID;

    return-object v0
.end method

.method public getCoverPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getAsin()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, strAsin:Ljava/lang/String;
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getCoverCacheDirectory()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, coverFolder:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 276
    move-object v1, v0

    .line 278
    .local v1, coverPath:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 283
    .end local v1           #coverPath:Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getFurthestReadLocationProposalEvent()Lcom/amazon/foundation/IStringEventProvider;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->proposeFRL:Lcom/amazon/foundation/internal/StringEventProvider;

    return-object v0
.end method

.method public getLastReadDateChangeEvent()Lcom/amazon/foundation/internal/ILocalBookItemEventProvider;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->lastReadDateChangeEvent:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    return-object v0
.end method

.method public getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localBookState:Lcom/amazon/kcp/library/models/LocalBookState;

    return-object v0
.end method

.method public getServerLastPageRead()Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;
    .locals 4

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, lastPageRead:Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;
    new-instance v1, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;

    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getServerLastPageReadFilename()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;-><init>(Ljava/lang/String;Lcom/amazon/system/io/IFileConnectionFactory;)V

    .line 229
    .local v1, lprCachefile:Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;
    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->load()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    new-instance v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;

    .end local v0           #lastPageRead:Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;
    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;-><init>()V

    .line 232
    .restart local v0       #lastPageRead:Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;
    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->getPosition()I

    move-result v2

    iput v2, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->position:I

    .line 233
    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    .line 236
    :cond_0
    return-object v0
.end method

.method public gotoFurthestReadLocation()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getServerLastPageRead()Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;

    move-result-object v1

    iget v1, v1, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->position:I

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/models/IBookNavigator;->gotoPosition(I)V

    .line 255
    return-void
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadLocalBookState()V
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kcp/library/models/IBookID;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/application/ILocalStorage;->loadLocalBookState(Lcom/amazon/kcp/library/models/IBookID;)Lcom/amazon/kcp/library/models/LocalBookState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :goto_0
    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/amazon/kcp/library/models/LocalBookState;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kcp/library/models/IBookID;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/LocalBookState;-><init>(Lcom/amazon/kcp/library/models/IBookID;Lcom/amazon/kcp/application/ILocalStorage;)V

    .line 126
    :cond_0
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localBookState:Lcom/amazon/kcp/library/models/LocalBookState;

    .line 127
    return-void

    .line 119
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read book state for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kcp/library/models/IBookID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected onBookClose()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 421
    return-void
.end method

.method public proposeFurthestReadLocation(I)V
    .locals 2
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getServerLastPageRead()Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->position:I

    if-ltz v1, :cond_0

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->proposeFurthestReadLocation(Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->buildSyncMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->proposeFRL:Lcom/amazon/foundation/internal/StringEventProvider;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/StringEventProvider;->notifyListeners(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->atFRL:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->proposeFurthestReadLocation(Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->buildSyncMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->proposeFRL:Lcom/amazon/foundation/internal/StringEventProvider;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/IBookNavigator$ServerLastPageReadDesc;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/foundation/internal/StringEventProvider;->notifyListeners(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract replaceAnnotationFile(Ljava/lang/String;)Z
.end method

.method public resetServerLastPageRead()Z
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getServerLastPageReadFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete LPR file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getServerLastPageReadFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    return v0
.end method

.method public serializeCover([B)V
    .locals 4
    .parameter

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getCoverPath()Ljava/lang/String;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v1, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->exists(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v1, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->deleteFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 379
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/amazon/system/io/internal/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v1

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to serialize this cover "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    if-eqz v1, :cond_1

    .line 387
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 388
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 389
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_1
    :goto_1
    return-void

    .line 374
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getCoverCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/system/io/internal/FileSystemHelper;->exists(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getCoverCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/system/io/internal/FileSystemHelper;->mkdir(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateServerLastPageRead(I[BILjava/lang/String;)Z
    .locals 3
    .parameter "lastPageReadPosition"
    .parameter "state"
    .parameter "stateLength"
    .parameter "description"

    .prologue
    .line 202
    new-instance v0, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;

    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getServerLastPageReadFilename()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;-><init>(Ljava/lang/String;Lcom/amazon/system/io/IFileConnectionFactory;)V

    .line 203
    .local v0, lprCachefile:Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;
    invoke-virtual {v0, p1, p4}, Lcom/amazon/kcp/library/models/internal/CServerLPRCacheFile;->save(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method
