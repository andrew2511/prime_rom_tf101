.class public final Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DeviceDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DeviceDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceDocument"
.end annotation


# instance fields
.field private cachedSize:I

.field private creator_:Ljava/lang/String;

.field private descriptionHtml_:Ljava/lang/String;

.field private detailsUrl_:Ljava/lang/String;

.field private details_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

.field private docid_:Ljava/lang/String;

.field private finskyDoc_:Lcom/google/android/finsky/remoting/protos/Doc$Document;

.field private hasCreator:Z

.field private hasDescriptionHtml:Z

.field private hasDetails:Z

.field private hasDetailsUrl:Z

.field private hasDocid:Z

.field private hasFinskyDoc:Z

.field private hasMoreByBrowseUrl:Z

.field private hasMoreByHeader:Z

.field private hasMoreByListUrl:Z

.field private hasRelatedBrowseUrl:Z

.field private hasRelatedHeader:Z

.field private hasRelatedListUrl:Z

.field private hasReviewsUrl:Z

.field private hasShareUrl:Z

.field private moreByBrowseUrl_:Ljava/lang/String;

.field private moreByHeader_:Ljava/lang/String;

.field private moreByListUrl_:Ljava/lang/String;

.field private relatedBrowseUrl_:Ljava/lang/String;

.field private relatedHeader_:Ljava/lang/String;

.field private relatedListUrl_:Ljava/lang/String;

.field private reviewsUrl_:Ljava/lang/String;

.field private shareUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->finskyDoc_:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->docid_:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->detailsUrl_:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->reviewsUrl_:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->relatedListUrl_:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->relatedBrowseUrl_:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->relatedHeader_:Ljava/lang/String;

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->moreByListUrl_:Ljava/lang/String;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->moreByBrowseUrl_:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->moreByHeader_:Ljava/lang/String;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->shareUrl_:Ljava/lang/String;

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->creator_:Ljava/lang/String;

    .line 221
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->details_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->descriptionHtml_:Ljava/lang/String;

    .line 330
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->cachedSize:I

    if-gez v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getSerializedSize()I

    .line 336
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->cachedSize:I

    return v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->creator_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->descriptionHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->details_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    return-object v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->detailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDocid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->docid_:Ljava/lang/String;

    return-object v0
.end method

.method public getFinskyDoc()Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->finskyDoc_:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    return-object v0
.end method

.method public getMoreByBrowseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->moreByBrowseUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreByHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->moreByHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreByListUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->moreByListUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedBrowseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->relatedBrowseUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->relatedHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedListUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->relatedListUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->reviewsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasFinskyDoc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getFinskyDoc()Lcom/google/android/finsky/remoting/protos/Doc$Document;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDocid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDocid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasReviewsUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getReviewsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 357
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasRelatedListUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 358
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 361
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasMoreByListUrl()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 362
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasShareUrl()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 366
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasCreator()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 370
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDetails()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 374
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDescriptionHtml()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 378
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 381
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasRelatedBrowseUrl()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 382
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasMoreByBrowseUrl()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 386
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasRelatedHeader()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 390
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getRelatedHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 393
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasMoreByHeader()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 394
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getMoreByHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 397
    :cond_d
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->cachedSize:I

    .line 398
    return v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->shareUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCreator()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasCreator:Z

    return v0
.end method

.method public hasDescriptionHtml()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDescriptionHtml:Z

    return v0
.end method

.method public hasDetails()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDetails:Z

    return v0
.end method

.method public hasDetailsUrl()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDetailsUrl:Z

    return v0
.end method

.method public hasDocid()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDocid:Z

    return v0
.end method

.method public hasFinskyDoc()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasFinskyDoc:Z

    return v0
.end method

.method public hasMoreByBrowseUrl()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasMoreByBrowseUrl:Z

    return v0
.end method

.method public hasMoreByHeader()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasMoreByHeader:Z

    return v0
.end method

.method public hasMoreByListUrl()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasMoreByListUrl:Z

    return v0
.end method

.method public hasRelatedBrowseUrl()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasRelatedBrowseUrl:Z

    return v0
.end method

.method public hasRelatedHeader()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasRelatedHeader:Z

    return v0
.end method

.method public hasRelatedListUrl()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasRelatedListUrl:Z

    return v0
.end method

.method public hasReviewsUrl()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasReviewsUrl:Z

    return v0
.end method

.method public hasShareUrl()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasShareUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 406
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 410
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    :sswitch_0
    return-object p0

    .line 416
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;-><init>()V

    .line 417
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 418
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->setFinskyDoc(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    goto :goto_0

    .line 422
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->setDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    goto :goto_0

    .line 426
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    goto :goto_0

    .line 430
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->setReviewsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    goto :goto_0

    .line 434
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->setRelatedListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    goto :goto_0

    .line 438
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->setMoreByListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    goto :goto_0

    .line 442
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->setShareUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    goto :goto_0

    .line 446
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->setCreator(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    goto :goto_0

    .line 450
    :sswitch_9
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;-><init>()V

    .line 451
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 452
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->setDetails(Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    goto :goto_0

    .line 456
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    goto :goto_0

    .line 460
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->setRelatedBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    goto :goto_0

    .line 464
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->setMoreByBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    goto :goto_0

    .line 468
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->setRelatedHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    goto :goto_0

    .line 472
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->setMoreByHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    goto/16 :goto_0

    .line 406
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    move-result-object v0

    return-object v0
.end method

.method public setCreator(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "value"

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasCreator:Z

    .line 209
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->creator_:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "value"

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDescriptionHtml:Z

    .line 246
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->descriptionHtml_:Ljava/lang/String;

    .line 247
    return-object p0
.end method

.method public setDetails(Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "value"

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 228
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDetails:Z

    .line 229
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->details_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    .line 230
    return-object p0
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "value"

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDetailsUrl:Z

    .line 56
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->detailsUrl_:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public setDocid(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "value"

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDocid:Z

    .line 39
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->docid_:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method public setFinskyDoc(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "value"

    .prologue
    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasFinskyDoc:Z

    .line 22
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->finskyDoc_:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 23
    return-object p0
.end method

.method public setMoreByBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "value"

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasMoreByBrowseUrl:Z

    .line 158
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->moreByBrowseUrl_:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public setMoreByHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "value"

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasMoreByHeader:Z

    .line 175
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->moreByHeader_:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public setMoreByListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "value"

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasMoreByListUrl:Z

    .line 141
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->moreByListUrl_:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public setRelatedBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "value"

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasRelatedBrowseUrl:Z

    .line 107
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->relatedBrowseUrl_:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public setRelatedHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "value"

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasRelatedHeader:Z

    .line 124
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->relatedHeader_:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public setRelatedListUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "value"

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasRelatedListUrl:Z

    .line 90
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->relatedListUrl_:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public setReviewsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "value"

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasReviewsUrl:Z

    .line 73
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->reviewsUrl_:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public setShareUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "value"

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasShareUrl:Z

    .line 192
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->shareUrl_:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasFinskyDoc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getFinskyDoc()Lcom/google/android/finsky/remoting/protos/Doc$Document;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDocid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDocid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasReviewsUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getReviewsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 298
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasRelatedListUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 301
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasMoreByListUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 302
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 304
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasShareUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 305
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 307
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasCreator()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 308
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getCreator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 310
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 311
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 313
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDescriptionHtml()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 314
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 316
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasRelatedBrowseUrl()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 317
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 319
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasMoreByBrowseUrl()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 320
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 322
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasRelatedHeader()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 323
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getRelatedHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 325
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasMoreByHeader()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 326
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getMoreByHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 328
    :cond_d
    return-void
.end method
