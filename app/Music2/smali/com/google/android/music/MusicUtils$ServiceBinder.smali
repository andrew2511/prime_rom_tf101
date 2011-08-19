.class Lcom/google/android/music/MusicUtils$ServiceBinder;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 232
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 235
    move-object v0, p2

    check-cast v0, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    move-object v1, v0

    sput-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    .line 236
    iget-object v1, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v1, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/music/MusicUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 245
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    .line 246
    return-void
.end method
