.class public Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;
.super Landroid/app/Activity;
.source "LiveWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 58
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 59
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;->finish()V

    .line 61
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 45
    .local v1, fragmentView:Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 49
    invoke-static {}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->newInstance()Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;

    move-result-object v0

    .line 50
    .local v0, fragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 52
    .end local v0           #fragment:Landroid/app/DialogFragment;
    :cond_0
    return-void
.end method
