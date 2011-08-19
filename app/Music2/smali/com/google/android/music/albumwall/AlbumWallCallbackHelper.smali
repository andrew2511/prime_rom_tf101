.class Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;
.super Ljava/lang/Object;
.source "AlbumWallCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/albumwall/AlbumWallCallbackHelper$DelegateDispatchHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumWallCallbackHelper"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlbumWallCallbackHelper.handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 35
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 36
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper$DelegateDispatchHandler;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper$DelegateDispatchHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 50
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
.end method
