.class Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$1;
.super Ljava/lang/Object;
.source "OffLinePlayListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$1;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$1;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$0(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 83
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$1;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$1;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$1(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    return-void
.end method
