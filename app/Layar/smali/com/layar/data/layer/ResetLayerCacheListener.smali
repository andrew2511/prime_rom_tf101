.class public Lcom/layar/data/layer/ResetLayerCacheListener;
.super Lcom/layar/data/layer/WrapperLayerFoundListener;
.source "ResetLayerCacheListener.java"


# direct methods
.method public constructor <init>(Lcom/layar/data/layer/LayerManager$LayerFoundListener;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/layar/data/layer/WrapperLayerFoundListener;-><init>(Lcom/layar/data/layer/LayerManager$LayerFoundListener;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected doAfter(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "layer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layar/data/layer/Layer20;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    iget-object v0, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    iget-wide v1, p1, Lcom/layar/data/layer/Layer20;->modified:J

    invoke-static {v0, v1, v2}, Lcom/layar/data/ImageCache;->setLayerModified(Ljava/lang/String;J)Z

    .line 23
    return-void
.end method
