.class public Lcom/nvidia/tegrazone/ReviewsActivity;
.super Landroid/app/Activity;
.source "ReviewsActivity.java"


# instance fields
.field private capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

.field model:Lcom/nvidia/tegrazone/model/NVModel;

.field private reviewsBuilder:Lcom/nvidia/tegrazone/builders/ReviewsBuilder;

.field tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    .line 23
    return-void
.end method


# virtual methods
.method public initMasthead()V
    .locals 2

    .prologue
    .line 78
    const v1, 0x7f0a008e

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/ReviewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, masthead:Landroid/view/View;
    new-instance v1, Lcom/nvidia/tegrazone/ReviewsActivity$1;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/ReviewsActivity$1;-><init>(Lcom/nvidia/tegrazone/ReviewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/ReviewsActivity;->setContentView(I)V

    .line 42
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 44
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ReviewsActivity;->initMasthead()V

    .line 47
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 49
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "UA-1273456-49"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 51
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Official Reviews"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 60
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->orientationSetter(Landroid/app/Activity;)V

    .line 62
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->capsuleBuilder:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    iget-object v2, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0, p0, v1, v2}, Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->buildTopCapsule(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    .line 66
    invoke-static {p0}, Lcom/nvidia/tegrazone/builders/TabButtonBuilder;->buildTabs(Landroid/app/Activity;)V

    .line 68
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->reviewsBuilder:Lcom/nvidia/tegrazone/builders/ReviewsBuilder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->reviewsBuilder:Lcom/nvidia/tegrazone/builders/ReviewsBuilder;

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->reviewsBuilder:Lcom/nvidia/tegrazone/builders/ReviewsBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->loadReviewsData()V

    .line 71
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->reviewsBuilder:Lcom/nvidia/tegrazone/builders/ReviewsBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/ReviewsBuilder;->buildReviews()V

    .line 73
    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/nogameset/Official Reviews"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ReviewsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 95
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 96
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 173
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    .line 175
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 104
    :pswitch_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ReviewsActivity;->shareThis()V

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :pswitch_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ReviewsActivity;->showAboutMenu()V

    move v0, v1

    .line 108
    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00cc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 155
    const-string v0, "onPausing"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 158
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 140
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->lastDataLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 148
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchGamesList(Landroid/app/Activity;)V

    .line 150
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 132
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 163
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 164
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 166
    const-string v0, "onStopping"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public shareThis()V
    .locals 4

    .prologue
    .line 116
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ReviewsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ReviewsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nvidia/tegrazone/ReviewsActivity;->getResources()Landroid/content/res/Resources;

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

    iget-object v2, p0, Lcom/nvidia/tegrazone/ReviewsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {p0, v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchShare(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public showAboutMenu()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->showAboutWindow()V

    .line 89
    return-void
.end method
