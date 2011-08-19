.class public Lcom/layar/LayarListActivity;
.super Landroid/app/ListActivity;
.source "LayarListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;
.implements Lcom/layar/util/SensorHelper$LocationChangeListener;
.implements Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;
.implements Lcom/layar/data/PoiLocker;
.implements Lcom/layar/data/DownloadListener;
.implements Lcom/layar/ui/ActionsMenu$ActionsMenuListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;",
        "Lcom/layar/util/SensorHelper$LocationChangeListener;",
        "Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;",
        "Lcom/layar/data/PoiLocker;",
        "Lcom/layar/data/DownloadListener",
        "<",
        "Lcom/layar/data/POI;",
        ">;",
        "Lcom/layar/ui/ActionsMenu$ActionsMenuListener;"
    }
.end annotation


# static fields
.field private static final MENU_ACTIONS:I = 0x1e

.field private static final MENU_AR:I = 0xa

.field private static final MENU_FILTER:I = 0x32

.field private static final MENU_INFO:I = 0x3c

.field private static final MENU_MAP:I = 0x14

.field private static final MENU_REFRESH:I = 0x28

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field protected helper:Lcom/layar/ActivityHelper;

.field private mLayerHandler:Lcom/layar/data/layer/LayerHandler;

.field private mLayerManager:Lcom/layar/data/layer/LayerManager;

.field private mPoiAdapter:Lcom/layar/adapters/PoiListAdapter;

.field protected final poiComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/layar/data/POI;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPOI:Lcom/layar/data/POI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/layar/LayarListActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/LayarListActivity;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 60
    new-instance v0, Lcom/layar/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/layar/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/layar/LayarListActivity;->helper:Lcom/layar/ActivityHelper;

    .line 148
    new-instance v0, Lcom/layar/LayarListActivity$1;

    invoke-direct {v0, p0}, Lcom/layar/LayarListActivity$1;-><init>(Lcom/layar/LayarListActivity;)V

    iput-object v0, p0, Lcom/layar/LayarListActivity;->poiComparator:Ljava/util/Comparator;

    .line 42
    return-void
.end method

