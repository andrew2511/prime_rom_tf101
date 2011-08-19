.class public Lcom/layar/data/layer/LayerManager$LayersResponse;
.super Ljava/lang/Object;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/layer/LayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayersResponse"
.end annotation


# instance fields
.field public groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/LayersGroup;",
            ">;"
        }
    .end annotation
.end field

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

.field public responseCode:I


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .parameter "responseCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p2, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 982
    iput p1, p0, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    .line 983
    iput-object p2, p0, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    .line 984
    return-void
.end method


# virtual methods
.method public parseGroups(Ljava/lang/String;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 987
    if-nez p1, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 993
    .local v3, json:Lorg/json/JSONObject;
    const-string v5, "groups"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 994
    .local v4, jsonGroups:Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 996
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 997
    .local v0, count:I
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 1002
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/layar/data/layer/LayerManager$LayersResponse;->groups:Ljava/util/ArrayList;

    .line 1003
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 1004
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/layar/data/layer/LayersGroup;->parse(Lorg/json/JSONObject;)Lcom/layar/data/layer/LayersGroup;

    move-result-object v1

    .line 1005
    .local v1, group:Lcom/layar/data/layer/LayersGroup;
    if-eqz v1, :cond_2

    .line 1006
    iget-object v5, p0, Lcom/layar/data/layer/LayerManager$LayersResponse;->groups:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1008
    .end local v0           #count:I
    .end local v1           #group:Lcom/layar/data/layer/LayersGroup;
    .end local v2           #i:I
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #jsonGroups:Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
