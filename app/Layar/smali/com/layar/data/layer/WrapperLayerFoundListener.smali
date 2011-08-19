.class public abstract Lcom/layar/data/layer/WrapperLayerFoundListener;
.super Ljava/lang/Object;
.source "WrapperLayerFoundListener.java"

# interfaces
.implements Lcom/layar/data/layer/LayerManager$LayerFoundListener;


# instance fields
.field private listener:Lcom/layar/data/layer/LayerManager$LayerFoundListener;


# direct methods
.method public constructor <init>(Lcom/layar/data/layer/LayerManager$LayerFoundListener;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/layar/data/layer/WrapperLayerFoundListener;->setListener(Lcom/layar/data/layer/LayerManager$LayerFoundListener;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected doAfter(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 33
    .local p2, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    return-void
.end method

.method protected doBefore(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 32
    .local p2, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    return-void
.end method

.method public getListener()Lcom/layar/data/layer/LayerManager$LayerFoundListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/layar/data/layer/WrapperLayerFoundListener;->listener:Lcom/layar/data/layer/LayerManager$LayerFoundListener;

    return-object v0
.end method

.method public onLayerFound(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;)Z
    .locals 2
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
    .line 24
    .local p2, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    invoke-virtual {p0, p1, p2}, Lcom/layar/data/layer/WrapperLayerFoundListener;->doBefore(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;)V

    .line 25
    const/4 v0, 0x1

    .line 26
    .local v0, result:Z
    iget-object v1, p0, Lcom/layar/data/layer/WrapperLayerFoundListener;->listener:Lcom/layar/data/layer/LayerManager$LayerFoundListener;

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/layar/data/layer/WrapperLayerFoundListener;->listener:Lcom/layar/data/layer/LayerManager$LayerFoundListener;

    invoke-interface {v1, p1, p2}, Lcom/layar/data/layer/LayerManager$LayerFoundListener;->onLayerFound(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;)Z

    move-result v0

    .line 28
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/layar/data/layer/WrapperLayerFoundListener;->doAfter(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;)V

    .line 29
    return v0
.end method

.method public setListener(Lcom/layar/data/layer/LayerManager$LayerFoundListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/layar/data/layer/WrapperLayerFoundListener;->listener:Lcom/layar/data/layer/LayerManager$LayerFoundListener;

    .line 37
    return-void
.end method
