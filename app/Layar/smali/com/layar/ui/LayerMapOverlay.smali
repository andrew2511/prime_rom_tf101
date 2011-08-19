.class public Lcom/layar/ui/LayerMapOverlay;
.super Lcom/layar/ui/MapOverlay;
.source "LayerMapOverlay.java"


# instance fields
.field private mPoiListener:Lcom/layar/core/ARRenderer$POIClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 0
    .parameter "context"
    .parameter "density"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/layar/ui/MapOverlay;-><init>(Landroid/content/Context;F)V

    .line 16
    return-void
.end method


# virtual methods
.method protected getIcon(Lcom/layar/data/BasePOI;ZI)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "basePoi"
    .parameter "inFocus"
    .parameter "i"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    .local v3, icon:Landroid/graphics/Bitmap;
    move-object v0, p1

    check-cast v0, Lcom/layar/data/POI;

    move-object v4, v0

    .line 26
    .local v4, poi:Lcom/layar/data/POI;
    iget-object v5, p0, Lcom/layar/ui/LayerMapOverlay;->poiContainer:Lcom/layar/data/POIsContainerHelper;

    invoke-virtual {v5}, Lcom/layar/data/POIsContainerHelper;->getCustomCiws()[[Landroid/graphics/Bitmap;

    move-result-object v1

    .line 27
    .local v1, ciwBitmaps:[[Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/layar/ui/LayerMapOverlay;->objectIcons:[Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/layar/ui/LayerMapOverlay;->objectIcons:[Landroid/graphics/Bitmap;

    array-length v5, v5

    if-ge p3, v5, :cond_1

    iget-object v5, p0, Lcom/layar/ui/LayerMapOverlay;->objectIcons:[Landroid/graphics/Bitmap;

    aget-object v5, v5, p3

    if-eqz v5, :cond_1

    .line 28
    iget-object v5, p0, Lcom/layar/ui/LayerMapOverlay;->objectIcons:[Landroid/graphics/Bitmap;

    aget-object v3, v5, p3

    .line 38
    :cond_0
    :goto_0
    return-object v3

    .line 29
    :cond_1
    iget v5, v4, Lcom/layar/data/POI;->type:I

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 33
    array-length v2, v1

    .line 34
    .local v2, ciwCount:I
    iget v5, v4, Lcom/layar/data/POI;->type:I

    if-lt v2, v5, :cond_0

    iget v5, v4, Lcom/layar/data/POI;->type:I

    sub-int/2addr v5, v7

    aget-object v5, v1, v5

    if-eqz p2, :cond_2

    move v6, v9

    :goto_1
    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    .line 35
    iget v5, v4, Lcom/layar/data/POI;->type:I

    sub-int/2addr v5, v7

    aget-object v5, v1, v5

    if-eqz p2, :cond_3

    move v6, v9

    :goto_2
    aget-object v3, v5, v6

    goto :goto_0

    :cond_2
    move v6, v8

    .line 34
    goto :goto_1

    :cond_3
    move v6, v8

    .line 35
    goto :goto_2
.end method

.method protected onPoiTapped(Lcom/layar/data/BasePOI;)V
    .locals 1
    .parameter "poi"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/layar/ui/LayerMapOverlay;->mPoiListener:Lcom/layar/core/ARRenderer$POIClickListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/layar/ui/LayerMapOverlay;->mPoiListener:Lcom/layar/core/ARRenderer$POIClickListener;

    invoke-interface {v0, p1}, Lcom/layar/core/ARRenderer$POIClickListener;->onPOIClick(Lcom/layar/data/BasePOI;)V

    .line 45
    :cond_0
    return-void
.end method

.method public setPoiListener(Lcom/layar/core/ARRenderer$POIClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/layar/ui/LayerMapOverlay;->mPoiListener:Lcom/layar/core/ARRenderer$POIClickListener;

    .line 20
    return-void
.end method
