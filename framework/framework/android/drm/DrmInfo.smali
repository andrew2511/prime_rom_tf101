.class public Landroid/drm/DrmInfo;
.super Ljava/lang/Object;
.source "DrmInfo.java"


# instance fields
.field private final mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mData:[B

.field private final mInfoType:I

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "infoType"
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    .line 62
    iput p1, p0, Landroid/drm/DrmInfo;->mInfoType:I

    .line 63
    iput-object p3, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    .line 65
    :try_start_e
    invoke-static {p2}, Landroid/drm/DrmUtils;->readBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/drm/DrmInfo;->mData:[B
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_15

    .line 72
    :goto_14
    return-void

    .line 66
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 70
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/drm/DrmInfo;->mData:[B

    goto :goto_14
.end method

.method public constructor <init>(I[BLjava/lang/String;)V
    .registers 5
    .parameter "infoType"
    .parameter "data"
    .parameter "mimeType"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    .line 49
    iput p1, p0, Landroid/drm/DrmInfo;->mInfoType:I

    .line 50
    iput-object p3, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Landroid/drm/DrmInfo;->mData:[B

    .line 52
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/drm/DrmInfo;->mData:[B

    return-object v0
.end method

.method public getInfoType()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Landroid/drm/DrmInfo;->mInfoType:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method isValid()Z
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/drm/DrmInfo;->mMimeType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/drm/DrmInfo;->mData:[B

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/drm/DrmInfo;->mData:[B

    array-length v0, v0

    if-lez v0, :cond_21

    iget v0, p0, Landroid/drm/DrmInfo;->mInfoType:I

    invoke-static {v0}, Landroid/drm/DrmInfoRequest;->isValidType(I)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keyIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/drm/DrmInfo;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method
