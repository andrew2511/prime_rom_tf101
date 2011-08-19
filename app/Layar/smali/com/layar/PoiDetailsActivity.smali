.class public Lcom/layar/PoiDetailsActivity;
.super Landroid/app/Activity;
.source "PoiDetailsActivity.java"

# interfaces
.implements Lcom/layar/util/SensorHelper$LocationChangeListener;


# instance fields
.field private currentPoi:Lcom/layar/data/POI;

.field private handler:Landroid/os/Handler;

.field private mLayerManager:Lcom/layar/data/layer/LayerManager;

.field private updateDistance:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    new-instance v0, Lcom/layar/PoiDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/layar/PoiDetailsActivity$1;-><init>(Lcom/layar/PoiDetailsActivity;)V

    iput-object v0, p0, Lcom/layar/PoiDetailsActivity;->updateDistance:Ljava/lang/Runnable;

    .line 21
    return-void
.end method

.method private _iniViews()V
    .locals 11

    .prologue
    .line 40
    iget-object v8, p0, Lcom/layar/PoiDetailsActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v8, v8, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v8}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v2

    .line 41
    .local v2, layer:Lcom/layar/data/layer/Layer20;
    if-nez v2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/layar/PoiDetailsActivity;->finish()V

    .line 70
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcom/layar/App;->getImageCache()Lcom/layar/data/ImageCache;

    move-result-object v1

    .line 50
    .local v1, imageCache:Lcom/layar/data/ImageCache;
    const v8, 0x7f07000d

    invoke-virtual {p0, v8}, Lcom/layar/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget v9, v2, Lcom/layar/data/layer/Layer20;->bannerBgColor:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    const v8, 0x7f07000f

    invoke-virtual {p0, v8}, Lcom/layar/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 52
    .local v4, layerTitle:Landroid/widget/TextView;
    iget v8, v2, Lcom/layar/data/layer/Layer20;->bannerTxtColor:I

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object v8, v2, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v8, 0x7f07000e

    invoke-virtual {p0, v8}, Lcom/layar/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 56
    .local v3, layerLogo:Landroid/widget/ImageView;
    iget-object v8, v2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    const-string v9, "banner_icon"

    const/4 v10, 0x0

    .line 55
    invoke-virtual {v1, v8, v9, v3, v10}, Lcom/layar/data/ImageCache;->setLayerImageBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 58
    invoke-direct {p0}, Lcom/layar/PoiDetailsActivity;->_populateInfo()V

    .line 60
    const v8, 0x7f070029

    invoke-virtual {p0, v8}, Lcom/layar/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 61
    .local v6, poiImage:Landroid/widget/ImageView;
    const v8, 0x7f070040

    invoke-virtual {p0, v8}, Lcom/layar/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    .line 62
    .local v7, progress:Landroid/widget/ProgressBar;
    iget-object v8, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    iget-object v8, v8, Lcom/layar/data/POI;->imageURL:Ljava/lang/String;

    invoke-virtual {v1, v8, v6, v7}, Lcom/layar/data/ImageCache;->setPoiImageBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 64
    const v8, 0x7f07008e

    invoke-virtual {p0, v8}, Lcom/layar/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 65
    .local v5, list:Landroid/widget/ListView;
    new-instance v0, Lcom/layar/adapters/PoiActionsAdapter;

    .line 66
    iget-object v8, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    iget-object v9, p0, Lcom/layar/PoiDetailsActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v9, v9, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 65
    invoke-direct {v0, p0, v8, v2, v9}, Lcom/layar/adapters/PoiActionsAdapter;-><init>(Landroid/app/Activity;Lcom/layar/data/BasePOI;Lcom/layar/data/layer/Layer20;Lcom/layar/core/POIsContainer;)V

    .line 67
    .local v0, actionsAdapter:Lcom/layar/adapters/PoiActionsAdapter;
    const v8, 0x7f0200be

    invoke-virtual {v0, v8}, Lcom/layar/adapters/PoiActionsAdapter;->setItemBackground(I)V

    .line 68
    invoke-virtual {v0, v0}, Lcom/layar/adapters/PoiActionsAdapter;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private _populateInfo()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/layar/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    iget-object v1, v1, Lcom/layar/data/POI;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    iget v2, v2, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v1, v2}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/layar/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    iget-object v1, v1, Lcom/layar/data/POI;->line2:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    iget v2, v2, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v1, v2}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/layar/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    iget-object v1, v1, Lcom/layar/data/POI;->line3:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    iget v2, v2, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v1, v2}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/layar/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    iget-object v1, v1, Lcom/layar/data/POI;->line4:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    iget v2, v2, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v1, v2}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/layar/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    iget-object v1, v1, Lcom/layar/data/POI;->attribution:Ljava/lang/String;

    iget-object v2, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    iget v2, v2, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v1, v2}, Lcom/layar/util/Util;->formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/layar/PoiDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    iget v1, v1, Lcom/layar/data/POI;->geodistance:I

    invoke-static {v1}, Lcom/layar/util/Util;->getDistanceTextLong(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/layar/PoiDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/layar/PoiDetailsActivity;->_populateInfo()V

    return-void
.end method


# virtual methods
.method public locationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/layar/PoiDetailsActivity;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/layar/PoiDetailsActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/layar/PoiDetailsActivity;->updateDistance:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/PoiDetailsActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 32
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/layar/PoiDetailsActivity;->setContentView(I)V

    .line 34
    iget-object v0, p0, Lcom/layar/PoiDetailsActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->getFocus()Lcom/layar/data/BasePOI;

    move-result-object v0

    check-cast v0, Lcom/layar/data/POI;

    iput-object v0, p0, Lcom/layar/PoiDetailsActivity;->currentPoi:Lcom/layar/data/POI;

    .line 36
    invoke-direct {p0}, Lcom/layar/PoiDetailsActivity;->_iniViews()V

    .line 37
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/layar/PoiDetailsActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->POI_DETAILS:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->unregisterView(Lcom/layar/data/layer/LayerManager$LayarView;)V

    .line 95
    invoke-static {}, Lcom/layar/App;->getSensorHelper()Lcom/layar/util/SensorHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/layar/util/SensorHelper;->unRegisterLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V

    .line 97
    iget-object v0, p0, Lcom/layar/PoiDetailsActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/layar/PoiDetailsActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/layar/PoiDetailsActivity;->updateDistance:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/PoiDetailsActivity;->handler:Landroid/os/Handler;

    .line 102
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/layar/PoiDetailsActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->POI_DETAILS:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->registerView(Lcom/layar/data/layer/LayerManager$LayarView;)V

    .line 86
    invoke-static {}, Lcom/layar/App;->getSensorHelper()Lcom/layar/util/SensorHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/layar/util/SensorHelper;->registerLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/layar/PoiDetailsActivity;->handler:Landroid/os/Handler;

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    return-void
.end method
