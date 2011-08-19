.class public Lcom/nvidia/tegrazone/model/vo/ImageVO;
.super Lcom/nvidia/tegrazone/model/vo/MediaVO;
.source "ImageVO.java"


# instance fields
.field public fullsizeUrl:Ljava/lang/String;

.field public thumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/nvidia/tegrazone/model/vo/MediaVO;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/ImageVO;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/MediaVO;

    .line 38
    sget-object v0, Lcom/nvidia/tegrazone/model/vo/ImageVO;->IMAGE_TYPE:Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->setItemType(Ljava/lang/String;)V

    .line 40
    const-string v0, "large"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->imagesPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "large"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/ImageVO;->setfullsizeUrl(Ljava/lang/String;)V

    .line 41
    :cond_0
    const-string v0, "thumb"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->imagesPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "thumb"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/ImageVO;->setThumbnailUrl(Ljava/lang/String;)V

    .line 42
    :cond_1
    return-object p0
.end method

.method public bridge synthetic copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/MediaVO;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/nvidia/tegrazone/model/vo/ImageVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/ImageVO;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/ImageVO;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getfullsizeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/ImageVO;->fullsizeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailUrl"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/ImageVO;->thumbnailUrl:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setfullsizeUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "fullsizeUrl"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/ImageVO;->fullsizeUrl:Ljava/lang/String;

    .line 31
    return-void
.end method
