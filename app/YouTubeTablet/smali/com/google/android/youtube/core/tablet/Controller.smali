.class public abstract Lcom/google/android/youtube/core/tablet/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# instance fields
.field protected final activity:Landroid/app/Activity;

.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field protected final application:Landroid/app/Application;

.field private final arguments:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>(Landroid/app/Application;Lcom/google/android/youtube/core/Analytics;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "application"
    .parameter "analytics"
    .parameter "activity"
    .parameter "arguments"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/youtube/core/tablet/Controller;->application:Landroid/app/Application;

    .line 43
    iput-object p2, p0, Lcom/google/android/youtube/core/tablet/Controller;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 44
    iput-object p3, p0, Lcom/google/android/youtube/core/tablet/Controller;->activity:Landroid/app/Activity;

    .line 45
    iput-object p4, p0, Lcom/google/android/youtube/core/tablet/Controller;->arguments:Landroid/os/Bundle;

    .line 46
    return-void
.end method


# virtual methods
.method protected getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/Controller;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected final getArguments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/Controller;->arguments:Landroid/os/Bundle;

    return-object v0
.end method

.method protected abstract getContentViewId()I
.end method

.method protected final getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/Controller;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "resId"
    .parameter "formatArgs"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/Controller;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method protected onBackPressed()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 61
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 114
    if-nez p2, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/tablet/Controller;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method protected onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method protected onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 107
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 125
    return-void
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 104
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "inState"

    .prologue
    .line 74
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 81
    return-void
.end method

.method protected onSearchRequested()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/tablet/Controller;->analytics:Lcom/google/android/youtube/core/Analytics;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackPage(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
