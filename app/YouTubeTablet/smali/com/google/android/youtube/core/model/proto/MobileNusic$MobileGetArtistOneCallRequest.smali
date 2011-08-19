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
    .locals 1

    .prologue
    .line 1827
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1844
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->artistId_:Ljava/lang/String;

    .line 1851
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->countryCode_:Ljava/lang/String;

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
    .locals 1
    .parameter "noInit"

    .prologue
    .line 1830
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1844
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->artistId_:Ljava/lang/String;

    .line 1851
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileGetArtistOneCallRequest;->countryCode_:Ljava/lang/String;

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
