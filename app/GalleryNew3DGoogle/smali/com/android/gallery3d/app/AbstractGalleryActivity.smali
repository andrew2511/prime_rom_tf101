.class public Lcom/android/gallery3d/app/AbstractGalleryActivity;
.super Landroid/app/Activity;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryActivity;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

.field private mMountFilter:Landroid/content/IntentFilter;

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field private mPositionRepository:Lcom/android/gallery3d/ui/PositionRepository;

.field private mStateManager:Lcom/android/gallery3d/app/StateManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Lcom/android/gallery3d/ui/PositionRepository;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/PositionRepository;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mPositionRepository:Lcom/android/gallery3d/ui/PositionRepository;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 47
    new-instance v0, Lcom/android/gallery3d/app/AbstractGalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$1;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public getActionBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    const v0, 0x10202ad

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 67
    return-object p0
.end method

.method public getDataManager()Lcom/android/gallery3d/data/DataManager;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {p0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method public getGLRoot()Lcom/android/gallery3d/ui/GLRoot;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method public declared-synchronized getStateManager()Lcom/android/gallery3d/app/StateManager;
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/gallery3d/app/StateManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/StateManager;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThreadPool()Lcom/android/gallery3d/util/ThreadPool;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {p0}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/app/StateManager;->notifyActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 191
    return-void

    .line 189
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 172
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->pause()V

    .line 176
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->resume()V

    .line 162
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->onResume()V

    .line 167
    return-void

    .line 164
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 59
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->saveState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 64
    return-void

    .line 62
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 122
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    .line 123
    new-instance v0, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 129
    .local v0, onCancel:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Lcom/android/gallery3d/app/AbstractGalleryActivity$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$3;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 135
    .local v1, onClick:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No Storage"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No external storage available."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 142
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    .end local v0           #onCancel:Landroid/content/DialogInterface$OnCancelListener;
    .end local v1           #onClick:Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 154
    :cond_0
    return-void
.end method

.method protected onStorageReady()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 104
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    .line 105
    return-void
.end method
