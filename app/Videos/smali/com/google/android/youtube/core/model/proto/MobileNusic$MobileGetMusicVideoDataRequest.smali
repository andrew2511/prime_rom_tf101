.class public final Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileNusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/MobileNusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileGetMusicVideoDataRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    }
.end annotation


# static fields
.field public static final COUNTRY_CODE_FIELD_NUMBER:I = 0x1

.field public static final VIDEO_ID_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;


# instance fields
.field private countryCode_:Ljava/lang/String;

.field private hasCountryCode:Z

.field private memoizedSerializedSize:I

.field private videoId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2449
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    .line 2450
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic;->internalForceInit()V

    .line 2451
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->initFields()V

    .line 2452
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2126
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2143
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->countryCode_:Ljava/lang/String;

    .line 2149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->videoId_:Ljava/util/List;

    .line 2177
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->memoizedSerializedSize:I

    .line 2127
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->initFields()V

    .line 2128
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2123
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 2129
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2143
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->countryCode_:Ljava/lang/String;

    .line 2149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->videoId_:Ljava/util/List;

    .line 2177
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->memoizedSerializedSize:I

    .line 2129
    return-void
.end method

.method static synthetic access$5700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->videoId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2123
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->videoId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2123
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->hasCountryCode:Z

    return p1
.end method

.method static synthetic access$5902(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2123
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->countryCode_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1

    .prologue
    .line 2133
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2160
    return-void
.end method

.method public static newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 1

    .prologue
    .line 2267
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->access$5500()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 2270
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2236
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    .line 2237
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2238
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->access$5400(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v1

    .line 2240
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2247
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    .line 2248
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2249
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->access$5400(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v1

    .line 2251
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2203
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->access$5400(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2209
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->access$5400(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2257
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->access$5400(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2263
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->access$5400(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2225
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->access$5400(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2231
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->access$5400(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2214
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->access$5400(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2220
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;->access$5400(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->countryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;
    .locals 1

    .prologue
    .line 2137
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2123
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 2179
    iget v3, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->memoizedSerializedSize:I

    .line 2180
    .local v3, size:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    move v4, v3

    .line 2197
    .end local v3           #size:I
    .local v4, size:I
    :goto_0
    return v4

    .line 2182
    .end local v4           #size:I
    .restart local v3       #size:I
    :cond_0
    const/4 v3, 0x0

    .line 2183
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->hasCountryCode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2184
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 2188
    :cond_1
    const/4 v0, 0x0

    .line 2189
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getVideoIdList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2190
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 2193
    .end local v1           #element:Ljava/lang/String;
    :cond_2
    add-int/2addr v3, v0

    .line 2194
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getVideoIdList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    .line 2196
    iput v3, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->memoizedSerializedSize:I

    move v4, v3

    .line 2197
    .end local v3           #size:I
    .restart local v4       #size:I
    goto :goto_0
.end method

.method public getVideoId(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->videoId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getVideoIdCount()I
    .locals 1

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->videoId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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
    .line 2152
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->videoId_:Ljava/util/List;

    return-object v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .prologue
    .line 2144
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->hasCountryCode:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2162
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->hasCountryCode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 1

    .prologue
    .line 2268
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2123
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->newBuilderForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;
    .locals 1

    .prologue
    .line 2272
    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->newBuilder(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2123
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->toBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest$Builder;

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
    .line 2168
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getSerializedSize()I

    .line 2169
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->hasCountryCode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2170
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2172
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetMusicVideoDataRequest;->getVideoIdList()Ljava/util/List;

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

    check-cast v0, Ljava/lang/String;

    .line 2173
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 2175
    .end local v0           #element:Ljava/lang/String;
    :cond_1
    return-void
.end method
