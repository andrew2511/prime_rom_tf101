.class Lcom/google/android/music/dl/artwork/ArtDownloadService$1;
.super Ljava/lang/Thread;
.source "ArtDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadService;->clearOrphanedFilesAsync()V
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
    .line 157
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$1;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$1;->setPriority(I)V

    .line 161
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$1;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-static {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->access$000(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V

    .line 162
    return-void
.end method
