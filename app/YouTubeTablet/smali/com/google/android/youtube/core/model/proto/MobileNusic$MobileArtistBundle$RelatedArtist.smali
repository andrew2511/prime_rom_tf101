.class public final Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileNusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelatedArtist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;


# instance fields
.field private artistId_:Ljava/lang/String;

.field private artistName_:Ljava/lang/String;

.field private hasArtistId:Z

.field private hasArtistName:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1245
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    .line 1246
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic;->internalForceInit()V

    .line 1247
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->initFields()V

    .line 1248
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 974
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->artistId_:Ljava/lang/String;

    .line 981
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->artistName_:Ljava/lang/String;

    .line 1004
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->memoizedSerializedSize:I

    .line 958
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->initFields()V

    .line 959
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 954
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 960
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 974
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->artistId_:Ljava/lang/String;

    .line 981
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->artistName_:Ljava/lang/String;

    .line 1004
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->memoizedSerializedSize:I

    .line 960
    return-void
.end method

.method static synthetic access$3302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 954
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->hasArtistId:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 954
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->artistId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 954
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->hasArtistName:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 954
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->artistName_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;
    .locals 1

    .prologue
    .line 964
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 986
    return-void
.end method

.method public static newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;
    .locals 1

    .prologue
    .line 1089
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;->access$3100()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->artistId_:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->artistName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1006
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->memoizedSerializedSize:I

    .line 1007
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1019
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1009
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->hasArtistId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1011
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getArtistId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1014
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->hasArtistName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1015
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1018
    :cond_2
    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->memoizedSerializedSize:I

    move v1, v0

    .line 1019
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasArtistId()Z
    .locals 1

    .prologue
    .line 975
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->hasArtistId:Z

    return v0
.end method

.method public hasArtistName()Z
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->hasArtistName:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 988
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->hasArtistId:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 990
    :goto_0
    return v0

    .line 989
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->hasArtistName:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 990
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
    .line 995
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getSerializedSize()I

    .line 996
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->hasArtistId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 999
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->hasArtistName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileArtistBundle$RelatedArtist;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1002
    :cond_1
    return-void
.end method
