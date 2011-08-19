.class Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "UploadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/UploadQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUploadProgressBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/navigate/UploadQueueActivity;Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;-><init>(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 304
    const-string v4, "upid"

    const-wide/16 v5, -0x3e7

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 305
    .local v2, upid:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 307
    const-string v4, "percent"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 309
    .local v1, percent:I
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v4

    iget-object v4, v4, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 310
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)I

    move-result v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)I

    move-result v4

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v4

    iget-object v4, v4, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-wide v4, v4, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_5

    .line 311
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v4

    iget-object v4, v4, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 325
    .end local v0           #i:I
    :cond_1
    :goto_1
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->notifyDataSetChanged()V

    .line 328
    .end local v1           #percent:I
    :cond_2
    return-void

    .line 312
    .restart local v0       #i:I
    .restart local v1       #percent:I
    :cond_3
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v4

    iget-object v4, v4, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/sqlite/entity/UploadItem;

    iget-wide v4, v4, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_4

    .line 313
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4, v0}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$5(Lnet/yostore/aws/view/navigate/UploadQueueActivity;I)V

    goto :goto_1

    .line 311
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v0           #i:I
    :cond_5
    const/16 v4, 0x64

    if-ne v1, v4, :cond_6

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)I

    move-result v4

    if-ltz v4, :cond_6

    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)I

    move-result v4

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 320
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v4

    iget-object v4, v4, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/sqlite/entity/UploadItem;

    iput v7, v4, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    .line 321
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v4

    iget-object v4, v4, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/sqlite/entity/UploadItem;

    const/4 v5, -0x1

    iput v5, v4, Lnet/yostore/aws/sqlite/entity/UploadItem;->percent:I

    goto :goto_1

    .line 322
    :cond_6
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)I

    move-result v4

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 323
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)Lnet/yostore/aws/view/navigate/UploadQueueAdapter;

    move-result-object v4

    iget-object v4, v4, Lnet/yostore/aws/view/navigate/UploadQueueAdapter;->list:Ljava/util/List;

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/UploadQueueActivity$MyUploadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/UploadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/UploadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/UploadQueueActivity;)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/sqlite/entity/UploadItem;

    iput v1, v4, Lnet/yostore/aws/sqlite/entity/UploadItem;->percent:I

    goto/16 :goto_1
.end method
