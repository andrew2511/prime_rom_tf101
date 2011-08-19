.class Lnet/yostore/aws/view/search/ResultActivity$6;
.super Ljava/lang/Object;
.source "ResultActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/ResultActivity;->showInfectedFileContextMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/search/ResultActivity;

.field private final synthetic val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/search/ResultActivity;Lnet/yostore/aws/handler/entity/FsInfo;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/search/ResultActivity$6;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    iput-object p2, p0, Lnet/yostore/aws/view/search/ResultActivity$6;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iput p3, p0, Lnet/yostore/aws/view/search/ResultActivity$6;->val$position:I

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 400
    packed-switch p2, :pswitch_data_0

    .line 416
    :goto_0
    return-void

    .line 402
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 403
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "fi.display"

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$6;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v1, "fi.id"

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$6;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 405
    const-string v1, "fi.si"

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$6;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-wide v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 406
    const-string v1, "fi.fileUploadTime"

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$6;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-wide v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 408
    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    const-class v2, Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 409
    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity$6;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-virtual {v1, v0}, Lnet/yostore/aws/view/search/ResultActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 413
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Lnet/yostore/aws/ansytask/FileRemoveTask;

    sget-object v2, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/view/search/ResultActivity$6;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/ResultActivity;->access$6(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/search/ResultActivity$6;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/search/ResultActivity;->access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v4

    iget v5, p0, Lnet/yostore/aws/view/search/ResultActivity$6;->val$position:I

    invoke-direct {v1, v2, v3, v4, v5}, Lnet/yostore/aws/ansytask/FileRemoveTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
