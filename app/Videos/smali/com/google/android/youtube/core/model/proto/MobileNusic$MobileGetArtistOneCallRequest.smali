.class public final Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileNusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/MobileNusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileGetArtistOneCallRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    }
.end annotation


# static fields
.field public static final ARTIST_ID_FIELD_NUMBER:I = 0x1

.field public static final COUNTRY_CODE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;


# instance fields
.field private artistId_:Ljava/lang/String;

.field private countryCode_:Ljava/lang/String;

.field private hasArtistId:Z

.field private hasCountryCode:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2115
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    .line 2116
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic;->internalForceInit()V

    .line 2117
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->initFields()V

    .line 2118
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 1827
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1844
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->artistId_:Ljava/lang/String;

    .line 1851
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->countryCode_:Ljava/lang/String;

    .line 1874
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->memoizedSerializedSize:I

    .line 1828
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->initFields()V

    .line 1829
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1824
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    const-string v1, ""

    .line 1830
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1844
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->artistId_:Ljava/lang/String;

    .line 1851
    const-string v0, ""

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->countryCode_:Ljava/lang/String;

    .line 1874
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->memoizedSerializedSize:I

    .line 1830
    return-void
.end method

.method static synthetic access$5002(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1824
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->hasArtistId:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1824
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->artistId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1824
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->hasCountryCode:Z

    return p1
.end method

.method static synthetic access$5302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1824
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->countryCode_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 1

    .prologue
    .line 1834
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1856
    return-void
.end method

.method public static newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    .locals 1

    .prologue
    .line 1959
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->access$4800()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1962
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->mergeFrom(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1928
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    .line 1929
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1930
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->access$4700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v1

    .line 1932
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1939
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    .line 1940
    .local v0, builder:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1941
    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->access$4700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v1

    .line 1943
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1895
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->access$4700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1901
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->access$4700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1949
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->access$4700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1955
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->access$4700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1917
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->access$4700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1923
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->access$4700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1906
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->access$4700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1912
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;->access$4700(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->artistId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->countryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;
    .locals 1

    .prologue
    .line 1838
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1824
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->getDefaultInstanceForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1876
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->memoizedSerializedSize:I

    .line 1877
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1889
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1879
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1880
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->hasArtistId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1881
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->getArtistId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1884
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->hasCountryCode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1885
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1888
    :cond_2
    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 1889
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasArtistId()Z
    .locals 1

    .prologue
    .line 1845
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->hasArtistId:Z

    return v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .prologue
    .line 1852
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->hasCountryCode:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1858
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->hasArtistId:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 1860
    :goto_0
    return v0

    .line 1859
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->hasCountryCode:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 1860
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    .locals 1

    .prologue
    .line 1960
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1824
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilderForType()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;
    .locals 1

    .prologue
    .line 1964
    invoke-static {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->newBuilder(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;)Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1824
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->toBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1865
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->getSerializedSize()I

    .line 1866
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->hasArtistId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1867
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1869
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1870
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1872
    :cond_1
    return-void
.end method
