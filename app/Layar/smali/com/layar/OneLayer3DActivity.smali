.class public Lcom/layar/OneLayer3DActivity;
.super Lcom/layar/Layar3DActivity;
.source "OneLayer3DActivity.java"

# interfaces
.implements Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;


# static fields
.field public static final EXTRAS_DONT_OPEN_FILTERS:Ljava/lang/String; = "dontOpenFilters"

.field protected static final MENU_ACTIONS:I = 0x1e

.field protected static final MENU_FILTER:I = 0x32

.field protected static final MENU_INFO:I = 0x3c

.field protected static final MENU_LIST:I = 0xa

.field protected static final MENU_MAP:I = 0x14

.field protected static final MENU_REFRESH:I = 0x28

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected mLayerHandler:Lcom/layar/data/layer/LayerHandler;

.field protected mLayerRenderer:Lcom/layar/core/LayerRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/layar/OneLayer3DActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 22
    sput-object v0, Lcom/layar/OneLayer3DActivity;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/layar/Layar3DActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createMenu(Lcom/layar/ui/CustomMenu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/layar/ui/CustomMenu;->clearMenu()V

    .line 98
    iget-object v1, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 100
    .local v0, layerExists:Z
    :goto_0
    new-instance v1, Lcom/layar/ui/CustomMenu$CustomMenuItem;

    const/16 v2, 0xa

    .line 101
    const v3, 0x7f0200cb

    const v4, 0x7f090041

    invoke-virtual {p0, v4}, Lcom/layar/OneLayer3DActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/layar/ui/CustomMenu$CustomMenuItem;-><init>(IILjava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p1, v1}, Lcom/layar/ui/CustomMenu;->addItem(Lcom/layar/ui/CustomMenu$CustomMenuItem;)V

    .line 103
    new-instance v1, Lcom/layar/ui/CustomMenu$CustomMenuItem;

    const/16 v2, 0x14

    .line 104
    const v3, 0x7f0200d0

    const v4, 0x7f090040

    invoke-virtual {p0, v4}, Lcom/layar/OneLayer3DActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/layar/ui/CustomMenu$CustomMenuItem;-><init>(IILjava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p1, v1}, Lcom/layar/ui/CustomMenu;->addItem(Lcom/layar/ui/CustomMenu$CustomMenuItem;)V

    .line 106
    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Lcom/layar/ui/CustomMenu$CustomMenuItem;

    const/16 v2, 0x1e

    .line 108
    const v3, 0x7f0200c6

    const v4, 0x7f09016b

    invoke-virtual {p0, v4}, Lcom/layar/OneLayer3DActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/layar/ui/CustomMenu$CustomMenuItem;-><init>(IILjava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p1, v1}, Lcom/layar/ui/CustomMenu;->addItem(Lcom/layar/ui/CustomMenu$CustomMenuItem;)V

    .line 111
    :cond_0
    new-instance v1, Lcom/layar/ui/CustomMenu$CustomMenuItem;

    const/16 v2, 0x28

    .line 112
    const v3, 0x7f0200cc

    const v4, 0x7f090049

    invoke-virtual {p0, v4}, Lcom/layar/OneLayer3DActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/layar/ui/CustomMenu$CustomMenuItem;-><init>(IILjava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p1, v1}, Lcom/layar/ui/CustomMenu;->addItem(Lcom/layar/ui/CustomMenu$CustomMenuItem;)V

    .line 114
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layar/data/layer/Layer20;->hasSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    new-instance v1, Lcom/layar/ui/CustomMenu$CustomMenuItem;

    const/16 v2, 0x32

    .line 116
    const v3, 0x7f0200cf

    const v4, 0x7f090046

    invoke-virtual {p0, v4}, Lcom/layar/OneLayer3DActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/layar/ui/CustomMenu$CustomMenuItem;-><init>(IILjava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p1, v1}, Lcom/layar/ui/CustomMenu;->addItem(Lcom/layar/ui/CustomMenu$CustomMenuItem;)V

    .line 119
    :cond_1
    new-instance v1, Lcom/layar/ui/CustomMenu$CustomMenuItem;

    const/16 v2, 0x3c

    .line 120
    const v3, 0x7f0200ca

    const v4, 0x7f09004a

    invoke-virtual {p0, v4}, Lcom/layar/OneLayer3DActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/layar/ui/CustomMenu$CustomMenuItem;-><init>(IILjava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p1, v1}, Lcom/layar/ui/CustomMenu;->addItem(Lcom/layar/ui/CustomMenu$CustomMenuItem;)V

    .line 122
    invoke-super {p0, p1}, Lcom/layar/Layar3DActivity;->createMenu(Lcom/layar/ui/CustomMenu;)Z

    move-result v1

    return v1

    .line 98
    .end local v0           #layerExists:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto/16 :goto_0
.end method

.method public dataChanged()V
    .locals 4

    .prologue
    .line 54
    iget-object v3, p0, Lcom/layar/OneLayer3DActivity;->mLayerRenderer:Lcom/layar/core/LayerRenderer;

    invoke-virtual {v3}, Lcom/layar/core/LayerRenderer;->dataChanged()V

    .line 56
    invoke-virtual {p0}, Lcom/layar/OneLayer3DActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 58
    const-string v3, "AR:dataId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, poiId:Ljava/lang/String;
    iget-object v3, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v3}, Lcom/layar/data/layer/LayerHandler;->getFocus()Lcom/layar/data/BasePOI;

    move-result-object v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 60
    iget-object v3, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v3, v2}, Lcom/layar/data/layer/LayerHandler;->getPOI(Ljava/lang/String;)Lcom/layar/data/POI;

    move-result-object v1

    .line 61
    .local v1, poi:Lcom/layar/data/POI;
    if-eqz v1, :cond_0

    .line 64
    iget-object v3, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v3, v1}, Lcom/layar/data/layer/LayerHandler;->setFocus(Lcom/layar/data/BasePOI;)V

    .line 66
    const-string v3, "AR:dataId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 71
    .end local v1           #poi:Lcom/layar/data/POI;
    .end local v2           #poiId:Ljava/lang/String;
    :cond_0
    invoke-static {p0, p0}, Lcom/layar/data/layer/LayerHelper;->showResponseDialog(Landroid/content/Context;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)Lcom/layar/ui/SmartDialog;

    .line 72
    return-void
