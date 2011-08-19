.class public Lcom/nvidia/tegrazone/ImageViewerActivity;
.super Landroid/app/Activity;
.source "ImageViewerActivity.java"


# instance fields
.field public aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

.field model:Lcom/nvidia/tegrazone/model/NVModel;

.field tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    .line 28
    return-void
.end method


# virtual methods
.method public getURL(Lcom/nvidia/tegrazone/model/vo/MediaVO;)Ljava/lang/String;
    .locals 5
    .parameter "item"

    .prologue
    .line 107
    iget-object v3, p1, Lcom/nvidia/tegrazone/model/vo/MediaVO;->itemType:Ljava/lang/String;

    sget-object v4, Lcom/nvidia/tegrazone/model/vo/MediaVO;->VIDEO_TYPE:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 108
    move-object v0, p1

    check-cast v0, Lcom/nvidia/tegrazone/model/vo/VideoVO;

    move-object v2, v0

    .line 109
    .local v2, videoVO:Lcom/nvidia/tegrazone/model/vo/VideoVO;
    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/VideoVO;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    .line 112
    .end local v2           #videoVO:Lcom/nvidia/tegrazone/model/vo/VideoVO;
    :goto_0
    return-object v3

    .line 111
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/nvidia/tegrazone/model/vo/ImageVO;

    move-object v1, v0

    .line 112
    .local v1, imageVO:Lcom/nvidia/tegrazone/model/vo/ImageVO;
    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/ImageVO;->getfullsizeUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public handleItemSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iput p1, v0, Lcom/nvidia/tegrazone/model/NVModel;->imagesPosition:I

    .line 119
    iget-object v0, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/vo/MediaVO;->itemType:Ljava/lang/String;

    sget-object v1, Lcom/nvidia/tegrazone/model/vo/MediaVO;->VIDEO_TYPE:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ImageViewerActivity;->trackVideoPageView()V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ImageViewerActivity;->trackImagePageView()V

    goto :goto_0
.end method

