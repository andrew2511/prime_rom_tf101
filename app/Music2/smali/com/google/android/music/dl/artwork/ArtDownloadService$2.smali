.class Lcom/google/android/music/dl/artwork/ArtDownloadService$2;
.super Ljava/lang/Object;
.source "ArtDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadService;->startAsyncDownloads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$2;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$2;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-virtual {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->onDownloadQueueCompleted()V

    .line 188
    return-void
.end method
