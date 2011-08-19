.class public Lcom/nvidia/tegrazone/model/vo/GenreVO;
.super Ljava/lang/Object;
.source "GenreVO.java"


# instance fields
.field category:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/GenreVO;
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "category"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "category"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->setCategory(Ljava/lang/String;)V

    .line 31
    :cond_0
    const-string v0, "category"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "category"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->setValue(Ljava/lang/String;)V

    .line 33
    :cond_1
    return-object p0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/GenreVO;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/GenreVO;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/GenreVO;->category:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/GenreVO;->value:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/GenreVO;->category:Ljava/lang/String;

    return-object v0
.end method
