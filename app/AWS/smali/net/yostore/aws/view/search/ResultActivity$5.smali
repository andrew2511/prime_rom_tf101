.class Lnet/yostore/aws/view/search/ResultActivity$5;
.super Ljava/lang/Object;
.source "ResultActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/search/ResultActivity;->showFileContextMenu(I)V
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
    iput-object p1, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    iput-object p2, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iput p3, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$position:I

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v11, 0x0

    .line 351
    packed-switch p2, :pswitch_data_0

    .line 382
    :goto_0
    return-void

    .line 354
    :pswitch_0
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 355
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "fi.display"

    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v0, "fi.id"

    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 357
    const-string v0, "fi.si"

    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-wide v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 358
    const-string v0, "fi.fileUploadTime"

    iget-object v1, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-wide v1, v1, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 360
    sget-object v0, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    const-class v1, Lnet/yostore/aws/view/capture/FolderActivity;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 361
    iget-object v0, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-virtual {v0, v10}, Lnet/yostore/aws/view/search/ResultActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 366
    .end local v10           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/ResultActivity;->access$6(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v5, v5, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    iget-object v6, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-wide v6, v6, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    iget-object v8, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-wide v8, v8, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct/range {v0 .. v9}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;JLjava/lang/String;JJ)V

    invoke-virtual {v0, v11}, Lnet/yostore/aws/ansytask/DownloadAndOpenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 370
    :pswitch_2
    new-instance v0, Lnet/yostore/aws/ansytask/MarkTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/ResultActivity;->access$6(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/ResultActivity;->access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v3

    iget v4, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$position:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/ansytask/MarkTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V

    goto/16 :goto_0

    .line 373
    :pswitch_3
    new-instance v0, Lnet/yostore/aws/ansytask/GetShareCodeTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/ResultActivity;->access$6(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-virtual {v3}, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v4, v4, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/ansytask/GetShareCodeTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lnet/yostore/aws/ansytask/GetShareCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 376
    :pswitch_4
    new-instance v0, Lnet/yostore/aws/ansytask/FileRenameTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/ResultActivity;->access$6(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/ResultActivity;->access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v3

    iget v4, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$position:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/ansytask/FileRenameTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V

    goto/16 :goto_0

    .line 379
    :pswitch_5
    new-instance v0, Lnet/yostore/aws/ansytask/FileRemoveTask;

    sget-object v1, Lnet/yostore/aws/view/search/ResultActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/search/ResultActivity;->access$6(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->this$0:Lnet/yostore/aws/view/search/ResultActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/search/ResultActivity;->access$2(Lnet/yostore/aws/view/search/ResultActivity;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v3

    iget v4, p0, Lnet/yostore/aws/view/search/ResultActivity$5;->val$position:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/yostore/aws/ansytask/FileRemoveTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/view/navigate/BrowseAdapter;I)V

    goto/16 :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
