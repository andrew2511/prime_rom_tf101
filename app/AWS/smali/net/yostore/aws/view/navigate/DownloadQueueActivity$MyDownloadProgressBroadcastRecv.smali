.class Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "DownloadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/DownloadQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDownloadProgressBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;-><init>(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, -0x1

    .line 280
    const-string v5, "dlid"

    const-wide/16 v6, -0x3e7

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 281
    .local v3, upid:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 283
    const-string v5, "percent"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 285
    .local v2, percent:I
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 286
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)I

    move-result v5

    if-ltz v5, :cond_0

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)I

    move-result v5

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v6

    iget-object v6, v6, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v5, v5, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_5

    .line 287
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 305
    .end local v1           #i:I
    :cond_1
    :goto_1
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->notifyDataSetChanged()V

    .line 308
    .end local v2           #percent:I
    :cond_2
    return-void

    .line 288
    .restart local v1       #i:I
    .restart local v2       #percent:I
    :cond_3
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget-wide v5, v5, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_4

    .line 289
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5, v1}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$5(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;I)V

    goto :goto_1

    .line 287
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v1           #i:I
    :cond_5
    const/16 v5, 0x64

    if-ne v2, v5, :cond_6

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)I

    move-result v5

    if-ltz v5, :cond_6

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)I

    move-result v5

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v6

    iget-object v6, v6, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 294
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 295
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5, v8}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$5(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;I)V

    goto :goto_1

    .line 296
    :cond_6
    const/16 v5, -0x3e7

    if-ne v2, v5, :cond_7

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)I

    move-result v5

    if-ltz v5, :cond_7

    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)I

    move-result v5

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v6

    iget-object v6, v6, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 297
    invoke-static {p1, v3, v4}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->getDownloadQueueItemByFileId(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/DownloadItem;

    move-result-object v0

    .line 298
    .local v0, dlItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    if-eqz v0, :cond_1

    .line 299
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iget v6, v0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->status:I

    iput v6, v5, Lnet/yostore/aws/sqlite/entity/DownloadItem;->status:I

    .line 300
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5, v8}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$5(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;I)V

    goto/16 :goto_1

    .line 302
    .end local v0           #dlItem:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    :cond_7
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)I

    move-result v5

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v6

    iget-object v6, v6, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 303
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v5}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$3(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/view/navigate/DownloadQueueAdapter;->list:Ljava/util/List;

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/DownloadQueueActivity$MyDownloadProgressBroadcastRecv;->this$0:Lnet/yostore/aws/view/navigate/DownloadQueueActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/navigate/DownloadQueueActivity;->access$4(Lnet/yostore/aws/view/navigate/DownloadQueueActivity;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    iput v2, v5, Lnet/yostore/aws/sqlite/entity/DownloadItem;->percent:I

    goto/16 :goto_1
.end method
