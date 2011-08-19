.class Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;
.super Ljava/lang/Object;
.source "UploadQueueActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/navigate/UploadQueueActivity;->itemClickFunction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

.field private final synthetic val$itm:Lnet/yostore/aws/sqlite/entity/UploadItem;

.field private final synthetic val$position:I

.field private final synthetic val$updateStatus:I


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/navigate/UploadQueueActivity;Lnet/yostore/aws/sqlite/entity/UploadItem;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    iput-object p2, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->val$itm:Lnet/yostore/aws/sqlite/entity/UploadItem;

    iput p3, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->val$position:I

    iput p4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->val$updateStatus:I

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 137
    packed-switch p2, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$7(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->val$itm:Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-wide v1, v1, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    invoke-static {v0, v1, v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->removeUploadItem(Landroid/content/Context;J)V

    .line 140
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    iget v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->notifyDataSetChanged()V

    .line 142
    sget-object v0, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->val$itm:Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-wide v0, v0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    sget-object v2, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-wide v2, v2, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 145
    :try_start_0
    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/AWSServiceInterface;->restartUpload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$7(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->val$itm:Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-wide v1, v1, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    iget v3, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->val$updateStatus:I

    invoke-static {v0, v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->updateItemStatus(Landroid/content/Context;JI)V

    .line 155
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    iget v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget v1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->val$updateStatus:I

    iput v1, v0, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    .line 156
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->notifyDataSetChanged()V

    .line 159
    :try_start_1
    sget-object v0, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->val$itm:Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-wide v0, v0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    sget-object v2, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-wide v2, v2, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$3;->val$updateStatus:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 160
    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/AWSServiceInterface;->restartUpload()V

    goto/16 :goto_0

    .line 165
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 162
    :cond_1
    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    invoke-interface {v0}, Lnet/yostore/aws/service/AWSServiceInterface;->startUpload()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
