.class public final Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;",
        "Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->buildParsed()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->create()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 3

    .prologue
    .line 201
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;-><init>()V

    .line 202
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    new-instance v1, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;-><init>(Lcom/google/android/youtube/core/model/proto/Notification$1;)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    .line 203
    return-object v0
.end method


# virtual methods
.method public addAllChannelIds(Ljava/lang/Iterable;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$300(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$302(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/util/List;)Ljava/util/List;

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$300(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 412
    return-object p0
.end method

.method public addChannelIds(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 397
    if-nez p1, :cond_0

    .line 398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$300(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$302(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/util/List;)Ljava/util/List;

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$300(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->build()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 3

    .prologue
    .line 247
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    if-nez v1, :cond_0

    .line 248
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$300(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 252
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$300(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$302(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/util/List;)Ljava/util/List;

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    .line 256
    .local v0, returnMe:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    .line 257
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->buildPartial()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;-><init>(Lcom/google/android/youtube/core/model/proto/Notification$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    .line 216
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->clear()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAuthToken()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$802(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Z)Z

    .line 375
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$902(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    return-object p0
.end method

.method public clearChannelIds()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$302(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/util/List;)Ljava/util/List;

    .line 416
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$402(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Z)Z

    .line 333
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$502(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public clearUserId()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$602(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Z)Z

    .line 354
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$702(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    return-object p0
.end method

.method public clone()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 2

    .prologue
    .line 220
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->create()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

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
    .line 192
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->clone()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelIds(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getChannelIds(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelIdsCount()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getChannelIdsCount()I

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
    .line 381
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$300(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasAuthToken()Z

    move-result v0

    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasDeviceId()Z

    move-result v0

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasUserId()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->internalGetResult()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 261
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-object p0

    .line 262
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->setDeviceId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    .line 265
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    .line 268
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasAuthToken()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->setAuthToken(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    .line 271
    :cond_4
    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$300(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$300(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 273
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$302(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/util/List;)Ljava/util/List;

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$300(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$300(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 286
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 290
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    :sswitch_0
    return-object p0

    .line 296
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->setDeviceId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    goto :goto_0

    .line 300
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    goto :goto_0

    .line 304
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->setAuthToken(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    goto :goto_0

    .line 308
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->addChannelIds(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    goto :goto_0

    .line 286
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
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    check-cast p1, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

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
    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$802(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Z)Z

    .line 370
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$902(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    return-object p0
.end method

.method public setChannelIds(ILjava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 390
    if-nez p2, :cond_0

    .line 391
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$300(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 394
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$402(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Z)Z

    .line 328
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$502(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 346
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$602(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Z)Z

    .line 349
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->result:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->access$702(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    return-object p0
.end method