.end method

.method public dataUpdateStarted()V
    .locals 0

    .prologue
    .line 76
    invoke-static {p0, p0}, Lcom/layar/data/layer/LayerHelper;->showResponseDialog(Landroid/content/Context;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)Lcom/layar/ui/SmartDialog;

    .line 77
    return-void
.end method

.method protected initLayerRenderer()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/layar/core/LayerRenderer;

    invoke-direct {v0, p0}, Lcom/layar/core/LayerRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerRenderer:Lcom/layar/core/LayerRenderer;

    .line 41
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerRenderer:Lcom/layar/core/LayerRenderer;

    iput-object v0, p0, Lcom/layar/OneLayer3DActivity;->mRenderer:Lcom/layar/core/ARRenderer;

    .line 42
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerRenderer:Lcom/layar/core/LayerRenderer;

    iget-object v1, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, v1}, Lcom/layar/core/LayerRenderer;->setLayerHandler(Lcom/layar/data/layer/LayerHandler;)V

    .line 43
    return-void
.end method

.method protected initPOIsContainer()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iput-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 48
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, p0}, Lcom/layar/data/layer/LayerHandler;->setDownloadListener(Lcom/layar/data/DownloadListener;)V

    .line 49
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    iput-object v0, p0, Lcom/layar/OneLayer3DActivity;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    .line 50
    return-void
.end method

.method protected initView()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/layar/Layar3DActivity;->initView()V

    .line 169
    invoke-virtual {p0}, Lcom/layar/OneLayer3DActivity;->layerChanged()V

    .line 170
    return-void
.end method

