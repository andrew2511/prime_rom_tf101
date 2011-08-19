.class Lcom/layar/OneLayerMapActivity$1;
.super Ljava/lang/Object;
.source "OneLayerMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/OneLayerMapActivity;->onPOIClick(Lcom/layar/data/BasePOI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/OneLayerMapActivity;

.field private final synthetic val$poi:Lcom/layar/data/BasePOI;


# direct methods
.method constructor <init>(Lcom/layar/OneLayerMapActivity;Lcom/layar/data/BasePOI;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/OneLayerMapActivity$1;->this$0:Lcom/layar/OneLayerMapActivity;

    iput-object p2, p0, Lcom/layar/OneLayerMapActivity$1;->val$poi:Lcom/layar/data/BasePOI;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 194
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity$1;->val$poi:Lcom/layar/data/BasePOI;

    iget-boolean v0, v0, Lcom/layar/data/BasePOI;->showBiwOnClick:Z

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity$1;->val$poi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->actions:[Lcom/layar/data/PoiAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layar/OneLayerMapActivity$1;->val$poi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->actions:[Lcom/layar/data/PoiAction;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity$1;->val$poi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->actions:[Lcom/layar/data/PoiAction;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v6, v0

    .line 199
    .local v6, action:Lcom/layar/data/PoiAction;
    :goto_0
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity$1;->this$0:Lcom/layar/OneLayerMapActivity;

    iget-object v0, v0, Lcom/layar/OneLayerMapActivity;->mPOIsContainer:Lcom/layar/data/POIsContainerHelper;

    invoke-virtual {v0}, Lcom/layar/data/POIsContainerHelper;->clearFocusLock()V

    .line 200
    if-eqz v6, :cond_0

    .line 201
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity$1;->this$0:Lcom/layar/OneLayerMapActivity;

    .line 202
    iget-object v1, p0, Lcom/layar/OneLayerMapActivity$1;->this$0:Lcom/layar/OneLayerMapActivity;

    iget-object v1, v1, Lcom/layar/OneLayerMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v1, v1, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v1

    .line 203
    iget-object v2, p0, Lcom/layar/OneLayerMapActivity$1;->val$poi:Lcom/layar/data/BasePOI;

    iget-object v3, p0, Lcom/layar/OneLayerMapActivity$1;->this$0:Lcom/layar/OneLayerMapActivity;

    iget-object v3, v3, Lcom/layar/OneLayerMapActivity;->mPOIsContainer:Lcom/layar/data/POIsContainerHelper;

    iget-object v4, p0, Lcom/layar/OneLayerMapActivity$1;->this$0:Lcom/layar/OneLayerMapActivity;

    .line 204
    iget-object v5, p0, Lcom/layar/OneLayerMapActivity$1;->this$0:Lcom/layar/OneLayerMapActivity;

    .line 201
    invoke-static/range {v0 .. v5}, Lcom/layar/data/ActionHelper;->executeFirstAction(Landroid/app/Activity;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/core/POIsContainer;Lcom/layar/data/AudioPlayer;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V

    .line 207
    .end local v6           #action:Lcom/layar/data/PoiAction;
    :cond_0
    return-void

    .line 197
    :cond_1
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0
.end method
