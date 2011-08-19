.class Lcom/google/android/music/DownloadQueueActivity$2;
.super Landroid/database/ContentObserver;
.source "DownloadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/DownloadQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/DownloadQueueActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/DownloadQueueActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/music/DownloadQueueActivity$2;->this$0:Lcom/google/android/music/DownloadQueueActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/google/android/music/DownloadQueueActivity$2;->this$0:Lcom/google/android/music/DownloadQueueActivity;

    invoke-virtual {v0}, Lcom/google/android/music/DownloadQueueActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/music/DownloadQueueActivity;->access$100()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 99
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/google/android/music/DownloadQueueActivity$2;->this$0:Lcom/google/android/music/DownloadQueueActivity;

    new-instance v1, Lcom/google/android/music/DownloadQueueActivity$2$1;

    invoke-direct {v1, p0, v6}, Lcom/google/android/music/DownloadQueueActivity$2$1;-><init>(Lcom/google/android/music/DownloadQueueActivity$2;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/DownloadQueueActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method
