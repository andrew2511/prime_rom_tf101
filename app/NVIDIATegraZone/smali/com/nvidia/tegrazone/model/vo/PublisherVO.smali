.class public Lcom/nvidia/tegrazone/model/vo/PublisherVO;
.super Ljava/lang/Object;
.source "PublisherVO.java"


# instance fields
.field publisherName:Ljava/lang/String;

.field publisherURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/PublisherVO;
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/PublisherVO;->setPublisherName(Ljava/lang/String;)V

    .line 29
    :cond_0
    const-string v0, "website"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "website"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/PublisherVO;->setPublisherURL(Ljava/lang/String;)V

    .line 31
    :cond_1
    return-object p0
.end method

.method public getPublisherName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/PublisherVO;->publisherName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/PublisherVO;->publisherURL:Ljava/lang/String;

    return-object v0
.end method

.method public setPublisherName(Ljava/lang/String;)V
    .locals 0
    .parameter "publisherName"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/PublisherVO;->publisherName:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setPublisherURL(Ljava/lang/String;)V
    .locals 0
    .parameter "publisherURL"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/PublisherVO;->publisherURL:Ljava/lang/String;

    .line 23
    return-void
.end method
