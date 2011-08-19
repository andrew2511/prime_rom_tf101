.class public Lcom/nvidia/tegrazone/model/vo/MediaVO;
.super Ljava/lang/Object;
.source "MediaVO.java"


# static fields
.field public static IMAGE_TYPE:Ljava/lang/String;

.field public static VIDEO_TYPE:Ljava/lang/String;


# instance fields
.field public itemType:Ljava/lang/String;

.field thumbnailUrl:Ljava/lang/String;

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "imageType"

    sput-object v0, Lcom/nvidia/tegrazone/model/vo/MediaVO;->IMAGE_TYPE:Ljava/lang/String;

    .line 16
    const-string v0, "videoType"

    sput-object v0, Lcom/nvidia/tegrazone/model/vo/MediaVO;->VIDEO_TYPE:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/MediaVO;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
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

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->setUrl(Ljava/lang/String;)V

    .line 53
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

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->setThumbnailUrl(Ljava/lang/String;)V

    .line 56
    :cond_1
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->setTitle(Ljava/lang/String;)V

    .line 57
    :cond_2
    return-object p0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/MediaVO;->itemType:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/MediaVO;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/MediaVO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/MediaVO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0
    .parameter "itemType"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/MediaVO;->itemType:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailUrl"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/MediaVO;->thumbnailUrl:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/MediaVO;->title:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/MediaVO;->url:Ljava/lang/String;

    .line 24
    return-void
.end method
