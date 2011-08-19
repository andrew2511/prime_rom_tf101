.class Lcom/newspaperdirect/pressreader/android/core/DownloadService$3;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DownloadService;->startItemDownloading(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

.field private final synthetic val$force:Z

.field private final synthetic val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DownloadService;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$3;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    iput-boolean p3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$3;->val$force:Z

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 140
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$3;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    iget-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$3;->val$force:Z

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->download(Z)V

    .line 141
    return-void
.end method
