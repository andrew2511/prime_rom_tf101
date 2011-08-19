.class public Lcom/layar/OurActivity;
.super Landroid/app/Activity;
.source "OurActivity.java"

# interfaces
.implements Lcom/layar/ActivityHelper$LayarActivityEvents;
.implements Lcom/layar/OurInterface;


# instance fields
.field protected helper:Lcom/layar/ActivityHelper;

.field protected isActive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    new-instance v0, Lcom/layar/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/layar/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/layar/OurActivity;->helper:Lcom/layar/ActivityHelper;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/OurActivity;->isActive:Z

    .line 8
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 45
    iget-object v0, p0, Lcom/layar/OurActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/layar/ActivityHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public onCancelLogin()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/layar/OurActivity;->useNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/layar/OurActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0}, Lcom/layar/ActivityHelper;->onInit()V

    .line 19
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 50
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/layar/OurActivity;->helper:Lcom/layar/ActivityHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/ActivityHelper;->search(Z)V

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoggedIn()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/OurActivity;->isActive:Z

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/OurActivity;->isActive:Z

    .line 34
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/layar/OurActivity;->useNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/layar/OurActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0, p1}, Lcom/layar/ActivityHelper;->setContentView(I)V

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0
.end method

.method public useNavigationBar()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
