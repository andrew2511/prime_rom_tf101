.class Lnet/yostore/aws/ansytask/DownloadAndOpenTask$DownloaderException;
.super Ljava/lang/Exception;
.source "DownloadAndOpenTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/ansytask/DownloadAndOpenTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloaderException"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/ansytask/DownloadAndOpenTask;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/ansytask/DownloadAndOpenTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "reason"

    .prologue
    .line 320
    iput-object p1, p0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask$DownloaderException;->this$0:Lnet/yostore/aws/ansytask/DownloadAndOpenTask;

    .line 318
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-static {p1}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->access$3(Lnet/yostore/aws/ansytask/DownloadAndOpenTask;)V

    return-void
.end method
