.class public final Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubscribeRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    }
.end annotation


# static fields
.field public static final AUTH_TOKEN_FIELD_NUMBER:I = 0x3

.field public static final CHANNEL_IDS_FIELD_NUMBER:I = 0x5

.field public static final DEVICE_ID_FIELD_NUMBER:I = 0x1

.field public static final REGISTRATION_ID_FIELD_NUMBER:I = 0x4

.field public static final USER_ID_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;


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
    .line 1349
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    .line 1350
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification;->internalForceInit()V

    .line 1351
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->initFields()V

    .line 1352
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 897
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 914
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->deviceId_:Ljava/lang/String;

    .line 921
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->userId_:Ljava/lang/String;

    .line 928
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->authToken_:Ljava/lang/String;

    .line 935
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->registrationId_:Ljava/lang/String;

    .line 941
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->channelIds_:Ljava/util/List;

    .line 981
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->memoizedSerializedSize:I

    .line 898
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->initFields()V

    .line 899
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/proto/Notification$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    const-string v1, ""

    .line 900
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 914
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->deviceId_:Ljava/lang/String;

    .line 921
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->userId_:Ljava/lang/String;

    .line 928
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->authToken_:Ljava/lang/String;

    .line 935
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->registrationId_:Ljava/lang/String;

    .line 941
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->channelIds_:Ljava/util/List;

    .line 981
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->memoizedSerializedSize:I

    .line 900
    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 894
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->channelIds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 894
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->channelIds_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 894
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasDeviceId:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 894
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->deviceId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 894
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasUserId:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 894
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->userId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 894
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasAuthToken:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 894
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->authToken_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 894
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasRegistrationId:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 894
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->registrationId_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 1

    .prologue
    .line 904
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 952
    return-void
.end method

.method public static newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 1

    .prologue
    .line 1083
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->access$2300()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1086
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1052
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    .line 1053
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->access$2200(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v1

    .line 1056
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1063
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    .line 1064
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->access$2200(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v1

    .line 1067
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1019
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->access$2200(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1025
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->access$2200(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1073
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->access$2200(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1079
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->access$2200(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1041
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->access$2200(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1047
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->access$2200(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1030
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->access$2200(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1036
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;->access$2200(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->authToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelIds(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->channelIds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getChannelIdsCount()I
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->channelIds_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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
    .line 944
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->channelIds_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;
    .locals 1

    .prologue
    .line 908
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->registrationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 983
    iget v3, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->memoizedSerializedSize:I

    .line 984
    .local v3, size:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    move v4, v3

    .line 1013
    .end local v3           #size:I
    .local v4, size:I
    :goto_0
    return v4

    .line 986
    .end local v4           #size:I
    .restart local v3       #size:I
    :cond_0
    const/4 v3, 0x0

    .line 987
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasDeviceId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 988
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 991
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasUserId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 992
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 995
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasAuthToken()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 996
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 999
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasRegistrationId()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1000
    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getRegistrationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1004
    :cond_4
    const/4 v0, 0x0

    .line 1005
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getChannelIdsList()Ljava/util/List;

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

    .line 1006
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 1009
    .end local v1           #element:Ljava/lang/String;
    :cond_5
    add-int/2addr v3, v0

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getChannelIdsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 1012
    iput v3, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->memoizedSerializedSize:I

    move v4, v3

    .line 1013
    .end local v3           #size:I
    .restart local v4       #size:I
    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->userId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasAuthToken:Z

    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 915
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasDeviceId:Z

    return v0
.end method

.method public hasRegistrationId()Z
    .locals 1

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasRegistrationId:Z

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasUserId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 954
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasDeviceId:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 958
    :goto_0
    return v0

    .line 955
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasUserId:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 956
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasAuthToken:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 957
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasRegistrationId:Z

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 958
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 1

    .prologue
    .line 1084
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilderForType()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;
    .locals 1

    .prologue
    .line 1088
    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->newBuilder(Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;)Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->toBuilder()Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest$Builder;

    move-result-object v0

    return-object v0
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
    .line 963
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getSerializedSize()I

    .line 964
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasDeviceId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 965
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 967
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasUserId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 968
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 970
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasAuthToken()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 971
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 973
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->hasRegistrationId()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 974
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getRegistrationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 976
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$SubscribeRequest;->getChannelIdsList()Ljava/util/List;

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

    .line 977
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 979
    .end local v0           #element:Ljava/lang/String;
    :cond_4
    return-void
.end method
