.class Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DownloadQueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field percent:Landroid/widget/TextView;

.field progressBar:Landroid/widget/ProgressBar;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter$ViewHolder;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
