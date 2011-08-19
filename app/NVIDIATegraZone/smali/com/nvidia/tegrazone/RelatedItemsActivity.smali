.class public Lcom/nvidia/tegrazone/RelatedItemsActivity;
.super Landroid/app/Activity;
.source "RelatedItemsActivity.java"


# instance fields
.field private capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

.field model:Lcom/nvidia/tegrazone/model/NVModel;

.field public relatedItemsArray:Lorg/json/JSONArray;

.field private relatedItemsBuilder:Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;

.field tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->relatedItemsArray:Lorg/json/JSONArray;

    .line 37
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    .line 25
    return-void
.end method


# virtual methods
.method public buyApp(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchMarket(Landroid/app/Activity;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public initMasthead()V
    .locals 2

    .prologue
    .line 87
    const v1, 0x7f0a008e

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/RelatedItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, masthead:Landroid/view/View;
    new-instance v1, Lcom/nvidia/tegrazone/RelatedItemsActivity$1;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/RelatedItemsActivity$1;-><init>(Lcom/nvidia/tegrazone/RelatedItemsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 46
    new-instance v0, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->relatedItemsBuilder:Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;

    .line 47
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/RelatedItemsActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/RelatedItemsActivity;->initMasthead()V

    .line 52
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->orientationSetter(Landroid/app/Activity;)V

    .line 56
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 58
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "UA-1273456-49"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Related Items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 65
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    iget-object v2, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0, p0, v1, v2}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->buildTopCapsule(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    .line 69
    invoke-static {p0}, Lcom/nvidia/tegrazone/builders/TabButtonBuilder;->buildTabs(Landroid/app/Activity;)V

    .line 71
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->relatedItemsBuilder:Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->relatedItemsBuilder:Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->relatedItemsBuilder:Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getRelatedItems()[Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;->buildRelatedItems([Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;)V

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/RelatedItemsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 104
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 182
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    .line 184
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 113
    :pswitch_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/RelatedItemsActivity;->shareThis()V

    move v0, v1

    .line 114
    goto :goto_0

    .line 116
    :pswitch_1
    new-instance v0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->showAboutWindow()V

    move v0, v1

    .line 117
    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x7f0a00cc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 164
    const-string v0, "onPausing"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 167
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 149
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->lastDataLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 157
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchGamesList(Landroid/app/Activity;)V

    .line 159
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 141
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 172
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 173
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 175
    const-string v0, "onStopping"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public shareThis()V
    .locals 4

    .prologue
    .line 125
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/RelatedItemsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/RelatedItemsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/RelatedItemsActivity;->getResources()Landroid/content/res/Resources;

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

    iget-object v2, p0, Lcom/nvidia/tegrazone/RelatedItemsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {p0, v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public showAboutMenu()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->showAboutWindow()V

    .line 98
    return-void
.end method
