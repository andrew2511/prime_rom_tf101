.class public Landroid/drm/DrmRights;
.super Ljava/lang/Object;
.source "DrmRights.java"


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mData:[B

.field private mMimeType:Ljava/lang/String;

.field private mSubscriptionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/drm/ProcessedData;Ljava/lang/String;)V
    .registers 6
    .parameter "data"
    .parameter "mimeType"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v2, "_NO_USER"

    iput-object v2, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    .line 39
    const-string v2, ""

    iput-object v2, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v2

    iput-object v2, p0, Landroid/drm/DrmRights;->mData:[B

    .line 127
    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getAccountId()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, accountId:Ljava/lang/String;
    if-eqz v0, :cond_21

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 129
    iput-object v0, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    .line 132
    :cond_21
    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, subscriptionId:Ljava/lang/String;
    if-eqz v1, :cond_31

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 134
    iput-object v1, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    .line 137
    :cond_31
    iput-object p2, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .parameter "rightsFile"
    .parameter "mimeType"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "_NO_USER"

    iput-object v0, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;->instantiate(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "rightsFilePath"
    .parameter "mimeType"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v1, "_NO_USER"

    iput-object v1, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    .line 39
    const-string v1, ""

    iput-object v1, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, file:Ljava/io/File;
    invoke-direct {p0, v0, p2}, Landroid/drm/DrmRights;->instantiate(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "rightsFilePath"
    .parameter "mimeType"
    .parameter "accountId"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-eqz p3, :cond_f

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 63
    iput-object p3, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    .line 65
    :cond_f
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "rightsFilePath"
    .parameter "mimeType"
    .parameter "accountId"
    .parameter "subscriptionId"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-eqz p3, :cond_f

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 80
    iput-object p3, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    .line 83
    :cond_f
    if-eqz p4, :cond_1b

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 84
    iput-object p4, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    .line 86
    :cond_1b
    return-void
.end method

.method private instantiate(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .parameter "rightsFile"
    .parameter "mimeType"

    .prologue
    .line 100
    :try_start_0
    invoke-static {p1}, Landroid/drm/DrmUtils;->readBytes(Ljava/io/File;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/drm/DrmRights;->mData:[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_9

    .line 105
    :goto_6
    iput-object p2, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    .line 106
    return-void

    .line 101
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 102
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/drm/DrmRights;->mData:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method isValid()Z
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/drm/DrmRights;->mData:[B

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/drm/DrmRights;->mData:[B

    array-length v0, v0

    if-lez v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method
