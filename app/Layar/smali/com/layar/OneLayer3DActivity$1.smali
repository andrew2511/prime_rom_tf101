.class Lcom/layar/OneLayer3DActivity$1;
.super Ljava/lang/Object;
.source "OneLayer3DActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/OneLayer3DActivity;->onPOIClick(Lcom/layar/data/BasePOI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/OneLayer3DActivity;

.field private final synthetic val$poi:Lcom/layar/data/BasePOI;


# direct methods
.method constructor <init>(Lcom/layar/OneLayer3DActivity;Lcom/layar/data/BasePOI;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/OneLayer3DActivity$1;->this$0:Lcom/layar/OneLayer3DActivity;

    iput-object p2, p0, Lcom/layar/OneLayer3DActivity$1;->val$poi:Lcom/layar/data/BasePOI;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity$1;->val$poi:Lcom/layar/data/BasePOI;

    iget-boolean v0, v0, Lcom/layar/data/BasePOI;->showBiwOnClick:Z

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity$1;->this$0:Lcom/layar/OneLayer3DActivity;

    iget-object v0, v0, Lcom/layar/OneLayer3DActivity;->mRenderer:Lcom/layar/core/ARRenderer;

    invoke-virtual {v0, v3}, Lcom/layar/core/ARRenderer;->setArrowVisible(Z)V

    .line 183
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity$1;->this$0:Lcom/layar/OneLayer3DActivity;

    iget-object v0, v0, Lcom/layar/OneLayer3DActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    iget-object v1, p0, Lcom/layar/OneLayer3DActivity$1;->val$poi:Lcom/layar/data/BasePOI;

    invoke-virtual {v0, v1, v3}, Lcom/layar/ui/BriefInfoViewWrapper;->setPOI(Lcom/layar/data/BasePOI;Z)V

    .line 184
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity$1;->this$0:Lcom/layar/OneLayer3DActivity;

    iget-object v0, v0, Lcom/layar/OneLayer3DActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    invoke-virtual {v0, v2}, Lcom/layar/ui/BriefInfoViewWrapper;->setVisibility(I)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity$1;->val$poi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->actions:[Lcom/layar/data/PoiAction;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layar/OneLayer3DActivity$1;->val$poi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->actions:[Lcom/layar/data/PoiAction;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity$1;->val$poi:Lcom/layar/data/BasePOI;

    iget-object v0, v0, Lcom/layar/data/BasePOI;->actions:[Lcom/layar/data/PoiAction;

    aget-object v0, v0, v2

    move-object v6, v0

    .line 190
    .local v6, action:Lcom/layar/data/PoiAction;
    :goto_1
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity$1;->this$0:Lcom/layar/OneLayer3DActivity;

    iget-object v0, v0, Lcom/layar/OneLayer3DActivity;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    invoke-interface {v0}, Lcom/layar/core/POIsContainer;->clearFocusLock()V

    .line 191
    if-eqz v6, :cond_0

    .line 192
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity$1;->this$0:Lcom/layar/OneLayer3DActivity;

    .line 193
    iget-object v1, p0, Lcom/layar/OneLayer3DActivity$1;->this$0:Lcom/layar/OneLayer3DActivity;

    iget-object v1, v1, Lcom/layar/OneLayer3DActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v1, v1, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lcom/layar/OneLayer3DActivity$1;->val$poi:Lcom/layar/data/BasePOI;

    iget-object v3, p0, Lcom/layar/OneLayer3DActivity$1;->this$0:Lcom/layar/OneLayer3DActivity;

    iget-object v3, v3, Lcom/layar/OneLayer3DActivity;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    iget-object v4, p0, Lcom/layar/OneLayer3DActivity$1;->this$0:Lcom/layar/OneLayer3DActivity;

    .line 195
    iget-object v5, p0, Lcom/layar/OneLayer3DActivity$1;->this$0:Lcom/layar/OneLayer3DActivity;

    .line 192
    invoke-static/range {v0 .. v5}, Lcom/layar/data/ActionHelper;->executeFirstAction(Landroid/app/Activity;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/core/POIsContainer;Lcom/layar/data/AudioPlayer;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V

    goto :goto_0

    .line 188
    .end local v6           #action:Lcom/layar/data/PoiAction;
    :cond_2
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_1
.end method
