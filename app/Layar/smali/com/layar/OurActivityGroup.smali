.class public Lcom/layar/OurActivityGroup;
.super Landroid/app/ActivityGroup;
.source "OurActivityGroup.java"

# interfaces
.implements Lcom/layar/ActivityHelper$LayarActivityEvents;
.implements Lcom/layar/OurInterface;


# instance fields
.field protected helper:Lcom/layar/ActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 11
    new-instance v0, Lcom/layar/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/layar/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/layar/OurActivityGroup;->helper:Lcom/layar/ActivityHelper;

    .line 7
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/app/ActivityGroup;->onActivityResult(IILandroid/content/Intent;)V

    .line 31
    iget-object v0, p0, Lcom/layar/OurActivityGroup;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/layar/ActivityHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public onCancelLogin()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/layar/OurActivityGroup;->useNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/layar/OurActivityGroup;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0}, Lcom/layar/ActivityHelper;->onInit()V

    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method public onLoggedIn()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/layar/OurActivityGroup;->useNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/layar/OurActivityGroup;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/layar/ActivityHelper;->setContentView(I)V

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->setContentView(I)V

    goto :goto_0
.end method

.method public useNavigationBar()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method
