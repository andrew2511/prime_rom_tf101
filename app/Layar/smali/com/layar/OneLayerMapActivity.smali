.class public Lcom/layar/OneLayerMapActivity;
.super Lcom/layar/LayarMapActivity;
.source "OneLayerMapActivity.java"

# interfaces
.implements Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;
.implements Lcom/layar/core/ARRenderer$POIClickListener;


# static fields
.field protected static final MENU_ACTIONS:I = 0x1e

.field protected static final MENU_AR:I = 0xa

.field protected static final MENU_FILTER:I = 0x32

.field protected static final MENU_INFO:I = 0x3c

.field protected static final MENU_LIST:I = 0x14

.field protected static final MENU_REFRESH:I = 0x28

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLayerHandler:Lcom/layar/data/layer/LayerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/layar/OneLayerMapActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/OneLayerMapActivity;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/layar/LayarMapActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dataChanged()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/layar/LayarMapActivity;->dataChanged()V

    .line 163
    invoke-static {p0, p0}, Lcom/layar/data/layer/LayerHelper;->showResponseDialog(Landroid/content/Context;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)Lcom/layar/ui/SmartDialog;

    .line 164
    return-void
.end method

.method public dataUpdateStarted()V
    .locals 0

    .prologue
    .line 168
    invoke-static {p0, p0}, Lcom/layar/data/layer/LayerHelper;->showResponseDialog(Landroid/content/Context;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)Lcom/layar/ui/SmartDialog;

    .line 169
    return-void
.end method

.method protected getMapOverlay(Landroid/content/Context;F)Lcom/layar/ui/MapOverlay;
    .locals 1
    .parameter "context"
    .parameter "density"

    .prologue
    .line 179
    new-instance v0, Lcom/layar/ui/LayerMapOverlay;

    invoke-direct {v0, p1, p2}, Lcom/layar/ui/LayerMapOverlay;-><init>(Landroid/content/Context;F)V

    .line 180
    .local v0, overlay:Lcom/layar/ui/LayerMapOverlay;
    invoke-virtual {v0, p0}, Lcom/layar/ui/LayerMapOverlay;->setPoiListener(Lcom/layar/core/ARRenderer$POIClickListener;)V

    .line 181
    return-object v0
.end method

.method protected initPOIsContainer()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iput-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 47
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, p0}, Lcom/layar/data/layer/LayerHandler;->setDownloadListener(Lcom/layar/data/DownloadListener;)V

    .line 48
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    iput-object v0, p0, Lcom/layar/OneLayerMapActivity;->mPOIsContainer:Lcom/layar/data/POIsContainerHelper;

    .line 49
    return-void
.end method

.method protected initView()V
    .locals 8

    .prologue
    .line 136
    invoke-super {p0}, Lcom/layar/LayarMapActivity;->initView()V

    .line 138
    iget-object v4, p0, Lcom/layar/OneLayerMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v4, v4, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v4}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 140
    .local v0, layer:Lcom/layar/data/layer/Layer20;
    const v4, 0x7f07000d

    invoke-virtual {p0, v4}, Lcom/layar/OneLayerMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 141
    .local v3, title:Landroid/view/View;
    if-eqz v0, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 142
    if-eqz v0, :cond_0

    .line 143
    iget v4, v0, Lcom/layar/data/layer/Layer20;->bannerBgColor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 144
    const v4, 0x7f07000f

    invoke-virtual {p0, v4}, Lcom/layar/OneLayerMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 145
    .local v2, layerTitle:Landroid/widget/TextView;
    iget v4, v0, Lcom/layar/data/layer/Layer20;->bannerTxtColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object v4, v0, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const v4, 0x7f07000e

    invoke-virtual {p0, v4}, Lcom/layar/OneLayerMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 148
    .local v1, layerLogo:Landroid/widget/ImageView;
    invoke-static {}, Lcom/layar/data/ImageCache;->getInstance()Lcom/layar/data/ImageCache;

    move-result-object v4

    .line 149
    iget-object v5, v0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    const-string v6, "banner_icon"

    const/4 v7, 0x0

    .line 148
    invoke-virtual {v4, v5, v6, v1, v7}, Lcom/layar/data/ImageCache;->setLayerImageBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 151
    iget-object v4, p0, Lcom/layar/OneLayerMapActivity;->mapOverlay:Lcom/layar/ui/MapOverlay;

    invoke-virtual {v4}, Lcom/layar/ui/MapOverlay;->layerChanged()V

    .line 153
    .end local v1           #layerLogo:Landroid/widget/ImageView;
    .end local v2           #layerTitle:Landroid/widget/TextView;
    :cond_0
    return-void

    .line 141
    :cond_1
    const/16 v4, 0x8

    goto :goto_0
.end method

.method public layerChanged()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/layar/OneLayerMapActivity;->initView()V

    .line 158
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3}, Lcom/layar/LayarMapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 187
    invoke-static {p0, p1, p2, p3}, Lcom/layar/data/layer/LayerHelper;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 188
    return-void
.end method

