.class Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$2;
.super Ljava/util/TimerTask;
.source "DownloadServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->startDownloading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    .line 121
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->startDownloading()V

    .line 125
    return-void
.end method
