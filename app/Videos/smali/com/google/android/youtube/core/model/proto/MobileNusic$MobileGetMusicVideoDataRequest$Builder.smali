.class public final Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MobileNusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;",
        "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2280
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5400(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2274
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->buildParsed()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 1

    .prologue
    .line 2274
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2321
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2322
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2325
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 3

    .prologue
    .line 2283
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;-><init>()V

    .line 2284
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    new-instance v1, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;-><init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    .line 2285
    return-object v0
.end method


# virtual methods
.method public addAllVideoId(Ljava/lang/Iterable;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 2434
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5702(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;Ljava/util/List;)Ljava/util/List;

    .line 2437
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2438
    return-object p0
.end method

.method public addVideoId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2423
    if-nez p1, :cond_0

    .line 2424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2426
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2427
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5702(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;Ljava/util/List;)Ljava/util/List;

    .line 2429
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2430
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2316
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->build()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 3

    .prologue
    .line 2329
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    if-nez v1, :cond_0

    .line 2330
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2333
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 2334
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5702(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;Ljava/util/List;)Ljava/util/List;

    .line 2337
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    .line 2338
    .local v0, returnMe:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    .line 2339
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 2

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    if-nez v0, :cond_0

    .line 2294
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2297
    :cond_0
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;-><init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    .line 2298
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->clear()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCountryCode()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 2

    .prologue
    .line 2400
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5802(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;Z)Z

    .line 2401
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5902(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2402
    return-object p0
.end method

.method public clearVideoId()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 2

    .prologue
    .line 2441
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5702(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;Ljava/util/List;)Ljava/util/List;

    .line 2442
    return-object p0
.end method

.method public clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 2

    .prologue
    .line 2302
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->create()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

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
    .line 2274
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1

    .prologue
    .line 2306
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public getVideoId(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 2413
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getVideoId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoIdCount()I
    .locals 1

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getVideoIdCount()I

    move-result v0

    return v0
.end method

.method public getVideoIdList()Ljava/util/List;
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
    .line 2407
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->hasCountryCode()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->internalGetResult()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 2343
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2353
    :cond_0
    :goto_0
    return-object p0

    .line 2344
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2345
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->setCountryCode(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    .line 2347
    :cond_2
    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2348
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2349
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5702(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;Ljava/util/List;)Ljava/util/List;

    .line 2351
    :cond_3
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2361
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2362
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2366
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2367
    :sswitch_0
    return-object p0

    .line 2372
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->setCountryCode(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    goto :goto_0

    .line 2376
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->addVideoId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    goto :goto_0

    .line 2362
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 2274
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2274
    check-cast p1, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

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
    .line 2274
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCountryCode(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2392
    if-nez p1, :cond_0

    .line 2393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2395
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5802(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;Z)Z

    .line 2396
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5902(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2397
    return-object p0
.end method

.method public setVideoId(ILjava/lang/String;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2416
    if-nez p2, :cond_0

    .line 2417
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2419
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->access$5700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2420
    return-object p0
.end method
