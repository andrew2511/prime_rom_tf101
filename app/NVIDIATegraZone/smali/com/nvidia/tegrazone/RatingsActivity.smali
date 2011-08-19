.class public Lcom/nvidia/tegrazone/RatingsActivity;
.super Landroid/app/Activity;
.source "RatingsActivity.java"

# interfaces
.implements Lcom/nvidia/tegrazone/RateThisHandler;


# instance fields
.field public commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

.field private commentsBuilder:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

.field public feedbackSrv:Lcom/nvidia/tegrazone/services/ServiceManager;

.field model:Lcom/nvidia/tegrazone/model/NVModel;

.field public rateThisView:Landroid/view/View;

.field tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    .line 24
    return-void
.end method


# virtual methods
.method public initMasthead()V
    .locals 2

    .prologue
    .line 114
    const v1, 0x7f0a008e

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/RatingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, masthead:Landroid/view/View;
    new-instance v1, Lcom/nvidia/tegrazone/RatingsActivity$1;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/RatingsActivity$1;-><init>(Lcom/nvidia/tegrazone/RatingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/RatingsActivity;->setContentView(I)V

    .line 44
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 46
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/RatingsActivity;->initMasthead()V

    .line 49
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 51
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "UA-1273456-49"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;Landroid/content/Context;)V

    .line 53
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nvidia/tegrazone/RatingsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/RatingsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Comments and Ratings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 57
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->orientationSetter(Landroid/app/Activity;)V

    .line 59
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->commentsBuilder:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->commentsBuilder:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->commentsBuilder:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/RatingsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->init(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    .line 62
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getFeedback()Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/SmallFeedbackVO;->getCommentCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->commentsBuilder:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->getComments()V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    invoke-static {p0}, Lcom/nvidia/tegrazone/builders/TabButtonBuilder;->buildTabs(Landroid/app/Activity;)V

    .line 73
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/RatingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 84
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 85
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 179
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    .line 181
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->commentsBuilder:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->getComments()V

    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :pswitch_2
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/RatingsActivity;->showAboutMenu()V

    move v0, v1

    .line 97
    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00cb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 161
    const-string v0, "onPausing"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 164
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 106
    const v0, 0x7f0a00cc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->hideKeyboard(Landroid/app/Activity;)V

    .line 146
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/nvidia/tegrazone/RatingsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->lastDataLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->language:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/RatingsActivity;->model:Lcom/nvidia/tegrazone/model/NVModel;

    invoke-virtual {v0, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 154
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchGamesList(Landroid/app/Activity;)V

    .line 156
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 138
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 169
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 170
    invoke-static {}, Lcom/nvidia/tegrazone/control/LoadingController;->getInstance()Lcom/nvidia/tegrazone/control/LoadingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/control/LoadingController;->hideDialog()V

    .line 172
    const-string v0, "onStopping"

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public showAboutMenu()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->showAboutWindow()V

    .line 125
    return-void
.end method

.method public updateRating(Ljava/lang/String;)V
    .locals 0
    .parameter "rating"

    .prologue
    .line 78
    return-void
.end method
