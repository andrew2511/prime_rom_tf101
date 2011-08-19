.class Lnet/yostore/aws/view/navigate/DownloadQueueActivity$1;
.super Ljava/lang/Object;
.source "DownloadQueueActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$1;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$1;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v0, p3}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$6(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;I)V

    .line 97
    return-void
.end method
