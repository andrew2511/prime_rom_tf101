.class public final Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileNusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;",
        "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2597
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6000(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2591
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->buildParsed()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    .locals 1

    .prologue
    .line 2591
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2638
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2639
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2642
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    .locals 3

    .prologue
    .line 2600
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;-><init>()V

    .line 2601
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    new-instance v1, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;-><init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    .line 2602
    return-object v0
.end method


# virtual methods
.method public addAllMusicVideo(Ljava/lang/Iterable;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;",
            ">;)",
            "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 2736
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2737
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;Ljava/util/List;)Ljava/util/List;

    .line 2739
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2740
    return-object p0
.end method

.method public addMusicVideo(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2729
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;Ljava/util/List;)Ljava/util/List;

    .line 2731
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->build()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2732
    return-object p0
.end method

.method public addMusicVideo(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2718
    if-nez p1, :cond_0

    .line 2719
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2721
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2722
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;Ljava/util/List;)Ljava/util/List;

    .line 2724
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2725
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;
    .locals 1

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2631
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2633
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2591
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->build()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;
    .locals 3

    .prologue
    .line 2646
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    if-nez v1, :cond_0

    .line 2647
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2650
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 2651
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;Ljava/util/List;)Ljava/util/List;

    .line 2654
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    .line 2655
    .local v0, returnMe:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    .line 2656
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2591
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    .locals 2

    .prologue
    .line 2610
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    if-nez v0, :cond_0

    .line 2611
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2614
    :cond_0
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;-><init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    .line 2615
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2591
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->clear()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMusicVideo()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    .locals 2

    .prologue
    .line 2743
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;Ljava/util/List;)Ljava/util/List;

    .line 2744
    return-object p0
.end method

.method public clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    .locals 2

    .prologue
    .line 2619
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2591
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2591
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2591
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

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
    .line 2591
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;
    .locals 1

    .prologue
    .line 2623
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2591
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2591
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    move-result-object v0

    return-object v0
.end method

.method public getMusicVideo(I)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    .locals 1
    .parameter "index"

    .prologue
    .line 2704
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->getMusicVideo(I)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    move-result-object v0

    return-object v0
.end method

.method public getMusicVideoCount()I
    .locals 1

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->getMusicVideoCount()I

    move-result v0

    return v0
.end method

.method public getMusicVideoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;
    .locals 1

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2591
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->internalGetResult()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 2660
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2667
    :cond_0
    :goto_0
    return-object p0

    .line 2661
    :cond_1
    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2662
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2663
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;Ljava/util/List;)Ljava/util/List;

    .line 2665
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2675
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2676
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 2680
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2681
    :sswitch_0
    return-object p0

    .line 2686
    :sswitch_1
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    move-result-object v0

    .line 2687
    .local v0, subBuilder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2688
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->addMusicVideo(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

    goto :goto_0

    .line 2676
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 2591
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2591
    check-cast p1, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

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
    .line 2591
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMusicVideo(ILcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->build()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2715
    return-object p0
.end method

.method public setMusicVideo(ILcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2707
    if-nez p2, :cond_0

    .line 2708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2710
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2711
    return-object p0
.end method
