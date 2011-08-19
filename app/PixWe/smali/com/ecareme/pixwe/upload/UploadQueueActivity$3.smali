.class Lcom/ecareme/pixwe/upload/UploadQueueActivity$3;
.super Ljava/lang/Object;
.source "UploadQueueActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/upload/UploadQueueActivity;->showItemContextMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/upload/UploadQueueActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$3;->this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;

    iput p2, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$3;->val$position:I

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 119
    packed-switch p2, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$3;->this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->access$1(Lcom/ecareme/pixwe/upload/UploadQueueActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$3;->this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;

    iget-object v0, v0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->userUploadQueue:Ljava/util/List;

    iget v2, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$3;->val$position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->removeUploadQueue(Landroid/content/Context;J)V

    .line 122
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$3;->this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->access$1(Lcom/ecareme/pixwe/upload/UploadQueueActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$3;->this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;

    iget-object v0, v0, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->userUploadQueue:Ljava/util/List;

    iget v2, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$3;->val$position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->getMediaRowId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->delMedia(Landroid/content/Context;J)I

    .line 124
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$3;->this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->access$0(Lcom/ecareme/pixwe/upload/UploadQueueActivity;)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
