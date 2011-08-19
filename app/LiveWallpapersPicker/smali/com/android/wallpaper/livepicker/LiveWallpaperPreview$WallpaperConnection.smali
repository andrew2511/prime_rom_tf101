.class Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "LiveWallpaperPreview.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mConnected:Z

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mIntent:Landroid/content/Intent;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field final synthetic this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;


# direct methods
.method constructor <init>(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 231
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    iget-boolean v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 286
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p1, v0}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    return-void

    .line 294
    :cond_0
    :try_start_3
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 289
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public connect()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 234
    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    monitor-exit p0

    .line 240
    :goto_0
    return v0

    .line 239
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mConnected:Z

    .line 240
    monitor-exit p0

    move v0, v3

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    .line 246
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mConnected:Z

    .line 247
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 249
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    invoke-virtual {v0, p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->unbindService(Landroid/content/ServiceConnection;)V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 257
    monitor-exit p0

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 250
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .parameter "name"
    .parameter "service"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    invoke-static {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->access$000(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 262
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    invoke-static {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)Landroid/view/View;

    move-result-object v9

    .line 265
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 266
    .local v8, root:Landroid/view/View;
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v8           #root:Landroid/view/View;
    .end local v9           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 270
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "LiveWallpaperPreview"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 277
    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 278
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;

    invoke-static {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;->access$000(Lcom/android/wallpaper/livepicker/LiveWallpaperPreview;)Lcom/android/wallpaper/livepicker/LiveWallpaperPreview$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 279
    const-string v0, "LiveWallpaperPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper service gone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "name"

    .prologue
    .line 303
    const/4 v0, 0x0

    return-object v0
.end method
