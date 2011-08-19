.class public Lcom/android/gallery3d/app/DialogPicker;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "DialogPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 56
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->getTopState()Lcom/android/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 62
    return-void

    .line 60
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070004

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->finish()V

    .line 67
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/DialogPicker;->setContentView(I)V

    .line 37
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/DialogPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/GLRootView;->setZOrderOnTop(Z)V

    .line 38
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/DialogPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/gallery3d/util/Utils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    .line 41
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->getSelectionModePrompt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/DialogPicker;->setTitle(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 44
    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    :goto_0
    const-string v2, "get-content"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 50
    return-void

    .line 44
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v1, v2

    goto :goto_0
.end method
