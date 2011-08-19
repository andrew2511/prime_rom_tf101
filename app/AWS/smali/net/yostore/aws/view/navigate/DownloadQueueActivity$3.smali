.class Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;
.super Ljava/lang/Object;
.source "DownloadQueueActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->itemClickFunction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

.field private final synthetic val$itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;

.field private final synthetic val$position:I

.field private final synthetic val$updateStatus:I


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;Lnet/yostore/aws/sqlite/entity/DownloadItem;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    iput-object p2, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->val$itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iput p3, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->val$position:I

    iput p4, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->val$updateStatus:I

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->val$itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v1, v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->val$itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-object v3, v3, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".awsdltmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, removeFile:Ljava/io/File;
    packed-switch p2, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$7(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->val$itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v2, v2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->removeDownloadItem(Landroid/content/Context;J)V

    .line 137
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    iget v2, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->notifyDataSetChanged()V

    .line 139
    sget-object v1, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->val$itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v1, v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    sget-object v3, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v3, v3, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 142
    :try_start_0
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/DownloadServiceInterface;->restartDownload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$7(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->val$itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v2, v2, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    iget v4, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->val$updateStatus:I

    invoke-static {v1, v2, v3, v4}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->updateItemStatus(Landroid/content/Context;JI)V

    .line 155
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    iget v2, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget v2, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->val$updateStatus:I

    iput v2, v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->status:I

    .line 156
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->notifyDataSetChanged()V

    .line 159
    :try_start_1
    sget-object v1, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->val$itm:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v1, v1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    sget-object v3, Lnet/yostore/aws/service/DownloadService;->nowDownloadItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v3, v3, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$3;->val$updateStatus:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 160
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/DownloadServiceInterface;->restartDownload()V

    goto/16 :goto_0

    .line 165
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 162
    :cond_2
    sget-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    invoke-interface {v1}, Lnet/yostore/aws/service/DownloadServiceInterface;->startDownload()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 144
    :catch_1
    move-exception v1

    goto :goto_1

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
