.class public final Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bucket"
.end annotation


# instance fields
.field private analyticsCookie_:Ljava/lang/String;

.field private cachedSize:I

.field private document_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;",
            ">;"
        }
    .end annotation
.end field

.field private estimatedResults_:J

.field private fullContentsUrl_:Ljava/lang/String;

.field private hasAnalyticsCookie:Z

.field private hasEstimatedResults:Z

.field private hasFullContentsUrl:Z

.field private hasIconUrl:Z

.field private hasMultiCorpus:Z

.field private hasRelevance:Z

.field private hasTitle:Z

.field private iconUrl_:Ljava/lang/String;

.field private multiCorpus_:Z

.field private relevance_:D

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->multiCorpus_:Z

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->title_:Ljava/lang/String;

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->iconUrl_:Ljava/lang/String;

    .line 211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsUrl_:Ljava/lang/String;

    .line 228
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->relevance_:D

    .line 245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->estimatedResults_:J

    .line 262
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->analyticsCookie_:Ljava/lang/String;

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->cachedSize:I

    .line 122
    return-void
.end method


# virtual methods
.method public addDocument(Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-object p0
.end method

.method public getAnalyticsCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->analyticsCookie_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->cachedSize:I

    if-gez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getSerializedSize()I

    .line 330
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->cachedSize:I

    return v0
.end method

.method public getDocument(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "index"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    return-object p0
.end method

.method public getDocumentCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDocumentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->document_:Ljava/util/List;

    return-object v0
.end method

.method public getEstimatedResults()J
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->estimatedResults_:J

    return-wide v0
.end method

.method public getFullContentsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->iconUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiCorpus()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->multiCorpus_:Z

    return v0
.end method

.method public getRelevance()D
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->relevance_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocumentList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    .line 336
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 339
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasMultiCorpus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getMultiCorpus()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 344
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 347
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasIconUrl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 348
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 351
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsUrl()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 352
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getFullContentsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 355
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasRelevance()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 356
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getRelevance()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v2, v3

    .line 359
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasEstimatedResults()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 360
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getEstimatedResults()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 363
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasAnalyticsCookie()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 364
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 367
    :cond_7
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->cachedSize:I

    .line 368
    return v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnalyticsCookie()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasAnalyticsCookie:Z

    return v0
.end method

.method public hasEstimatedResults()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasEstimatedResults:Z

    return v0
.end method

.method public hasFullContentsUrl()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsUrl:Z

    return v0
.end method

.method public hasIconUrl()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasIconUrl:Z

    return v0
.end method

.method public hasMultiCorpus()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasMultiCorpus:Z

    return v0
.end method

.method public hasRelevance()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasRelevance:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 376
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 380
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    :sswitch_0
    return-object p0

    .line 386
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;-><init>()V

    .line 387
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 388
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->addDocument(Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 392
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setMultiCorpus(Z)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 396
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 400
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setIconUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 404
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setFullContentsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 408
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setRelevance(D)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 412
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setEstimatedResults(J)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 416
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    goto :goto_0

    .line 376
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x31 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
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
    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    move-result-object v0

    return-object v0
.end method

.method public setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasAnalyticsCookie:Z

    .line 267
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->analyticsCookie_:Ljava/lang/String;

    .line 268
    return-object p0
.end method

.method public setEstimatedResults(J)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasEstimatedResults:Z

    .line 250
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->estimatedResults_:J

    .line 251
    return-object p0
.end method

.method public setFullContentsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsUrl:Z

    .line 216
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->fullContentsUrl_:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasIconUrl:Z

    .line 199
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->iconUrl_:Ljava/lang/String;

    .line 200
    return-object p0
.end method

.method public setMultiCorpus(Z)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasMultiCorpus:Z

    .line 165
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->multiCorpus_:Z

    .line 166
    return-object p0
.end method

.method public setRelevance(D)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasRelevance:Z

    .line 233
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->relevance_:D

    .line 234
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasTitle:Z

    .line 182
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->title_:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocumentList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    .line 299
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 301
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasMultiCorpus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getMultiCorpus()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 307
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasIconUrl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 310
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasFullContentsUrl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 311
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getFullContentsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 313
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasRelevance()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 314
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getRelevance()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 316
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasEstimatedResults()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 317
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getEstimatedResults()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 319
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->hasAnalyticsCookie()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 320
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 322
    :cond_7
    return-void
.end method
