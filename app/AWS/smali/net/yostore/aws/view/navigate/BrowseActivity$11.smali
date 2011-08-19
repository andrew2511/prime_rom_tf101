.class Lnet/yostore/aws/view/navigate/BrowseActivity$11;
.super Ljava/lang/Object;
.source "BrowseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/BrowseActivity;->showInfectedFileContextMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

.field private final synthetic val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/BrowseActivity;Lnet/yostore/aws/handler/entity/FsInfo;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$11;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    iput-object p2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$11;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iput p3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$11;->val$position:I

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 678
    packed-switch p2, :pswitch_data_0

    .line 700
    :goto_0
    return-void

    .line 686
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 687
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "fi.display"

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$11;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string v1, "fi.id"

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$11;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 689
    const-string v1, "fi.si"

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$11;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-wide v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 690
    const-string v1, "fi.fileUploadTime"

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$11;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-wide v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 692
    sget-object v1, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    const-class v2, Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 693
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$11;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-virtual {v1, v0}, Lnet/yostore/aws/view/navigate/BrowseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 697
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Lnet/yostore/aws/ansytask/FileRemoveTask;

    sget-object v2, Lnet/yostore/aws/view/navigate/BrowseActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$11;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$1(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$11;->this$0:Lnet/yostore/aws/view/navigate/BrowseActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/BrowseActivity;->access$2(Lnet/yostore/aws/view/navigate/BrowseActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v4

    iget v5, p0, Lnet/yostore/aws/view/navigate/BrowseActivity$11;->val$position:I

    invoke-direct {v1, v2, v3, v4, v5}, Lnet/yostore/aws/ansytask/FileRemoveTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V

    goto :goto_0

    .line 678
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
