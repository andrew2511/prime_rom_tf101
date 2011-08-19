.class public final Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BookInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BookInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookDetails"
.end annotation


# instance fields
.field private author_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private hasIsbn:Z

.field private hasNumberOfPages:Z

.field private hasPublicationDate:Z

.field private hasPublisher:Z

.field private hasSubtitle:Z

.field private isbn_:Ljava/lang/String;

.field private numberOfPages_:I

.field private publicationDate_:Ljava/lang/String;

.field private publisher_:Ljava/lang/String;

.field private subject_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;",
            ">;"
        }
    .end annotation
.end field

.field private subtitle_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 299
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    .line 332
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    .line 366
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publisher_:Ljava/lang/String;

    .line 383
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publicationDate_:Ljava/lang/String;

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->isbn_:Ljava/lang/String;

    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->numberOfPages_:I

    .line 434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subtitle_:Ljava/lang/String;

    .line 495
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->cachedSize:I

    .line 292
    return-void
.end method


# virtual methods
.method public addAuthor(Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    return-object p0
.end method

.method public addSubject(Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    return-object p0
.end method

.method public getAuthorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->author_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSerializedSize()I

    .line 501
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->cachedSize:I

    return v0
.end method

.method public getIsbn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->isbn_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->numberOfPages_:I

    return v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publicationDate_:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publisher_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 505
    const/4 v2, 0x0

    .line 506
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSubjectList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    .line 507
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 510
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 511
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublisher()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 514
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 515
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublicationDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 518
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasIsbn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 519
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getIsbn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 522
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 523
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getNumberOfPages()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 526
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasSubtitle()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 527
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 530
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAuthorList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    .line 531
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 534
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    :cond_6
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->cachedSize:I

    .line 535
    return v2
.end method

.method public getSubjectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subject_:Ljava/util/List;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public hasIsbn()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasIsbn:Z

    return v0
.end method

.method public hasNumberOfPages()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages:Z

    return v0
.end method

.method public hasPublicationDate()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate:Z

    return v0
.end method

.method public hasPublisher()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher:Z

    return v0
.end method

.method public hasSubtitle()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasSubtitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 543
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 547
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    :sswitch_0
    return-object p0

    .line 553
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;-><init>()V

    .line 554
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 555
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->addSubject(Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 559
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setPublisher(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 563
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setPublicationDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 567
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setIsbn(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 571
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setNumberOfPages(I)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 575
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->setSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 579
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;-><init>()V

    .line 580
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 581
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->addAuthor(Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    goto :goto_0

    .line 543
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1a -> :sswitch_1
        0x22 -> :sswitch_2
        0x2a -> :sswitch_3
        0x32 -> :sswitch_4
        0x38 -> :sswitch_5
        0x42 -> :sswitch_6
        0x4a -> :sswitch_7
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
    .line 290
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v0

    return-object v0
.end method

.method public setIsbn(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasIsbn:Z

    .line 405
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->isbn_:Ljava/lang/String;

    .line 406
    return-object p0
.end method

.method public setNumberOfPages(I)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages:Z

    .line 422
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->numberOfPages_:I

    .line 423
    return-object p0
.end method

.method public setPublicationDate(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate:Z

    .line 388
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publicationDate_:Ljava/lang/String;

    .line 389
    return-object p0
.end method

.method public setPublisher(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher:Z

    .line 371
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->publisher_:Ljava/lang/String;

    .line 372
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasSubtitle:Z

    .line 439
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->subtitle_:Ljava/lang/String;

    .line 440
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSubjectList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;

    .line 473
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 475
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookSubject;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublisher()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 478
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 479
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublicationDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 481
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasIsbn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 482
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getIsbn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 484
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 485
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getNumberOfPages()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 487
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasSubtitle()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 488
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 490
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getAuthorList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;

    .line 491
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 493
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BookInfo$BookAuthor;
    :cond_6
    return-void
.end method
