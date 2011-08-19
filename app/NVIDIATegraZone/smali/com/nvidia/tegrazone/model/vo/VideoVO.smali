.class public Lcom/nvidia/tegrazone/model/vo/VideoVO;
.super Lcom/nvidia/tegrazone/model/vo/MediaVO;
.source "VideoVO.java"


# instance fields
.field public videoURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/nvidia/tegrazone/model/vo/MediaVO;-><init>()V

    return-void
.end method


# virtual methods
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
    invoke-virtual {p0, p1}, Lcom/nvidia/tegrazone/model/vo/VideoVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/VideoVO;
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/MediaVO;

    .line 28
    sget-object v0, Lcom/nvidia/tegrazone/model/vo/VideoVO;->VIDEO_TYPE:Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->setItemType(Ljava/lang/String;)V

    .line 30
    const-string v0, "link"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "link"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/VideoVO;->setVideoURL(Ljava/lang/String;)V

    .line 33
    :cond_0
    return-object p0
.end method

.method public getVideoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/VideoVO;->videoURL:Ljava/lang/String;

    return-object v0
.end method

.method public setVideoURL(Ljava/lang/String;)V
    .locals 0
    .parameter "videoURL"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/VideoVO;->videoURL:Ljava/lang/String;

    .line 19
    return-void
.end method
