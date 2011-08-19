.class Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$2;
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
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$2;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 458
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$2;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$2;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$2;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$2;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$2(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Landroid/app/ProgressDialog;)V

    .line 459
    return-void
.end method
