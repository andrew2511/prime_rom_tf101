.class Lnet/yostore/aws/view/navigate/UploadQueueActivity$2;
.super Ljava/lang/Object;
.source "UploadQueueActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/UploadQueueActivity;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$2;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$2;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v0, p3}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$6(Lnet/yostore/aws/view/navigate/UploadQueueActivity;I)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method
