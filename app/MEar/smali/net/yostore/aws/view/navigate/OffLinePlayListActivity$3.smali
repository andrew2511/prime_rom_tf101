.class Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$3;
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
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$3;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$3;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$3;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$3(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 465
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$3;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$0(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 466
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$3;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 467
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 468
    const v1, 0x7f0600af

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 469
    const v1, 0x7f060005

    new-instance v2, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$3$1;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$3$1;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 476
    return-void
.end method
