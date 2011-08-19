.class Lcom/newspaperdirect/pressreader/android/core/DownloadService$1;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DownloadService;->startDownloading(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

.field private final synthetic val$force:Z

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DownloadService;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    iput p2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$1;->val$id:I

    iput-boolean p3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$1;->val$force:Z

    .line 83
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 86
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$1;->val$id:I

    if-gez v1, :cond_2

    .line 87
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    :goto_1
    return-void

    .line 87
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 88
    .local v0, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    iget-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$1;->val$force:Z

    invoke-static {v2, v0, v3}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->access$3(Lcom/newspaperdirect/pressreader/android/core/DownloadService;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V

    goto :goto_0

    .line 91
    .end local v0           #item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    :cond_2
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$1;->val$id:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->findItemById(J)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v2

    iget-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$1;->val$force:Z

    invoke-static {v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->access$3(Lcom/newspaperdirect/pressreader/android/core/DownloadService;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V

    goto :goto_1
.end method
