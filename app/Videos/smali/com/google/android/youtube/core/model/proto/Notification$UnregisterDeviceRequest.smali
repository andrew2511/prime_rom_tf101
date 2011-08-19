.class public final Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnregisterDeviceRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    }
.end annotation


# static fields
.field public static final AUTH_TOKEN_FIELD_NUMBER:I = 0x3

.field public static final CHANNEL_IDS_FIELD_NUMBER:I = 0x4

.field public static final DEVICE_ID_FIELD_NUMBER:I = 0x1

.field public static final USER_ID_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;


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
    .line 423
    new-instance v0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    .line 424
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification;->internalForceInit()V

    .line 425
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->initFields()V

    .line 426
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->deviceId_:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->userId_:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->authToken_:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->channelIds_:Ljava/util/List;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->memoizedSerializedSize:I

    .line 15
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/proto/Notification$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    const-string v1, ""

    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->deviceId_:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->userId_:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->authToken_:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->channelIds_:Ljava/util/List;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->memoizedSerializedSize:I

    .line 17
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->channelIds_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->channelIds_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasDeviceId:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->deviceId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasUserId:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->userId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasAuthToken:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->authToken_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public static newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->access$100()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 188
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    .line 155
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->access$000(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v1

    .line 158
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    .line 166
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->access$000(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->access$000(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->access$000(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->access$000(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->access$000(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->access$000(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->access$000(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->access$000(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;->access$000(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->authToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelIds(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->channelIds_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getChannelIdsCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->channelIds_:Ljava/util/List;

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
    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->channelIds_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 89
    iget v3, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->memoizedSerializedSize:I

    .line 90
    .local v3, size:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    move v4, v3

    .line 115
    .end local v3           #size:I
    .local v4, size:I
    :goto_0
    return v4

    .line 92
    .end local v4           #size:I
    .restart local v3       #size:I
    :cond_0
    const/4 v3, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasDeviceId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasUserId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasAuthToken()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 102
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 106
    :cond_3
    const/4 v0, 0x0

    .line 107
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getChannelIdsList()Ljava/util/List;

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

    .line 108
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 111
    .end local v1           #element:Ljava/lang/String;
    :cond_4
    add-int/2addr v3, v0

    .line 112
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getChannelIdsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 114
    iput v3, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->memoizedSerializedSize:I

    move v4, v3

    .line 115
    .end local v3           #size:I
    .restart local v4       #size:I
    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->userId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasAuthToken:Z

    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasDeviceId:Z

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasUserId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasDeviceId:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 67
    :goto_0
    return v0

    .line 65
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasUserId:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 66
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasAuthToken:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 67
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->newBuilderForType()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;
    .locals 1

    .prologue
    .line 190
    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->newBuilder(Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;)Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->toBuilder()Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest$Builder;

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
    .line 72
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getSerializedSize()I

    .line 73
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasDeviceId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasUserId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->hasAuthToken()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/Notification$UnregisterDeviceRequest;->getChannelIdsList()Ljava/util/List;

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

    .line 83
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v0           #element:Ljava/lang/String;
    :cond_3
    return-void
.end method
