.class Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "UploadQueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/UploadQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field percent:Landroid/widget/TextView;

.field progressBar:Landroid/widget/ProgressBar;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lnet/yostore/aws/view/navigate/UploadQueueAdapter;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/UploadQueueAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter$ViewHolder;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
