.class Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;
.super Ljava/lang/Object;
.source "OffLinePlayListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->showFolderContextMenu(I)V
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
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;)Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;
    .locals 1
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    .line 313
    packed-switch p2, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 315
    :pswitch_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;->this$0:Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;->access$2(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity;Landroid/app/ProgressDialog;)V

    .line 316
    new-instance v0, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6$1;-><init>(Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6;)V

    .line 320
    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListActivity$6$1;->start()V

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
