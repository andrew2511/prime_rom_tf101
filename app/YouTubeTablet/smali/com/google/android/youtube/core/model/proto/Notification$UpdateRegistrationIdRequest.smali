.class public final Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateRegistrationIdRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;


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

.field private hasRegistrationId:Z

.field private hasUserId:Z

.field private memoizedSerializedSize:I

.field private registrationId_:Ljava/lang/String;

.field private userId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 886
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    .line 887
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification;->internalForceInit()V

    .line 888
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->initFields()V

    .line 889
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 451
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->deviceId_:Ljava/lang/String;

    .line 458
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->userId_:Ljava/lang/String;

    .line 465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->authToken_:Ljava/lang/String;

    .line 472
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->registrationId_:Ljava/lang/String;

    .line 478
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->channelIds_:Ljava/util/List;

    .line 518
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->memoizedSerializedSize:I

    .line 435
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->initFields()V

    .line 436
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/proto/Notification$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 451
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->deviceId_:Ljava/lang/String;

    .line 458
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->userId_:Ljava/lang/String;

    .line 465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->authToken_:Ljava/lang/String;

    .line 472
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->registrationId_:Ljava/lang/String;

    .line 478
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->channelIds_:Ljava/util/List;

    .line 518
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->memoizedSerializedSize:I

    .line 437
    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->channelIds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->channelIds_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasDeviceId:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->deviceId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasUserId:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->userId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasAuthToken:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->authToken_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasRegistrationId:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->registrationId_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public static newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;
    .locals 1

    .prologue
    .line 620
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;->access$1100()Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->authToken_:Ljava/lang/String;

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
    .line 481
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->channelIds_:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->registrationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 520
    iget v3, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->memoizedSerializedSize:I

    .line 521
    .local v3, size:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    move v4, v3

    .line 550
    .end local v3           #size:I
    .local v4, size:I
    :goto_0
    return v4

    .line 523
    .end local v4           #size:I
    .restart local v3       #size:I
    :cond_0
    const/4 v3, 0x0

    .line 524
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasDeviceId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 525
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 528
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasUserId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 529
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 532
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasAuthToken()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 533
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 536
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasRegistrationId()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 537
    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getRegistrationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 541
    :cond_4
    const/4 v0, 0x0

    .line 542
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getChannelIdsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 543
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 546
    .end local v1           #element:Ljava/lang/String;
    :cond_5
    add-int/2addr v3, v0

    .line 547
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getChannelIdsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 549
    iput v3, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->memoizedSerializedSize:I

    move v4, v3

    .line 550
    .end local v3           #size:I
    .restart local v4       #size:I
    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->userId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasAuthToken:Z

    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasDeviceId:Z

    return v0
.end method

.method public hasRegistrationId()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasRegistrationId:Z

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasUserId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 491
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasDeviceId:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 495
    :goto_0
    return v0

    .line 492
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasUserId:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 493
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasAuthToken:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 494
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasRegistrationId:Z

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 495
    :cond_3
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
    .line 500
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getSerializedSize()I

    .line 501
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasDeviceId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasUserId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 507
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasAuthToken()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 510
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->hasRegistrationId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 511
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getRegistrationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 513
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UpdateRegistrationIdRequest;->getChannelIdsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 514
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 516
    .end local v0           #element:Ljava/lang/String;
    :cond_4
    return-void
.end method
