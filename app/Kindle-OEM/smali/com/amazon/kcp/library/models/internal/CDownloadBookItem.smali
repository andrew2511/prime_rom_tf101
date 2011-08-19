.class public Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;
.super Ljava/lang/Object;
.source "CDownloadBookItem.java"

# interfaces
.implements Lcom/amazon/foundation/IStatusTracker;
.implements Lcom/amazon/kcp/library/models/IDownloadBookItem;


# instance fields
.field private asin:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private bookId:Lcom/amazon/kcp/library/models/internal/AmznBookID;

.field private bookType:I

.field private cover:Lcom/amazon/system/drawing/Image;

.field private coverState:I

.field private coverUrl:Ljava/lang/String;

.field private date:J

.field private downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

.field private downloadProgress:J

.field private downloadProgressChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

.field private downloadTarget:I

.field private errorState:Ljava/lang/String;

.field private errorSubstate:Ljava/lang/String;

.field private maxDownloadProgress:J

.field private publicationDate:Ljava/lang/String;

.field private sample:Z

.field private state:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->coverUrl:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->author:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->title:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->asin:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->publicationDate:Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->bookType:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->date:J

    .line 31
    iput v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->coverState:I

    .line 34
    iput v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadTarget:I

    .line 36
    new-instance v0, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    .line 37
    new-instance v0, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadProgressChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    .line 45
    const/4 v0, 0x6

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->state:I

    .line 46
    iput-boolean v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->sample:Z

    .line 47
    return-void
.end method


# virtual methods
.method public empty()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 239
    const/4 v0, 0x6

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->state:I

    .line 240
    iput-boolean v3, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->sample:Z

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->coverUrl:Ljava/lang/String;

    .line 242
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->author:Ljava/lang/String;

    .line 243
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->title:Ljava/lang/String;

    .line 244
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->asin:Ljava/lang/String;

    .line 245
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->publicationDate:Ljava/lang/String;

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->bookType:I

    .line 247
    iput-wide v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->date:J

    .line 248
    iput-wide v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadProgress:J

    .line 249
    iput-wide v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->maxDownloadProgress:J

    .line 250
    iput v3, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadTarget:I

    .line 251
    return-void
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kcp/library/models/IBookID;
    .locals 4

    .prologue
    .line 388
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->bookId:Lcom/amazon/kcp/library/models/internal/AmznBookID;

    if-nez v1, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, guid:Ljava/lang/String;
    new-instance v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->asin:Ljava/lang/String;

    iget v3, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->bookType:I

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->bookId:Lcom/amazon/kcp/library/models/internal/AmznBookID;

    .line 393
    .end local v0           #guid:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->bookId:Lcom/amazon/kcp/library/models/internal/AmznBookID;

    return-object v1
.end method

.method public getBookType()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->bookType:I

    return v0
.end method

.method public getCover()Lcom/amazon/system/drawing/Image;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->cover:Lcom/amazon/system/drawing/Image;

    return-object v0
.end method

.method public getCoverState()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->coverState:I

    return v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->date:J

    return-wide v0
.end method

.method public getDownloadBookItemChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    return-object v0
.end method

.method public getDownloadProgress()J
    .locals 2

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadProgress:J

    return-wide v0
.end method

.method public getDownloadProgressChangeEvent()Lcom/amazon/foundation/internal/IDownloadBookItemEventProvider;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadProgressChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    return-object v0
.end method

.method public getDownloadState()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->state:I

    return v0
.end method

.method public getDownloadTarget()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadTarget:I

    return v0
.end method

.method public getErrorState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->errorState:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorSubstate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->errorSubstate:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDownloadProgress()J
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->maxDownloadProgress:J

    return-wide v0
.end method

.method public getProcessedCoverImage(Lcom/amazon/system/drawing/Image;Lcom/amazon/system/drawing/Image;)Lcom/amazon/system/drawing/Image;
    .locals 2
    .parameter "noCoverAvailableImage"
    .parameter "loadingCoverImage"

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->getCoverState()I

    move-result v0

    .line 292
    .local v0, coverState:I
    packed-switch v0, :pswitch_data_0

    move-object v1, p2

    .line 302
    :goto_0
    return-object v1

    .line 295
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->getCover()Lcom/amazon/system/drawing/Image;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    move-object v1, p1

    .line 297
    goto :goto_0

    :pswitch_2
    move-object v1, p2

    .line 300
    goto :goto_0

    .line 292
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
    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->publicationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isImageValid()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->cover:Lcom/amazon/system/drawing/Image;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/CoverImageUtils;->isCoverValid(Lcom/amazon/system/drawing/Image;)Z

    move-result v0

    return v0
.end method

.method public isSample()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->sample:Z

    return v0
.end method

.method public reportCurrentProgress(J)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 352
    iput-wide p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadProgress:J

    .line 353
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadProgressChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 354
    return-void
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 358
    sget-object v0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->DOWNLOAD_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    sget-object v0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->CONTENT_SUBSTATE:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadTarget:I

    .line 368
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadProgressChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 370
    :cond_1
    return-void

    .line 364
    :cond_2
    sget-object v0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->SIDECAR_SUBSTATE:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x2

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadTarget:I

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 379
    iput-wide v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadProgress:J

    .line 380
    iput-wide v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->maxDownloadProgress:J

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadTarget:I

    .line 382
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadProgressChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 383
    return-void
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 1
    .parameter "asin"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->asin:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 171
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1
    .parameter "author"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->author:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 153
    return-void
.end method

.method public setBookType(I)V
    .locals 3
    .parameter "bookType"

    .prologue
    .line 322
    invoke-static {p1}, Lcom/amazon/kcp/library/models/BookType;->isValidBookType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid book-type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->bookType:I

    .line 327
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 328
    return-void
.end method

.method public setCover(Lcom/amazon/system/drawing/Image;)V
    .locals 1
    .parameter "cover"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->cover:Lcom/amazon/system/drawing/Image;

    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 214
    return-void
.end method

.method public setCoverState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 274
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->coverState:I

    .line 275
    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "coverUrl"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->coverUrl:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 144
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .parameter "date"

    .prologue
    .line 221
    iput-wide p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->date:J

    .line 222
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 223
    return-void
.end method

.method public setDownloadState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 191
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->state:I

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 193
    return-void
.end method

.method public setErrorState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "errorState"
    .parameter "errorSubstate"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->errorState:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->errorSubstate:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setMaxProgress(J)V
    .locals 0
    .parameter "max"

    .prologue
    .line 374
    iput-wide p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->maxDownloadProgress:J

    .line 375
    return-void
.end method

.method public setPublicationDate(Ljava/lang/String;)V
    .locals 1
    .parameter "publicationDate"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->publicationDate:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 232
    return-void
.end method

.method public setSample(Z)V
    .locals 1
    .parameter "sample"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->sample:Z

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 180
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->title:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CDownloadBookItem;->downloadBookItemChangeEvent:Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/DownloadBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 162
    return-void
.end method
