.class public abstract Lcom/nvidia/tegrazone/AppDetailsActivity;
.super Landroid/app/Activity;
.source "AppDetailsActivity.java"


# instance fields
.field protected appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppDetailsBuilder()Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppDetailsActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-direct {v0, p0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nvidia/tegrazone/AppDetailsActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppDetailsActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 19
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

    if-eqz v0, :cond_3

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppDetailsActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->isCommentsPageShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nvidia/tegrazone/AppDetailsActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->isReviewsPageShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppDetailsActivity;->appDetailsBuilder:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->showGameDetailsArea()V

    .line 30
    :goto_0
    return-void

    .line 23
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 26
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method
