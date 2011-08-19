.class Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$3;
.super Ljava/util/TimerTask;
.source "DownloadServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->startDownloading(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

.field private final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    iput-wide p2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$3;->val$id:J

    .line 138
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    iget-wide v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$3;->val$id:J

    invoke-virtual {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->startDownloading(J)V

    .line 142
    return-void
.end method
