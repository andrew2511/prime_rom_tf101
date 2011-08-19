.class Lcom/google/android/music/sync/google/MusicSyncAdapter$1;
.super Ljava/lang/Object;
.source "MusicSyncAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/sync/google/MusicSyncAdapter;->onSyncEnd(Landroid/accounts/Account;Landroid/content/Context;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/sync/google/MusicSyncAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$requestSync:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/sync/google/MusicSyncAdapter;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$1;->this$0:Lcom/google/android/music/sync/google/MusicSyncAdapter;

    iput-object p2, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$1;->val$requestSync:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$1;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/google/android/music/sync/google/MusicSyncAdapter$1;->val$requestSync:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->deleteRemoteMusicAndPlaylists(Landroid/content/Context;Z)Z

    .line 307
    return-void
.end method
