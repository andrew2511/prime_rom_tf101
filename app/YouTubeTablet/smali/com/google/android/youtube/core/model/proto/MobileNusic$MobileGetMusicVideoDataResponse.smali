.class public final Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileNusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/MobileNusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileGetMusicVideoDataResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;


# instance fields
.field private memoizedSerializedSize:I

.field private musicVideo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2751
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    .line 2752
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic;->internalForceInit()V

    .line 2753
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->initFields()V

    .line 2754
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2460
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->musicVideo_:Ljava/util/List;

    .line 2503
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->memoizedSerializedSize:I

    .line 2461
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->initFields()V

    .line 2462
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2457
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 2463
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2476
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->musicVideo_:Ljava/util/List;

    .line 2503
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->memoizedSerializedSize:I

    .line 2463
    return-void
.end method

.method static synthetic access$6300(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->musicVideo_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2457
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->musicVideo_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;
    .locals 1

    .prologue
    .line 2467
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2487
    return-void
.end method

.method public static newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;
    .locals 1

    .prologue
    .line 2584
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->access$6100()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2542
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;->access$6000(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
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
    .line 2479
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->musicVideo_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2505
    iget v2, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->memoizedSerializedSize:I

    .line 2506
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 2514
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 2508
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 2509
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->getMusicVideoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    .line 2510
    .local v0, element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 2513
    .end local v0           #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    :cond_1
    iput v2, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->memoizedSerializedSize:I

    move v3, v2

    .line 2514
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 2489
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->getMusicVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    .line 2490
    .local v0, element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 2492
    .end local v0           #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2497
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->getSerializedSize()I

    .line 2498
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataResponse;->getMusicVideoList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    .line 2499
    .local v0, element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_0

    .line 2501
    .end local v0           #element:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    :cond_0
    return-void
.end method
