.class public final Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "QsbLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/QsbLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogEntrySet"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasVersion:Z

.field private logItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private version_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1391
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1396
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->version_:I

    .line 1412
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->logItem_:Ljava/util/List;

    .line 1468
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->cachedSize:I

    .line 1391
    return-void
.end method


# virtual methods
.method public addLogItem(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;
    .locals 1
    .parameter "value"

    .prologue
    .line 1429
    if-nez p1, :cond_0

    .line 1430
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->logItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->logItem_:Ljava/util/List;

    .line 1435
    :cond_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->logItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1436
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1470
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->cachedSize:I

    if-gez v0, :cond_0

    .line 1472
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->getSerializedSize()I

    .line 1474
    :cond_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->cachedSize:I

    return v0
.end method

.method public getLogItemCount()I
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->logItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLogItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->logItem_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1478
    const/4 v2, 0x0

    .line 1479
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->hasVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1480
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->getVersion()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1483
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->getLogItemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 1484
    .local v0, element:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1487
    .end local v0           #element:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    :cond_1
    iput v2, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->cachedSize:I

    .line 1488
    return v2
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1397
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->version_:I

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1398
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->hasVersion:Z

    return v0
.end method

.method public setVersion(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;
    .locals 1
    .parameter "value"

    .prologue
    .line 1400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->hasVersion:Z

    .line 1401
    iput p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->version_:I

    .line 1402
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
    .line 1460
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1461
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->getVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1463
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->getLogItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    .line 1464
    .local v0, element:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1466
    .end local v0           #element:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;
    :cond_1
    return-void
.end method
