.class Lcom/newspaperdirect/pressreader/android/core/DownloadTask$1;
.super Ljava/util/TimerTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->retry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DownloadTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    .line 163
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    .line 167
    return-void
.end method
