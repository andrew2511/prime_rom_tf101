.class Lnet/yostore/aws/view/search/SearchActivity$17;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/SearchActivity;->showFileContextMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/search/SearchActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchActivity$17;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    .line 456
    packed-switch p2, :pswitch_data_0

    .line 468
    :goto_0
    return-void

    .line 459
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 460
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$17;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$17;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$6(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/search/SearchActivity$17;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/SearchActivity$17;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Lnet/yostore/aws/view/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$20(Lnet/yostore/aws/view/search/SearchActivity;Landroid/app/ProgressDialog;)V

    .line 461
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$17;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/search/SearchActivity;->access$10(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchActivity$17;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/search/SearchActivity;->access$29(Lnet/yostore/aws/view/search/SearchActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 464
    :pswitch_1
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchActivity$17;->this$0:Lnet/yostore/aws/view/search/SearchActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/search/SearchActivity;->access$6(Lnet/yostore/aws/view/search/SearchActivity;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ecareme/mear/Mear;->shareMusicContent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