.method protected onAfterCreate()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mStatus:Lcom/layar/ui/StatusView;

    iget-object v1, p0, Lcom/layar/OneLayerMapActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-object v1, v1, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v0, v1}, Lcom/layar/ui/StatusView;->setStatusHelper(Lcom/layar/util/StatusHelper;)V

    .line 42
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 99
    invoke-super {p0, p1}, Lcom/layar/LayarMapActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 80
    :sswitch_0
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/layar/data/layer/LayerHandler;->forcePOIUpdate(ZLjava/lang/String;)V

    move v0, v2

    .line 81
    goto :goto_0

    .line 84
    :sswitch_1
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 83
    invoke-static {p0, v0}, Lcom/layar/data/layer/LayerHelper;->onSettingsButtonClicked(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    move v0, v2

    .line 85
    goto :goto_0

    .line 87
    :sswitch_2
    invoke-static {p0}, Lcom/layar/data/layer/LayerHelper;->showInfo(Landroid/app/Activity;)V

    move v0, v2

    .line 88
    goto :goto_0

    .line 90
    :sswitch_3
    invoke-static {p0}, Lcom/layar/data/layer/LayerHelper;->gotoList(Landroid/content/Context;)V

    move v0, v2

    .line 91
    goto :goto_0

    .line 93
    :sswitch_4
    invoke-static {p0}, Lcom/layar/data/layer/LayerHelper;->openCurrentLayer(Landroid/content/Context;)V

    move v0, v2

    .line 94
    goto :goto_0

    .line 96
    :sswitch_5
    invoke-static {p0}, Lcom/layar/data/layer/LayerHelper;->showLayerActionList(Landroid/app/Activity;)V

    move v0, v2

    .line 97
    goto :goto_0

    .line 78
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0x14 -> :sswitch_3
        0x1e -> :sswitch_5
        0x28 -> :sswitch_0
        0x32 -> :sswitch_1
        0x3c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPOIClick(Lcom/layar/data/BasePOI;)V
    .locals 1
    .parameter "poi"

    .prologue
    .line 192
    new-instance v0, Lcom/layar/OneLayerMapActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/layar/OneLayerMapActivity$1;-><init>(Lcom/layar/OneLayerMapActivity;Lcom/layar/data/BasePOI;)V

    invoke-virtual {p0, v0}, Lcom/layar/OneLayerMapActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-super {p0}, Lcom/layar/LayarMapActivity;->onPause()V

    .line 127
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, p0}, Lcom/layar/data/layer/LayerHandler;->unregisterListener(Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;)V

    .line 128
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0, p0}, Lcom/layar/util/SensorHelper;->unRegisterLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V

    .line 129
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerHandler;->setAutoTriggerListener(Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;)V

    .line 130
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v0, v1}, Lcom/layar/util/StatusHelper;->setListener(Lcom/layar/util/StatusHelper$StatusListener;)V

    .line 131
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerHandler;->setDownloadListener(Lcom/layar/data/DownloadListener;)V

    .line 132
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/16 v6, 0x1e

    const/16 v3, 0x14

    const/16 v2, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 55
    iget-object v1, p0, Lcom/layar/OneLayerMapActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v1

    if-eqz v1, :cond_2

    move v0, v5

    .line 57
    .local v0, layerExists:Z
    :goto_0
    const v1, 0x7f09004f

    invoke-interface {p1, v4, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 58
    const v2, 0x7f0200c8

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 59
    const v1, 0x7f090041

    invoke-interface {p1, v4, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 60
    const v2, 0x7f0200cb

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    const v1, 0x7f09016b

    invoke-interface {p1, v4, v6, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 63
    const v2, 0x7f0200c6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 65
    :cond_0
    const/16 v1, 0x28

    const/16 v2, 0x28

    const v3, 0x7f090049

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 66
    const v2, 0x7f0200cc

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 67
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/layar/OneLayerMapActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/data/layer/Layer20;->hasSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const/16 v1, 0x32

    const/16 v2, 0x32

    const v3, 0x7f090047

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 69
    const v2, 0x7f0200cf

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 71
    :cond_1
    const/16 v1, 0x3c

    const/16 v2, 0x3c

    const v3, 0x7f09004a

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 72
    const v2, 0x7f0200ca

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 73
    return v5

    .end local v0           #layerExists:Z
    :cond_2
    move v0, v4

    .line 55
    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/layar/LayarMapActivity;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0, p0}, Lcom/layar/util/SensorHelper;->registerLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V

    .line 113
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, p0}, Lcom/layar/data/layer/LayerHandler;->registerListener(Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;)V

    .line 114
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, p0}, Lcom/layar/data/layer/LayerHandler;->setAutoTriggerListener(Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;)V

    .line 115
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->updateStatus()V

    .line 116
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    iget-object v1, p0, Lcom/layar/OneLayerMapActivity;->mStatus:Lcom/layar/ui/StatusView;

    invoke-virtual {v0, v1}, Lcom/layar/util/StatusHelper;->setListener(Lcom/layar/util/StatusHelper$StatusListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/layar/OneLayerMapActivity;->dataChanged()V

    .line 119
    return-void
.end method

.method protected onSettingsButtonClicked()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 173
    invoke-static {p0, v0}, Lcom/layar/data/layer/LayerHelper;->onSettingsButtonClicked(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    .line 175
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/layar/LayarMapActivity;->onStart()V

    .line 105
    iget-object v0, p0, Lcom/layar/OneLayerMapActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, p0}, Lcom/layar/data/layer/LayerHandler;->registerListener(Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;)V

    .line 106
    return-void
.end method
