.class public Lcom/layar/ui/drag/FavoriteSpot;
.super Landroid/widget/ImageView;
.source "FavoriteSpot.java"

# interfaces
.implements Lcom/layar/ui/drag/DragSource;


# static fields
.field private static final TAG:Ljava/lang/String; = "layar.FavoriteSpot"


# instance fields
.field public icon:Landroid/graphics/Bitmap;

.field final layer:Lcom/layar/data/layer/Layer20;

.field private mDragger:Lcom/layar/ui/drag/DragController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V
    .locals 0
    .parameter "context"
    .parameter "layer"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/layar/ui/drag/FavoriteSpot;->layer:Lcom/layar/data/layer/Layer20;

    .line 23
    return-void
.end method


# virtual methods
.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 5
    .parameter "target"
    .parameter "success"

    .prologue
    .line 44
    const-string v2, "layar.FavoriteSpot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onDropCompleted("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz p2, :cond_0

    instance-of v2, p1, Lcom/layar/ui/drag/LayerSpot;

    if-eqz v2, :cond_0

    .line 46
    move-object v0, p1

    check-cast v0, Lcom/layar/ui/drag/LayerSpot;

    move-object v1, v0

    .line 47
    .local v1, spot:Lcom/layar/ui/drag/LayerSpot;
    iget-object v2, p0, Lcom/layar/ui/drag/FavoriteSpot;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v3, p0, Lcom/layar/ui/drag/FavoriteSpot;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Lcom/layar/ui/drag/LayerSpot;->setLayer(Lcom/layar/data/layer/Layer20;Landroid/graphics/Bitmap;)V

    .line 49
    .end local v1           #spot:Lcom/layar/ui/drag/LayerSpot;
    :cond_0
    return-void
.end method

.method public setDragger(Lcom/layar/ui/drag/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/layar/ui/drag/FavoriteSpot;->mDragger:Lcom/layar/ui/drag/DragController;

    .line 40
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bm"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/layar/ui/drag/FavoriteSpot;->icon:Landroid/graphics/Bitmap;

    .line 34
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 35
    return-void
.end method

.method public startDrag()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/layar/ui/drag/FavoriteSpot;->mDragger:Lcom/layar/ui/drag/DragController;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/layar/ui/drag/FavoriteSpot;->mDragger:Lcom/layar/ui/drag/DragController;

    iget-object v1, p0, Lcom/layar/ui/drag/FavoriteSpot;->icon:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-interface {v0, p0, p0, v1, v2}, Lcom/layar/ui/drag/DragController;->startDrag(Landroid/view/View;Lcom/layar/ui/drag/DragSource;Ljava/lang/Object;I)V

    .line 29
    :cond_0
    return-void
.end method
