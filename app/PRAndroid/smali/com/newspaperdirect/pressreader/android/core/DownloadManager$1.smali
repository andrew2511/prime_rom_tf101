.class Lcom/newspaperdirect/pressreader/android/core/DownloadManager$1;
.super Ljava/util/TimerTask;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->setUpTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadManager;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadManager;

    .line 127
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadManager$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadManager;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadManager;->access$0(Lcom/newspaperdirect/pressreader/android/core/DownloadManager;)V

    .line 131
    return-void
.end method