.method public layerChanged()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerRenderer:Lcom/layar/core/LayerRenderer;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerRenderer:Lcom/layar/core/LayerRenderer;

    invoke-virtual {v0}, Lcom/layar/core/LayerRenderer;->layerChanged()V

    .line 83
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 217
    invoke-super {p0, p1, p2, p3}, Lcom/layar/Layar3DActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 218
    invoke-static {p0, p1, p2, p3}, Lcom/layar/data/layer/LayerHelper;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 219
    return-void
.end method

.method protected onAfterCreate()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->viewStatus:Lcom/layar/ui/StatusView;

    iget-object v1, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-object v1, v1, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v0, v1}, Lcom/layar/ui/StatusView;->setStatusHelper(Lcom/layar/util/StatusHelper;)V

    .line 92
    return-void
.end method

.method protected onBeforeCreate()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/layar/Layar3DActivity;->onMenuItemClick(I)V

    .line 128
    sparse-switch p1, :sswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 130
    :sswitch_0
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/layar/core/POIsContainer;->forcePOIUpdate(ZLjava/lang/String;)V

    goto :goto_0

    .line 133
    :sswitch_1
    invoke-static {p0}, Lcom/layar/data/layer/LayerHelper;->showInfo(Landroid/app/Activity;)V

    goto :goto_0

    .line 136
    :sswitch_2
    invoke-virtual {p0}, Lcom/layar/OneLayer3DActivity;->onSettingsButtonClicked()V

    goto :goto_0

    .line 139
    :sswitch_3
    invoke-static {p0}, Lcom/layar/data/layer/LayerHelper;->gotoList(Landroid/content/Context;)V

    goto :goto_0

    .line 142
    :sswitch_4
    invoke-static {p0}, Lcom/layar/data/layer/LayerHelper;->gotoMap(Landroid/content/Context;)V

    goto :goto_0

    .line 145
    :sswitch_5
    invoke-static {p0}, Lcom/layar/data/layer/LayerHelper;->showLayerActionList(Landroid/app/Activity;)V

    goto :goto_0

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0x14 -> :sswitch_4
        0x1e -> :sswitch_5
        0x28 -> :sswitch_0
        0x32 -> :sswitch_2
        0x3c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPOIClick(Lcom/layar/data/BasePOI;)V
    .locals 1
    .parameter "poi"

    .prologue
    .line 179
    new-instance v0, Lcom/layar/OneLayer3DActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/layar/OneLayer3DActivity$1;-><init>(Lcom/layar/OneLayer3DActivity;Lcom/layar/data/BasePOI;)V

    invoke-virtual {p0, v0}, Lcom/layar/OneLayer3DActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-super {p0}, Lcom/layar/Layar3DActivity;->onPause()V

    .line 161
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerHandler;->setAutoTriggerListener(Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;)V

    .line 162
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v0, v1}, Lcom/layar/util/StatusHelper;->setListener(Lcom/layar/util/StatusHelper$StatusListener;)V

    .line 163
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerHandler;->setDownloadListener(Lcom/layar/data/DownloadListener;)V

    .line 164
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/layar/Layar3DActivity;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, p0}, Lcom/layar/data/layer/LayerHandler;->setAutoTriggerListener(Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;)V

    .line 154
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->updateStatus()V

    .line 155
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    iget-object v1, p0, Lcom/layar/OneLayer3DActivity;->viewStatus:Lcom/layar/ui/StatusView;

    invoke-virtual {v0, v1}, Lcom/layar/util/StatusHelper;->setListener(Lcom/layar/util/StatusHelper$StatusListener;)V

    .line 156
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/layar/Layar3DActivity;->onStart()V

    .line 205
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, p0}, Lcom/layar/data/layer/LayerHandler;->registerListener(Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;)V

    .line 206
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerRenderer:Lcom/layar/core/LayerRenderer;

    invoke-virtual {v0}, Lcom/layar/core/LayerRenderer;->dataChanged()V

    .line 207
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Lcom/layar/Layar3DActivity;->onStop()V

    .line 212
    iget-object v0, p0, Lcom/layar/OneLayer3DActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, p0}, Lcom/layar/data/layer/LayerHandler;->unregisterListener(Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;)V

    .line 213
    return-void
.end method
