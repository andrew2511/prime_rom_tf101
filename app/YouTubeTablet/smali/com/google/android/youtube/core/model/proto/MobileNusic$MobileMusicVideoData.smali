.class public final Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileNusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/proto/MobileNusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileMusicVideoData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;


# instance fields
.field private artistId_:Ljava/lang/String;

.field private artistName_:Ljava/lang/String;

.field private encryptedId_:Ljava/lang/String;

.field private hasArtistId:Z

.field private hasArtistName:Z

.field private hasEncryptedId:Z

.field private hasLicensed:Z

.field private hasPartnerUploaded:Z

.field private hasTrackId:Z

.field private hasTrackName:Z

.field private hasVevo:Z

.field private hasVideoLengthInSeconds:Z

.field private licensed_:Z

.field private memoizedSerializedSize:I

.field private partnerUploaded_:Z

.field private trackId_:Ljava/lang/String;

.field private trackName_:Ljava/lang/String;

.field private vevo_:Z

.field private videoLengthInSeconds_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 588
    new-instance v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;-><init>(Z)V

    sput-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    .line 589
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic;->internalForceInit()V

    .line 590
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->initFields()V

    .line 591
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->encryptedId_:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->artistId_:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->artistName_:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->trackId_:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->trackName_:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->licensed_:Z

    .line 73
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->partnerUploaded_:Z

    .line 80
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->vevo_:Z

    .line 87
    iput v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->videoLengthInSeconds_:I

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->memoizedSerializedSize:I

    .line 15
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/proto/MobileNusic$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->encryptedId_:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->artistId_:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->artistName_:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->trackId_:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->trackName_:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->licensed_:Z

    .line 73
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->partnerUploaded_:Z

    .line 80
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->vevo_:Z

    .line 87
    iput v1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->videoLengthInSeconds_:I

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->memoizedSerializedSize:I

    .line 17
    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->trackId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasTrackName:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->trackName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasLicensed:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->licensed_:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasPartnerUploaded:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->partnerUploaded_:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasVevo:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->vevo_:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasVideoLengthInSeconds:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->videoLengthInSeconds_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasEncryptedId:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->encryptedId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasArtistId:Z

    return p1
.end method

.method static synthetic access$602(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->artistId_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasArtistName:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->artistName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasTrackId:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->defaultInstance:Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public static newBuilder()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;->access$100()Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->artistId_:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->artistName_:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->encryptedId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLicensed()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->licensed_:Z

    return v0
.end method

.method public getPartnerUploaded()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->partnerUploaded_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->memoizedSerializedSize:I

    .line 138
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 178
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 140
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasEncryptedId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getEncryptedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasArtistId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getArtistId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 149
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasArtistName()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 153
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasTrackId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 157
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasTrackName()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 158
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 161
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasLicensed()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 162
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getLicensed()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 165
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasPartnerUploaded()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 166
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getPartnerUploaded()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 169
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasVevo()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 170
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getVevo()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 173
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasVideoLengthInSeconds()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 174
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getVideoLengthInSeconds()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 177
    :cond_9
    iput v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->memoizedSerializedSize:I

    move v1, v0

    .line 178
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->trackId_:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->trackName_:Ljava/lang/String;

    return-object v0
.end method

.method public getVevo()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->vevo_:Z

    return v0
.end method

.method public getVideoLengthInSeconds()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->videoLengthInSeconds_:I

    return v0
.end method

.method public hasArtistId()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasArtistId:Z

    return v0
.end method

.method public hasArtistName()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasArtistName:Z

    return v0
.end method

.method public hasEncryptedId()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasEncryptedId:Z

    return v0
.end method

.method public hasLicensed()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasLicensed:Z

    return v0
.end method

.method public hasPartnerUploaded()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasPartnerUploaded:Z

    return v0
.end method

.method public hasTrackId()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasTrackId:Z

    return v0
.end method

.method public hasTrackName()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasTrackName:Z

    return v0
.end method

.method public hasVevo()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasVevo:Z

    return v0
.end method

.method public hasVideoLengthInSeconds()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasVideoLengthInSeconds:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasEncryptedId:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 100
    :goto_0
    return v0

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasArtistId:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 96
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasArtistName:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 97
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasTrackId:Z

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 98
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasTrackName:Z

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    .line 99
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasVideoLengthInSeconds:Z

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    .line 100
    :cond_5
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
    .line 105
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getSerializedSize()I

    .line 106
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasEncryptedId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getEncryptedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasArtistId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasArtistName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasTrackId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasTrackName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 121
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasLicensed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getLicensed()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasPartnerUploaded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 125
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getPartnerUploaded()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 127
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasVevo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getVevo()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 130
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->hasVideoLengthInSeconds()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 131
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/proto/MobileNusic$MobileMusicVideoData;->getVideoLengthInSeconds()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 133
    :cond_8
    return-void
.end method
