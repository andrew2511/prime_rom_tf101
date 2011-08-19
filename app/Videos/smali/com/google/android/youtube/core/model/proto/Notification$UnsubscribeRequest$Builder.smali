.class public final Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;",
        "Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1544
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1538
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->buildParsed()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 1

    .prologue
    .line 1538
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->create()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1585
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1589
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 3

    .prologue
    .line 1547
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;-><init>()V

    .line 1548
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    new-instance v1, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;-><init>(Lcom/google/android/youtube/core/model/proto/Notification$1;)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    .line 1549
    return-object v0
.end method


# virtual methods
.method public addAllChannelIds(Ljava/lang/Iterable;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 1754
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3700(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3702(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/util/List;)Ljava/util/List;

    .line 1757
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3700(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1758
    return-object p0
.end method

.method public addChannelIds(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1743
    if-nez p1, :cond_0

    .line 1744
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3700(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1747
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3702(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/util/List;)Ljava/util/List;

    .line 1749
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3700(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1750
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1580
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->build()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;
    .locals 3

    .prologue
    .line 1593
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    if-nez v1, :cond_0

    .line 1594
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1597
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3700(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1598
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3700(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3702(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/util/List;)Ljava/util/List;

    .line 1601
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    .line 1602
    .local v0, returnMe:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    .line 1603
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 2

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    if-nez v0, :cond_0

    .line 1558
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1561
    :cond_0
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;-><init>(Lcom/google/android/youtube/core/model/proto/Notification$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    .line 1562
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->clear()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAuthToken()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 2

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$4202(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Z)Z

    .line 1721
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$4302(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1722
    return-object p0
.end method

.method public clearChannelIds()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 2

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3702(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/util/List;)Ljava/util/List;

    .line 1762
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 2

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3802(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Z)Z

    .line 1679
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3902(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1680
    return-object p0
.end method

.method public clearUserId()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 2

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$4002(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Z)Z

    .line 1700
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$4102(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1701
    return-object p0
.end method

.method public clone()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 2

    .prologue
    .line 1566
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->create()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelIds(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getChannelIds(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelIdsCount()I
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getChannelIdsCount()I

    move-result v0

    return v0
.end method

.method public getChannelIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3700(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;
    .locals 1

    .prologue
    .line 1570
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasAuthToken()Z

    move-result v0

    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasDeviceId()Z

    move-result v0

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasUserId()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->internalGetResult()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1607
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1623
    :cond_0
    :goto_0
    return-object p0

    .line 1608
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1609
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->setDeviceId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    .line 1611
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1612
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    .line 1614
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasAuthToken()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1615
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->setAuthToken(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    .line 1617
    :cond_4
    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3700(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3700(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1619
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3702(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/util/List;)Ljava/util/List;

    .line 1621
    :cond_5
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3700(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3700(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1631
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1632
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1636
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1637
    :sswitch_0
    return-object p0

    .line 1642
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->setDeviceId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    goto :goto_0

    .line 1646
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    goto :goto_0

    .line 1650
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->setAuthToken(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    goto :goto_0

    .line 1654
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->addChannelIds(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    goto :goto_0

    .line 1632
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1538
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1538
    check-cast p1, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1538
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1712
    if-nez p1, :cond_0

    .line 1713
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$4202(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Z)Z

    .line 1716
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$4302(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1717
    return-object p0
.end method

.method public setChannelIds(ILjava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1736
    if-nez p2, :cond_0

    .line 1737
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1739
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3700(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1740
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1670
    if-nez p1, :cond_0

    .line 1671
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3802(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Z)Z

    .line 1674
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$3902(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1675
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1691
    if-nez p1, :cond_0

    .line 1692
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1694
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$4002(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Z)Z

    .line 1695
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->access$4102(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1696
    return-object p0
.end method
