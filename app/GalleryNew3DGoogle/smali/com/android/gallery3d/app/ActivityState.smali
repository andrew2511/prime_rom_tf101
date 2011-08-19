.class public abstract Lcom/android/gallery3d/app/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    }
.end annotation


# instance fields
.field protected mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field protected mData:Landroid/os/Bundle;

.field protected mFlags:I

.field protected mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

.field protected mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    return-object v0
.end method

.method initialize(Lcom/android/gallery3d/app/GalleryActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "data"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 57
    iput-object p2, p0, Lcom/android/gallery3d/app/ActivityState;->mData:Landroid/os/Bundle;

    .line 58
    return-void
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"
    .parameter "storedState"

    .prologue
    .line 81
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 75
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 78
    return-void
.end method

.method resume()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 88
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    .line 89
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 90
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 91
    iget v5, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 92
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 96
    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v4

    .line 97
    .local v4, stateCount:I
    if-ne v4, v7, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v0, v5, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 102
    .end local v4           #stateCount:I
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 104
    iget v5, p0, Lcom/android/gallery3d/app/ActivityState;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 105
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 106
    .local v3, params:Landroid/view/WindowManager$LayoutParams;
    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 107
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 113
    :goto_2
    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 114
    .local v2, entry:Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    if-eqz v2, :cond_1

    .line 115
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mReceivedResults:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    .line 116
    iget v5, v2, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->requestCode:I

    iget v6, v2, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    iget-object v7, v2, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/gallery3d/app/ActivityState;->onStateResult(IILandroid/content/Intent;)V

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 119
    return-void

    .line 94
    .end local v2           #entry:Lcom/android/gallery3d/app/ActivityState$ResultEntry;
    .end local v3           #params:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .restart local v4       #stateCount:I
    :cond_3
    move v5, v8

    .line 97
    goto :goto_1

    .line 109
    .end local v4           #stateCount:I
    :cond_4
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 110
    .restart local v3       #params:Landroid/view/WindowManager$LayoutParams;
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 111
    iget-object v5, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_2
.end method

.method protected setContentPane(Lcom/android/gallery3d/ui/GLView;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 53
    return-void
.end method

.method protected setStateResult(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput p1, v0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/app/ActivityState;->mResult:Lcom/android/gallery3d/app/ActivityState$ResultEntry;

    iput-object p2, v0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    goto :goto_0
.end method
