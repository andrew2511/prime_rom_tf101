.class Lcom/layar/data/layer/LayerManager$1;
.super Lcom/layar/data/layer/LayerManager$InternalLayerFoundListener;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/data/layer/LayerManager;->getLayers(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/layer/LayerManager;

.field private final synthetic val$firstPage:Z

.field private final synthetic val$listener:Lcom/layar/data/layer/LayerManager$LayerFoundListener;

.field private final synthetic val$location:Landroid/location/Location;

.field private final synthetic val$outParams:Lcom/layar/data/PaginationParams;

.field private final synthetic val$selector:Lcom/layar/data/layer/LayersSelector;


# direct methods
.method constructor <init>(Lcom/layar/data/layer/LayerManager;Lcom/layar/data/PaginationParams;Lcom/layar/data/layer/LayersSelector;ZLandroid/location/Location;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/layer/LayerManager$1;->this$0:Lcom/layar/data/layer/LayerManager;

    iput-object p2, p0, Lcom/layar/data/layer/LayerManager$1;->val$outParams:Lcom/layar/data/PaginationParams;

    iput-object p3, p0, Lcom/layar/data/layer/LayerManager$1;->val$selector:Lcom/layar/data/layer/LayersSelector;

    iput-boolean p4, p0, Lcom/layar/data/layer/LayerManager$1;->val$firstPage:Z

    iput-object p5, p0, Lcom/layar/data/layer/LayerManager$1;->val$location:Landroid/location/Location;

    iput-object p6, p0, Lcom/layar/data/layer/LayerManager$1;->val$listener:Lcom/layar/data/layer/LayerManager$LayerFoundListener;

    .line 822
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/layar/data/layer/LayerManager$InternalLayerFoundListener;-><init>(Lcom/layar/data/layer/LayerManager;Lcom/layar/data/layer/LayerManager$InternalLayerFoundListener;)V

    return-void
.end method


# virtual methods
.method public onLayerFound(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;)Z
    .locals 4
    .parameter "layer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layar/data/layer/Layer20;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    const/4 v3, 0x1

    .line 827
    iget-boolean v0, p0, Lcom/layar/data/layer/LayerManager$1;->wasPageUpdated:Z

    if-nez v0, :cond_2

    .line 828
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager$1;->val$outParams:Lcom/layar/data/PaginationParams;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager$1;->this$0:Lcom/layar/data/layer/LayerManager;

    invoke-static {v0}, Lcom/layar/data/layer/LayerManager;->access$0(Lcom/layar/data/layer/LayerManager;)Lcom/layar/data/layer/LayerCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager$1;->val$selector:Lcom/layar/data/layer/LayersSelector;

    iget-object v2, p0, Lcom/layar/data/layer/LayerManager$1;->val$outParams:Lcom/layar/data/PaginationParams;

    iget-boolean v2, v2, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-eqz v2, :cond_3

    .line 830
    iget-object v2, p0, Lcom/layar/data/layer/LayerManager$1;->val$outParams:Lcom/layar/data/PaginationParams;

    iget-object v2, v2, Lcom/layar/data/PaginationParams;->pageKey:Ljava/lang/String;

    .line 829
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/layar/data/layer/LayerCacheManager;->setPageKey(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)V

    .line 832
    :cond_0
    iget-boolean v0, p0, Lcom/layar/data/layer/LayerManager$1;->val$firstPage:Z

    if-eqz v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager$1;->this$0:Lcom/layar/data/layer/LayerManager;

    invoke-static {v0}, Lcom/layar/data/layer/LayerManager;->access$0(Lcom/layar/data/layer/LayerManager;)Lcom/layar/data/layer/LayerCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager$1;->val$selector:Lcom/layar/data/layer/LayersSelector;

    iget-object v2, p0, Lcom/layar/data/layer/LayerManager$1;->val$location:Landroid/location/Location;

    invoke-virtual {v0, v1, v2}, Lcom/layar/data/layer/LayerCacheManager;->setLastLocation(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;)V

    .line 835
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager$1;->this$0:Lcom/layar/data/layer/LayerManager;

    invoke-static {v0}, Lcom/layar/data/layer/LayerManager;->access$0(Lcom/layar/data/layer/LayerManager;)Lcom/layar/data/layer/LayerCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager$1;->val$selector:Lcom/layar/data/layer/LayersSelector;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerCacheManager;->setLastUpdateTime(Lcom/layar/data/layer/LayersSelector;)V

    .line 837
    :cond_1
    iput-boolean v3, p0, Lcom/layar/data/layer/LayerManager$1;->wasPageUpdated:Z

    .line 842
    :cond_2
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager$1;->this$0:Lcom/layar/data/layer/LayerManager;

    invoke-static {v0}, Lcom/layar/data/layer/LayerManager;->access$1(Lcom/layar/data/layer/LayerManager;)Lcom/layar/data/layer/LayerDB20;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/layar/data/layer/LayerDB20;->addLayer(Lcom/layar/data/layer/Layer20;)V

    .line 844
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager$1;->this$0:Lcom/layar/data/layer/LayerManager;

    invoke-static {v0}, Lcom/layar/data/layer/LayerManager;->access$1(Lcom/layar/data/layer/LayerManager;)Lcom/layar/data/layer/LayerDB20;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager$1;->val$selector:Lcom/layar/data/layer/LayersSelector;

    invoke-virtual {v0, v1, p1}, Lcom/layar/data/layer/LayerDB20;->addLayer(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/Layer20;)V

    .line 847
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager$1;->val$listener:Lcom/layar/data/layer/LayerManager$LayerFoundListener;

    if-eqz v0, :cond_4

    .line 848
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager$1;->val$listener:Lcom/layar/data/layer/LayerManager$LayerFoundListener;

    invoke-interface {v0, p1, p2}, Lcom/layar/data/layer/LayerManager$LayerFoundListener;->onLayerFound(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;)Z

    move-result v0

    .line 849
    :goto_1
    return v0

    .line 830
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    move v0, v3

    .line 849
    goto :goto_1
.end method
