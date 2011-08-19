.class public Lcom/amazon/kcp/library/models/internal/MetaData;
.super Lcom/amazon/kcp/internal/webservices/WebServiceModel;
.source "MetaData.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/internal/IMetadata;


# instance fields
.field private asin:Ljava/lang/String;

.field private authors:Ljava/util/Vector;

.field private bookId:Lcom/amazon/kcp/library/models/IBookID;

.field private cdeContentType:Ljava/lang/String;

.field private changeCallback:Lcom/amazon/foundation/ICallback;

.field private contentType:Ljava/lang/String;

.field private cover:Lcom/amazon/kcp/application/internal/IDownloadableImage;

.field private downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

.field private downloadProgress:J

.field private downloadProgressChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

.field private downloadTarget:I

.field private errorState:Ljava/lang/String;

.field private errorSubstate:Ljava/lang/String;

.field private maxDownloadProgress:J

.field private publicationDate:Ljava/lang/String;

.field private publishers:Ljava/util/Vector;

.field private state:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/amazon/kcp/internal/webservices/WebServiceModel;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->title:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    .line 27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentType:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publicationDate:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    .line 31
    iput v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->state:I

    .line 36
    iput v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadTarget:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cover:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    .line 39
    new-instance v0, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    .line 40
    new-instance v0, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadProgressChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    .line 42
    new-instance v0, Lcom/amazon/kcp/library/models/internal/MetaData$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/MetaData$1;-><init>(Lcom/amazon/kcp/library/models/internal/MetaData;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->changeCallback:Lcom/amazon/foundation/ICallback;

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->changeCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/EventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/models/internal/MetaData;)Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    return-object v0
.end method

.method public static getNonResizedCoverUrlFromAsin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "asin"

    .prologue
    .line 405
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 409
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://ecx.images-amazon.com/images/P/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".01.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addAuthor(Ljava/lang/String;)V
    .locals 1
    .parameter "author"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 218
    return-void
.end method

.method public addPublisher(Ljava/lang/String;)V
    .locals 1
    .parameter "publisher"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 232
    return-void
.end method

.method public cloneModel()Lcom/amazon/kcp/library/models/internal/MetaData;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/amazon/kcp/library/models/internal/MetaData;

    invoke-direct {v0}, Lcom/amazon/kcp/library/models/internal/MetaData;-><init>()V

    .line 66
    .local v0, metaData:Lcom/amazon/kcp/library/models/internal/MetaData;
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kcp/library/models/internal/MetaData;->title:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentType:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentType:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publicationDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kcp/library/models/internal/MetaData;->publicationDate:Ljava/lang/String;

    .line 71
    iget v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->state:I

    iput v1, v0, Lcom/amazon/kcp/library/models/internal/MetaData;->state:I

    .line 72
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cover:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    iput-object v1, v0, Lcom/amazon/kcp/library/models/internal/MetaData;->cover:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    .line 73
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    iput-object v1, v0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    .line 74
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    iput-object v1, v0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    .line 75
    iget-wide v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadProgress:J

    iput-wide v1, v0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadProgress:J

    .line 76
    iget-wide v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->maxDownloadProgress:J

    iput-wide v1, v0, Lcom/amazon/kcp/library/models/internal/MetaData;->maxDownloadProgress:J

    .line 77
    iget v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadTarget:I

    iput v1, v0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadTarget:I

    .line 79
    return-object v0
.end method

.method public copy(Lcom/amazon/kcp/library/models/internal/IMetadata;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 239
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->title:Ljava/lang/String;

    .line 240
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    .line 241
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getAuthors()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    .line 242
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentType:Ljava/lang/String;

    .line 243
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getCdeContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    .line 244
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getPublishers()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    .line 245
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publicationDate:Ljava/lang/String;

    .line 246
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadState()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->state:I

    .line 247
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadProgress()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadProgress:J

    .line 248
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getMaxDownloadProgress()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->maxDownloadProgress:J

    .line 249
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadTarget()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadTarget:I

    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 252
    return-void
.end method

.method public empty()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->title:Ljava/lang/String;

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    .line 262
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentType:Ljava/lang/String;

    .line 263
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    .line 264
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    .line 265
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publicationDate:Ljava/lang/String;

    .line 266
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->state:I

    .line 267
    iput-wide v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadProgress:J

    .line 268
    iput-wide v1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->maxDownloadProgress:J

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadTarget:I

    .line 270
    return-void
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 168
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getAuthors()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->authors:Ljava/util/Vector;

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kcp/library/models/IBookID;
    .locals 4

    .prologue
    .line 518
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->bookId:Lcom/amazon/kcp/library/models/IBookID;

    if-nez v2, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, guid:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)I

    move-result v1

    .line 522
    .local v1, type:I
    new-instance v2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->bookId:Lcom/amazon/kcp/library/models/IBookID;

    .line 524
    .end local v0           #guid:Ljava/lang/String;
    .end local v1           #type:I
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->bookId:Lcom/amazon/kcp/library/models/IBookID;

    return-object v2
