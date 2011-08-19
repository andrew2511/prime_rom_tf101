.class Lnet/yostore/aws/service/DownloadService$DownloaderException;
.super Ljava/lang/Exception;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloaderException"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/DownloadService;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/service/DownloadService;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "reason"

    .prologue
    .line 454
    iput-object p1, p0, Lnet/yostore/aws/service/DownloadService$DownloaderException;->this$0:Lnet/yostore/aws/service/DownloadService;

    .line 452
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 453
    const/4 v0, 0x0

    sput-boolean v0, Lnet/yostore/aws/service/DownloadService;->isDownLoading:Z

    return-void
.end method
