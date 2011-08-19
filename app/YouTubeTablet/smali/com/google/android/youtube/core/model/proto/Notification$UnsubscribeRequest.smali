.class public final Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsubscribeRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;


# instance fields
.field private authToken_:Ljava/lang/String;

.field private channelIds_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId_:Ljava/lang/String;

.field private hasAuthToken:Z

.field private hasDeviceId:Z

.field private hasUserId:Z

.field private memoizedSerializedSize:I

.field private userId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1769
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    .line 1770
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification;->internalForceInit()V

    .line 1771
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->initFields()V

    .line 1772
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1360
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->deviceId_:Ljava/lang/String;

    .line 1384
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->userId_:Ljava/lang/String;

    .line 1391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->authToken_:Ljava/lang/String;

    .line 1397
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->channelIds_:Ljava/util/List;

    .line 1433
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->memoizedSerializedSize:I

    .line 1361
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->initFields()V

    .line 1362
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/proto/Notification$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1357
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 1363
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->deviceId_:Ljava/lang/String;

    .line 1384
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->userId_:Ljava/lang/String;

    .line 1391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->authToken_:Ljava/lang/String;

    .line 1397
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->channelIds_:Ljava/util/List;

    .line 1433
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->memoizedSerializedSize:I

    .line 1363
    return-void
.end method

.method static synthetic access$3700(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->channelIds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->channelIds_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1357
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasDeviceId:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->deviceId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1357
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasUserId:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->userId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1357
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasAuthToken:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->authToken_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;
    .locals 1

    .prologue
    .line 1367
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1408
    return-void
.end method

.method public static newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;
    .locals 1

    .prologue
    .line 1531
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;->access$3500()Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->authToken_:Ljava/lang/String;

    return-object v0
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
    .line 1400
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->channelIds_:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1435
    iget v3, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->memoizedSerializedSize:I

    .line 1436
    .local v3, size:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    move v4, v3

    .line 1461
    .end local v3           #size:I
    .local v4, size:I
    :goto_0
    return v4

    .line 1438
    .end local v4           #size:I
    .restart local v3       #size:I
    :cond_0
    const/4 v3, 0x0

    .line 1439
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasDeviceId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1440
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1443
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasUserId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1444
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1447
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasAuthToken()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1448
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1452
    :cond_3
    const/4 v0, 0x0

    .line 1453
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getChannelIdsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1454
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 1457
    .end local v1           #element:Ljava/lang/String;
    :cond_4
    add-int/2addr v3, v0

    .line 1458
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getChannelIdsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 1460
    iput v3, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->memoizedSerializedSize:I

    move v4, v3

    .line 1461
    .end local v3           #size:I
    .restart local v4       #size:I
    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->userId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 1392
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasAuthToken:Z

    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 1378
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasDeviceId:Z

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 1385
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasUserId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1410
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasDeviceId:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 1413
    :goto_0
    return v0

    .line 1411
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasUserId:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 1412
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasAuthToken:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 1413
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1418
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getSerializedSize()I

    .line 1419
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasDeviceId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1420
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1422
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasUserId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1423
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1425
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->hasAuthToken()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1426
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1428
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnsubscribeRequest;->getChannelIdsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1429
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1431
    .end local v0           #element:Ljava/lang/String;
    :cond_3
    return-void
.end method
