.class Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5$1;
.super Ljava/lang/Object;
.source "OffLinePlayListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5$1;->this$1:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5$1;->this$1:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->access$1(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;)Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5$1;->this$1:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->access$1(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;)Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    move-result-object v1

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$3(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5$1;->this$1:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;->access$1(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$5;)Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$0(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 273
    return-void
.end method