.method public initGallery()V
    .locals 8

    .prologue
    .line 60
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v6

    iget-object v2, v6, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 61
    .local v2, game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;
    if-eqz v2, :cond_0

    .line 62
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v6

    iget-object v6, v6, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v6}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v4

    .line 63
    .local v4, media:[Lcom/nvidia/tegrazone/model/vo/MediaVO;
    if-eqz v4, :cond_0

    .line 67
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v5, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v4

    if-lt v3, v6, :cond_1

    .line 71
    new-instance v1, Lcom/nvidia/tegrazone/adapters/ImageViewerAdapter;

    invoke-direct {v1, p0, v5}, Lcom/nvidia/tegrazone/adapters/ImageViewerAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 73
    .local v1, coverImageAdapter:Lcom/nvidia/tegrazone/adapters/ImageViewerAdapter;
    const v6, 0x7f0a008a

    invoke-virtual {p0, v6}, Lcom/nvidia/tegrazone/ImageViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 76
    .local v0, coverFlow:Landroid/widget/Gallery;
    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 78
    const/16 v6, 0xfa

    invoke-virtual {v0, v6}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    .line 81
    new-instance v6, Lcom/nvidia/tegrazone/ImageViewerActivity$1;

    invoke-direct {v6, p0}, Lcom/nvidia/tegrazone/ImageViewerActivity$1;-><init>(Lcom/nvidia/tegrazone/ImageViewerActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    new-instance v6, Lcom/nvidia/tegrazone/ImageViewerActivity$2;

    invoke-direct {v6, p0}, Lcom/nvidia/tegrazone/ImageViewerActivity$2;-><init>(Lcom/nvidia/tegrazone/ImageViewerActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 100
    iget-object v6, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget v6, v6, Lcom/nvidia/tegrazone/model/NVModel;->imagesPosition:I

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 104
    .end local v0           #coverFlow:Landroid/widget/Gallery;
    .end local v1           #coverImageAdapter:Lcom/nvidia/tegrazone/adapters/ImageViewerAdapter;
    .end local v3           #i:I
    .end local v4           #media:[Lcom/nvidia/tegrazone/model/vo/MediaVO;
    .end local v5           #urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 69
    .restart local v3       #i:I
    .restart local v4       #media:[Lcom/nvidia/tegrazone/model/vo/MediaVO;
    .restart local v5       #urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    aget-object v6, v4, v3

    invoke-virtual {p0, v6}, Lcom/nvidia/tegrazone/ImageViewerActivity;->getURL(Lcom/nvidia/tegrazone/model/vo/MediaVO;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public launchVideo()V
    .locals 6

    .prologue
    .line 127
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->imagesPosition:I

    iget-object v2, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 128
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->imagesPosition:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/vo/MediaVO;->itemType:Ljava/lang/String;

    sget-object v2, Lcom/nvidia/tegrazone/model/vo/MediaVO;->VIDEO_TYPE:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 129
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->imagesPosition:I

    aget-object v0, v1, v2

    check-cast v0, Lcom/nvidia/tegrazone/model/vo/VideoVO;

    .line 130
    .local v0, tempVideo:Lcom/nvidia/tegrazone/model/vo/VideoVO;
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->imagesPosition:I

    invoke-static {p0, v1}, Lcom/nvidia/tegrazone/utils/VideoHelper;->loadVideo(Landroid/app/Activity;I)V

    .line 132
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v3

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Clicks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string v3, "Video"

    .line 135
    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/VideoVO;->getVideoURL()Ljava/lang/String;

    move-result-object v4

    .line 136
    const/4 v5, 0x0

    .line 132
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 140
    .end local v0           #tempVideo:Lcom/nvidia/tegrazone/model/vo/VideoVO;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f03001d

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/ImageViewerActivity;->setContentView(I)V

    .line 42
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v1, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 46
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    .local v0, extras:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->blocker:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const-string v2, "position"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/nvidia/tegrazone/model/NVModel;->imagesPosition:I

    .line 50
    :cond_0
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 52
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v2, "UA-1273456-49"

    invoke-virtual {v1, v2, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ImageViewerActivity;->initGallery()V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ImageViewerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 162
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 163
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 172
    :pswitch_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ImageViewerActivity;->shareThis()V

    move v0, v1

    .line 173
    goto :goto_0

    .line 175
    :pswitch_1
    new-instance v0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    .line 176
    iget-object v0, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->showAboutWindow()V

    move v0, v1

    .line 177
    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x7f0a00cc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 221
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/NVUtils;->checkAboutWindow(Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;)V

    .line 224
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 187
    const v0, 0x7f0a00cb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->blocker:Ljava/lang/Boolean;

    .line 208
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 201
    iget-object v0, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->blocker:Ljava/lang/Boolean;

    .line 203
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 212
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    new-instance v0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    .line 214
    iget-object v0, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->aboutwindowBuilder:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/NVUtils;->restartAboutWindow(Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;)V

    .line 216
    :cond_1
    return-void
.end method

.method public shareThis()V
    .locals 4

    .prologue
    .line 193
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ImageViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ImageViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ImageViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {p0, v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public trackImagePageView()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->imagesPosition:I

    aget-object v0, v1, v2

    check-cast v0, Lcom/nvidia/tegrazone/model/vo/ImageVO;

    .line 146
    .local v0, imageVO:Lcom/nvidia/tegrazone/model/vo/ImageVO;
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/ImageVO;->getfullsizeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 148
    return-void
.end method

.method public trackVideoPageView()V
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->imagesPosition:I

    aget-object v0, v1, v2

    check-cast v0, Lcom/nvidia/tegrazone/model/vo/VideoVO;

    .line 154
    .local v0, videoVO:Lcom/nvidia/tegrazone/model/vo/VideoVO;
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/VideoVO;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/nvidia/tegrazone/ImageViewerActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 156
    return-void
.end method
