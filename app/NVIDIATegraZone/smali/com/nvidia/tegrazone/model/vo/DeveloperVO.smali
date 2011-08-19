.class public Lcom/nvidia/tegrazone/model/vo/DeveloperVO;
.super Ljava/lang/Object;
.source "DeveloperVO.java"


# instance fields
.field developerName:Ljava/lang/String;

.field developerURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/DeveloperVO;
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

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->setDeveloperName(Ljava/lang/String;)V

    .line 29
    :cond_0
    const-string v0, "website"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "website"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->setDeveloperURL(Ljava/lang/String;)V

    .line 31
    :cond_1
    return-object p0
.end method

.method public getDeveloperName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->developerName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->developerURL:Ljava/lang/String;

    return-object v0
.end method

.method public setDeveloperName(Ljava/lang/String;)V
    .locals 0
    .parameter "developerName"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->developerName:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setDeveloperURL(Ljava/lang/String;)V
    .locals 0
    .parameter "developerURL"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/DeveloperVO;->developerURL:Ljava/lang/String;

    .line 23
    return-void
.end method
