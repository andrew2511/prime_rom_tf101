.class public Lcom/layar/data/layer/LayersGroup;
.super Ljava/lang/Object;
.source "LayersGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public id:I

.field public imageUrl:Ljava/lang/String;

.field public layers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/layar/data/layer/LayersGroup;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/layer/LayersGroup;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayersGroup;->layers:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayersGroup;->layers:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/layar/data/layer/LayersGroup;->title:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/layer/LayersGroup;
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 30
    if-eqz p0, :cond_0

    const-string v2, "layers"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v4

    .line 42
    :goto_0
    return-object v2

    .line 33
    :cond_1
    new-instance v0, Lcom/layar/data/layer/LayersGroup;

    invoke-direct {v0}, Lcom/layar/data/layer/LayersGroup;-><init>()V

    .line 34
    .local v0, group:Lcom/layar/data/layer/LayersGroup;
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/layar/data/layer/LayersGroup;->id:I

    .line 35
    const-string v2, "title"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/layar/data/layer/LayersGroup;->title:Ljava/lang/String;

    .line 36
    const-string v2, "image_urls"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 37
    .local v1, imageUrls:Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 38
    invoke-static {}, Lcom/layar/data/ImageCache;->getIconsSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/layar/data/layer/LayersGroup;->imageUrl:Ljava/lang/String;

    .line 40
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/layar/data/layer/LayersGroup;->layers:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lcom/layar/data/layer/LayerManager;->parseLayers(Ljava/lang/String;Ljava/util/ArrayList;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)I

    move-object v2, v0

    .line 42
    goto :goto_0
.end method