.method static synthetic access$1(Lcom/layar/LayarListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/layar/LayarListActivity;->initView()V

    return-void
.end method

.method static synthetic access$2(Lcom/layar/LayarListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/layar/LayarListActivity;->updateList()V

    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    .line 125
    iget-object v4, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v4}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 127
    .local v0, layer:Lcom/layar/data/layer/Layer20;
    const v4, 0x7f07000d

    invoke-virtual {p0, v4}, Lcom/layar/LayarListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 128
    .local v3, title:Landroid/view/View;
    if-eqz v0, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 129
    if-eqz v0, :cond_0

    .line 130
    iget v4, v0, Lcom/layar/data/layer/Layer20;->bannerBgColor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    const v4, 0x7f07000f

    invoke-virtual {p0, v4}, Lcom/layar/LayarListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    .local v2, layerTitle:Landroid/widget/TextView;
    iget v4, v0, Lcom/layar/data/layer/Layer20;->bannerTxtColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v4, v0, Lcom/layar/data/layer/Layer20;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v4, 0x7f07000e

    invoke-virtual {p0, v4}, Lcom/layar/LayarListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 135
    .local v1, layerLogo:Landroid/widget/ImageView;
    invoke-static {}, Lcom/layar/data/ImageCache;->getInstance()Lcom/layar/data/ImageCache;

    move-result-object v4

    .line 136
    iget-object v5, v0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    const-string v6, "banner_icon"

    const/4 v7, 0x0

    .line 135
    invoke-virtual {v4, v5, v6, v1, v7}, Lcom/layar/data/ImageCache;->setLayerImageBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    .line 138
    invoke-direct {p0}, Lcom/layar/LayarListActivity;->updateList()V

    .line 140
    .end local v1           #layerLogo:Landroid/widget/ImageView;
    .end local v2           #layerTitle:Landroid/widget/TextView;
    :cond_0
    return-void

    .line 128
    :cond_1
    const/16 v4, 0x8

    goto :goto_0
.end method

.method private updateList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 162
    iget-object v5, p0, Lcom/layar/LayarListActivity;->mPoiAdapter:Lcom/layar/adapters/PoiListAdapter;

    invoke-virtual {v5}, Lcom/layar/adapters/PoiListAdapter;->clear()V

    .line 163
    iget-object v5, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v5}, Lcom/layar/data/layer/LayerHandler;->getPOIs()[Lcom/layar/data/POI;

    move-result-object v2

    .line 164
    .local v2, pois:[Lcom/layar/data/POI;
    if-nez v2, :cond_1

    .line 178
    :cond_0
    return-void

    .line 166
    :cond_1
    array-length v5, v2

    new-array v3, v5, [Lcom/layar/data/POI;

    .line 167
    .local v3, poisCopy:[Lcom/layar/data/POI;
    array-length v5, v2

    invoke-static {v2, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget-object v5, p0, Lcom/layar/LayarListActivity;->poiComparator:Ljava/util/Comparator;

    invoke-static {v3, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 170
    iget-object v5, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v5}, Lcom/layar/data/layer/LayerHandler;->getScope()I

    move-result v4

    .line 172
    .local v4, scope:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 173
    aget-object v1, v3, v0

    .line 174
    .local v1, poi:Lcom/layar/data/BasePOI;
    invoke-virtual {v1, v4}, Lcom/layar/data/BasePOI;->getDisplayPart(I)I

    move-result v5

    if-gez v5, :cond_2

    .line 172
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_2
    iget-object v5, p0, Lcom/layar/LayarListActivity;->mPoiAdapter:Lcom/layar/adapters/PoiListAdapter;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Lcom/layar/adapters/PoiListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public dataChanged()V
    .locals 0

    .prologue
    .line 233
    invoke-static {p0, p0}, Lcom/layar/data/layer/LayerHelper;->showResponseDialog(Landroid/content/Context;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)Lcom/layar/ui/SmartDialog;

    .line 234
    return-void
.end method

.method public dataUpdateStarted()V
    .locals 0

    .prologue
    .line 238
    invoke-static {p0, p0}, Lcom/layar/data/layer/LayerHelper;->showResponseDialog(Landroid/content/Context;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)Lcom/layar/ui/SmartDialog;

    .line 239
    return-void
.end method

.method public getAudioPlayer()Lcom/layar/data/AudioPlayer;
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwner()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 302
    return-object p0
.end method

.method public getPoisContainer()Lcom/layar/core/POIsContainer;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    return-object v0
.end method

.method public isLocked(Lcom/layar/data/BasePOI;)Z
    .locals 1
    .parameter "poi"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->isFocusLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->getFocus()Lcom/layar/data/BasePOI;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layerChanged()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/layar/LayarListActivity;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/layar/LayarListActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/layar/LayarListActivity$2;

    invoke-direct {v1, p0}, Lcom/layar/LayarListActivity$2;-><init>(Lcom/layar/LayarListActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public locationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/layar/LayarListActivity;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/layar/LayarListActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/layar/LayarListActivity$3;

    invoke-direct {v1, p0}, Lcom/layar/LayarListActivity$3;-><init>(Lcom/layar/LayarListActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public lock(Lcom/layar/data/BasePOI;)V
    .locals 1
    .parameter "poi"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->isFocusLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->getFocus()Lcom/layar/data/BasePOI;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->clearFocusLock()V

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, p1}, Lcom/layar/data/layer/LayerHandler;->setFocus(Lcom/layar/data/BasePOI;)V

    goto :goto_0
.end method

.method public onAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;)V
    .locals 7
    .parameter "action"
    .parameter "layer"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->getFocus()Lcom/layar/data/BasePOI;

    move-result-object v2

    .line 334
    .local v2, focus:Lcom/layar/data/BasePOI;
    iget-object v4, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/layar/data/ActionHelper;->executeAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;Lcom/layar/core/POIsContainer;Lcom/layar/data/AudioPlayer;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V

    .line 335
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 145
    iget-object v0, p0, Lcom/layar/LayarListActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/layar/ActivityHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/data/POI;

    .line 269
    .local v1, poi:Lcom/layar/data/POI;
    iget-object v2, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v2, v1}, Lcom/layar/data/layer/LayerHandler;->setFocus(Lcom/layar/data/BasePOI;)V

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 272
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 280
    :goto_0
    return-void

    .line 274
    :sswitch_0
    invoke-static {p0}, Lcom/layar/data/layer/LayerHelper;->openCurrentLayer(Landroid/content/Context;)V

    goto :goto_0

    .line 277
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/layar/PoiDetailsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/layar/LayarListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 272
    :sswitch_data_0
    .sparse-switch
        0x7f07000a -> :sswitch_0
        0x7f07006f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {p0}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/LayarListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 75
    iget-object v1, p0, Lcom/layar/LayarListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v1, v1, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iput-object v1, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 76
    iget-object v1, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v1, p0}, Lcom/layar/data/layer/LayerHandler;->setDownloadListener(Lcom/layar/data/DownloadListener;)V

    .line 78
    const v1, 0x7f030027

    invoke-virtual {p0, v1}, Lcom/layar/LayarListActivity;->setContentView(I)V

    .line 80
    new-instance v1, Lcom/layar/adapters/PoiListAdapter;

    invoke-direct {v1, p0, p0, p0}, Lcom/layar/adapters/PoiListAdapter;-><init>(Lcom/layar/LayarListActivity;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v1, p0, Lcom/layar/LayarListActivity;->mPoiAdapter:Lcom/layar/adapters/PoiListAdapter;

    .line 82
    invoke-virtual {p0}, Lcom/layar/LayarListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 83
    .local v0, list:Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 84
    iget-object v1, p0, Lcom/layar/LayarListActivity;->mPoiAdapter:Lcom/layar/adapters/PoiListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/layar/LayarListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public onDownloaded(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 314
    return-void
.end method

.method public onDownloadingCanceled()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public onDownloadingEnded()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public onDownloadingError(I)V
    .locals 3
    .parameter "responseCode"

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/layar/LayarListActivity;->helper:Lcom/layar/ActivityHelper;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v2, v1, v2}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    .line 328
    return-void
.end method

.method public onDownloadingStarted()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onItemDownloaded(Lcom/layar/data/POI;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 317
    return-void
.end method

.method public bridge synthetic onItemDownloaded(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/POI;

    invoke-virtual {p0, p1}, Lcom/layar/LayarListActivity;->onItemDownloaded(Lcom/layar/data/POI;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f07006f

    if-ne v1, v2, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/POI;

    .line 257
    .local v0, poi:Lcom/layar/data/POI;
    iput-object v0, p0, Lcom/layar/LayarListActivity;->selectedPOI:Lcom/layar/data/POI;

    .line 259
    iget-object v1, p0, Lcom/layar/LayarListActivity;->selectedPOI:Lcom/layar/data/POI;

    iget-object v2, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v2}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 258
    invoke-static {p0, v1, v2, v3}, Lcom/layar/data/ActionHelper;->showPoiActionsList(Landroid/app/Activity;Lcom/layar/data/BasePOI;Lcom/layar/data/layer/Layer20;Lcom/layar/core/POIsContainer;)V

    .line 261
    .end local v0           #poi:Lcom/layar/data/POI;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 216
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 197
    :sswitch_0
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/layar/data/layer/LayerHandler;->forcePOIUpdate(ZLjava/lang/String;)V

    move v0, v2

    .line 198
    goto :goto_0

    .line 201
    :sswitch_1
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 200
    invoke-static {p0, v0}, Lcom/layar/data/layer/LayerHelper;->onSettingsButtonClicked(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    move v0, v2

    .line 202
    goto :goto_0

    .line 204
    :sswitch_2
    invoke-static {p0}, Lcom/layar/data/layer/LayerHelper;->showInfo(Landroid/app/Activity;)V

    move v0, v2

    .line 205
    goto :goto_0

    .line 207
    :sswitch_3
    invoke-static {p0}, Lcom/layar/data/layer/LayerHelper;->gotoMap(Landroid/content/Context;)V

    move v0, v2

    .line 208
    goto :goto_0

    .line 210
    :sswitch_4
    invoke-static {p0}, Lcom/layar/data/layer/LayerHelper;->openCurrentLayer(Landroid/content/Context;)V

    move v0, v2

    .line 211
    goto :goto_0

    .line 213
    :sswitch_5
    invoke-static {p0}, Lcom/layar/data/layer/LayerHelper;->showLayerActionList(Landroid/app/Activity;)V

    move v0, v2

    .line 214
    goto :goto_0

    .line 195
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

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 109
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->LIST:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->unregisterView(Lcom/layar/data/layer/LayerManager$LayarView;)V

    .line 110
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0, p0}, Lcom/layar/util/SensorHelper;->unRegisterLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V

    .line 111
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, p0}, Lcom/layar/data/layer/LayerHandler;->unregisterListener(Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;)V

    .line 112
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, v2}, Lcom/layar/data/layer/LayerHandler;->setAutoTriggerListener(Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;)V

    .line 113
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {v0, v2}, Lcom/layar/util/StatusHelper;->setListener(Lcom/layar/util/StatusHelper$StatusListener;)V

    .line 114
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, v2}, Lcom/layar/data/layer/LayerHandler;->setDownloadListener(Lcom/layar/data/DownloadListener;)V

    .line 116
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/16 v5, 0x28

    const/16 v4, 0x1e

    const/16 v2, 0x14

    const/16 v1, 0xa

    const/4 v3, 0x0

    .line 182
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 183
    const v0, 0x7f09004f

    invoke-interface {p1, v3, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200c8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 184
    const v0, 0x7f090040

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 185
    const v0, 0x7f09016b

    invoke-interface {p1, v3, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200c6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 186
    const v0, 0x7f090049

    invoke-interface {p1, v3, v5, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 187
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/layer/Layer20;->hasSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const/16 v0, 0x32

    const/16 v1, 0x32

    const v2, 0x7f090047

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 189
    :cond_0
    const/16 v0, 0x3c

    const/16 v1, 0x3c

    const v2, 0x7f09004a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ca

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->LIST:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->registerView(Lcom/layar/data/layer/LayerManager$LayarView;)V

    .line 99
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, p0}, Lcom/layar/data/layer/LayerHandler;->registerListener(Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;)V

    .line 100
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0, p0}, Lcom/layar/data/layer/LayerHandler;->setAutoTriggerListener(Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;)V

    .line 101
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->updateStatus()V

    .line 103
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0, p0}, Lcom/layar/util/SensorHelper;->registerLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V

    .line 104
    return-void
.end method

.method protected onSettingsButtonClicked()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/layar/LayarListActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 157
    invoke-static {p0, v0}, Lcom/layar/data/layer/LayerHelper;->onSettingsButtonClicked(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    .line 159
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/layar/LayarListActivity;->handler:Landroid/os/Handler;

    .line 92
    invoke-direct {p0}, Lcom/layar/LayarListActivity;->initView()V

    .line 93
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/LayarListActivity;->handler:Landroid/os/Handler;

    .line 122
    return-void
.end method
