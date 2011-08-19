.class Lcom/layar/data/layer/LayerManager$3;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Lcom/layar/util/HttpManager$ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/layer/LayerManager;->fetchPOI(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;Ljava/lang/String;Landroid/location/Location;Ljava/util/Map;)Lcom/layar/data/layer/LayerManager$POIResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/layer/LayerManager;

.field private final synthetic val$layer:Lcom/layar/data/layer/Layer20;

.field private final synthetic val$poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;

.field private final synthetic val$tempPOIList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/layar/data/layer/LayerManager;Lcom/layar/data/layer/LayerManager$POIResponse;Ljava/util/ArrayList;Lcom/layar/data/layer/Layer20;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/layer/LayerManager$3;->this$0:Lcom/layar/data/layer/LayerManager;

    iput-object p2, p0, Lcom/layar/data/layer/LayerManager$3;->val$poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;

    iput-object p3, p0, Lcom/layar/data/layer/LayerManager$3;->val$tempPOIList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/layar/data/layer/LayerManager$3;->val$layer:Lcom/layar/data/layer/Layer20;

    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Exception;)V
    .locals 3
    .parameter "ex"

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager$3;->val$poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager$POIResponse;->setResponseCode(I)V

    .line 1293
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager$3;->val$poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;

    const-string v1, "Bad response from server"

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager$POIResponse;->setResponseMessage(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager$3;->val$poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/layar/data/layer/LayerManager$POIResponse;->pageKey:Ljava/lang/String;

    .line 1295
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager$3;->val$poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager$3;->this$0:Lcom/layar/data/layer/LayerManager;

    invoke-static {v1}, Lcom/layar/data/layer/LayerManager;->access$2(Lcom/layar/data/layer/LayerManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090036

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager$POIResponse;->setResponseMessage(Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method public handleResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "responseString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1274
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager$3;->val$poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/layar/data/layer/LayerManager$3;->this$0:Lcom/layar/data/layer/LayerManager;

    iget-object v3, v3, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v1, v2, v3}, Lcom/layar/data/layer/LayerManager$POIResponse;->parseSelf(Lorg/json/JSONObject;Lcom/layar/data/layer/LayerHandler;)V

    .line 1275
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager$3;->val$tempPOIList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/layar/data/layer/LayerManager$3;->val$poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;

    iget-object v2, v2, Lcom/layar/data/layer/LayerManager$POIResponse;->pois:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    :goto_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager$3;->val$poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;

    iget-object v1, v1, Lcom/layar/data/layer/LayerManager$POIResponse;->layerName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager$3;->val$layer:Lcom/layar/data/layer/Layer20;

    iget-object v1, v1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/data/layer/LayerManager$3;->val$poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;

    iget-object v2, v2, Lcom/layar/data/layer/LayerManager$POIResponse;->layerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1287
    :cond_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager$3;->val$poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;

    iget-object v2, p0, Lcom/layar/data/layer/LayerManager$3;->val$layer:Lcom/layar/data/layer/Layer20;

    iget-object v2, v2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/layar/data/layer/LayerManager$POIResponse;->layerName:Ljava/lang/String;

    .line 1288
    return-void

    .line 1276
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1277
    .local v0, exc:Lorg/json/JSONException;
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager$3;->val$poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/layar/data/layer/LayerManager$POIResponse;->setResponseCode(I)V

    .line 1278
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager$3;->val$poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/layar/data/layer/LayerManager$POIResponse;->pageKey:Ljava/lang/String;

    .line 1279
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager$3;->val$poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;

    const-string v2, "Bad response from server"

    invoke-virtual {v1, v2}, Lcom/layar/data/layer/LayerManager$POIResponse;->setResponseMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
