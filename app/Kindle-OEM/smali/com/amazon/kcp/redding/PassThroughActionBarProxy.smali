.class Lcom/amazon/kcp/redding/PassThroughActionBarProxy;
.super Ljava/lang/Object;
.source "ReddingActivity.java"

# interfaces
.implements Lcom/amazon/kcp/redding/IActionBarProxy;


# instance fields
.field private listener:Lcom/amazon/kcp/redding/ReddingActivity$OnActionBarVisibilityChangedListener;

.field private final proxiedActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/amazon/kcp/redding/PassThroughActionBarProxy;->proxiedActivity:Landroid/app/Activity;

    .line 255
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/amazon/kcp/redding/PassThroughActionBarProxy;->proxiedActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getVisibility()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/amazon/kcp/redding/PassThroughActionBarProxy;->proxiedActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/amazon/kcp/redding/PassThroughActionBarProxy;->proxiedActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/amazon/kcp/redding/PassThroughActionBarProxy;->proxiedActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 321
    :cond_0
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/amazon/kcp/redding/PassThroughActionBarProxy;->proxiedActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 291
    :cond_0
    return-void
.end method

.method public setOnActionBarVisibilityChangedListener(Lcom/amazon/kcp/redding/ReddingActivity$OnActionBarVisibilityChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/amazon/kcp/redding/PassThroughActionBarProxy;->listener:Lcom/amazon/kcp/redding/ReddingActivity$OnActionBarVisibilityChangedListener;

    .line 300
    return-void
.end method

.method public setVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/amazon/kcp/redding/PassThroughActionBarProxy;->proxiedActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 262
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 264
    if-eqz p1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/amazon/kcp/redding/PassThroughActionBarProxy;->proxiedActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/redding/PassThroughActionBarProxy;->listener:Lcom/amazon/kcp/redding/ReddingActivity$OnActionBarVisibilityChangedListener;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/amazon/kcp/redding/PassThroughActionBarProxy;->listener:Lcom/amazon/kcp/redding/ReddingActivity$OnActionBarVisibilityChangedListener;

    invoke-interface {v1, p1}, Lcom/amazon/kcp/redding/ReddingActivity$OnActionBarVisibilityChangedListener;->onActionBarVisibilityChanged(Z)V

    .line 278
    :cond_0
    return-void

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/redding/PassThroughActionBarProxy;->proxiedActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method