.end method

.method public getBookType()I
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)I

    move-result v0

    .line 453
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown content type: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_0
    return v0
.end method

.method public getCdeContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Lcom/amazon/system/drawing/Image;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cover:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cover:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/IDownloadableImage;->getImage()Lcom/amazon/system/drawing/Image;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoverState()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cover:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cover:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/IDownloadableImage;->getDownloadState()I

    move-result v0

    .line 370
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/MetaData;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/MetaData;->getNonResizedCoverUrlFromAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 186
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    return-object v0
.end method

.method public getDownloadProgress()J
    .locals 2

    .prologue
    .line 467
    iget-wide v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadProgress:J

    return-wide v0
.end method

.method public getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadProgressChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    return-object v0
.end method

.method public getDownloadState()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->state:I

    return v0
.end method

.method public getDownloadTarget()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadTarget:I

    return v0
.end method

.method public getErrorState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->errorState:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorSubstate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->errorSubstate:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDownloadProgress()J
    .locals 2

    .prologue
    .line 472
    iget-wide v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->maxDownloadProgress:J

    return-wide v0
.end method

.method public getProcessedCoverImage(Lcom/amazon/system/drawing/Image;Lcom/amazon/system/drawing/Image;)Lcom/amazon/system/drawing/Image;
    .locals 2
    .parameter "noCoverAvailableImage"
    .parameter "loadingCoverImage"

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/MetaData;->getCoverState()I

    move-result v0

    .line 436
    .local v0, coverState:I
    packed-switch v0, :pswitch_data_0

    move-object v1, p2

    .line 446
    :goto_0
    return-object v1

    .line 439
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/MetaData;->getCover()Lcom/amazon/system/drawing/Image;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    move-object v1, p1

    .line 441
    goto :goto_0

    :pswitch_2
    move-object v1, p2

    .line 444
    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publicationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishers()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publishers:Ljava/util/Vector;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSample()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public reportCurrentProgress(J)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 482
    iput-wide p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadProgress:J

    .line 483
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadProgressChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 484
    return-void
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 488
    sget-object v0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->DOWNLOAD_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    sget-object v0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->CONTENT_SUBSTATE:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadTarget:I

    .line 498
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadProgressChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 500
    :cond_1
    return-void

    .line 494
    :cond_2
    sget-object v0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->SIDECAR_SUBSTATE:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x2

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadTarget:I

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 509
    iput-wide v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadProgress:J

    .line 510
    iput-wide v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->maxDownloadProgress:J

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadTarget:I

    .line 512
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->downloadProgressChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 513
    return-void
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 1
    .parameter "asin"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->asin:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 100
    :cond_1
    return-void
.end method

.method public setCdeContentType(Ljava/lang/String;)V
    .locals 1
    .parameter "cdeContentType"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cdeContentType:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 337
    :cond_1
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .parameter "contentType"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->contentType:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 349
    :cond_1
    return-void
.end method

.method public setCover(Lcom/amazon/system/drawing/Image;)V
    .locals 1
    .parameter "cover"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cover:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/internal/IDownloadableImage;->setImage(Lcom/amazon/system/drawing/Image;)V

    .line 357
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 358
    return-void
.end method

.method public setDownloadState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 107
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->state:I

    if-ne v0, p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->state:I

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setErrorState(Ljava/lang/String;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->errorState:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setErrorSubstate(Ljava/lang/String;)V
    .locals 0
    .parameter "errorSubstate"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->errorSubstate:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setImage(Lcom/amazon/kcp/application/internal/IDownloadableImage;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cover:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    .line 418
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->cover:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/IDownloadableImage;->getImage()Lcom/amazon/system/drawing/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/internal/MetaData;->setCover(Lcom/amazon/system/drawing/Image;)V

    .line 419
    return-void
.end method

.method public setMaxProgress(J)V
    .locals 0
    .parameter "max"

    .prologue
    .line 504
    iput-wide p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->maxDownloadProgress:J

    .line 505
    return-void
.end method

.method public setPublicationDate(Ljava/lang/String;)V
    .locals 1
    .parameter "publicationDate"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publicationDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publicationDate:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->publicationDate:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 383
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->title:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/MetaData;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 395
    :cond_1
    return-void
.end method
