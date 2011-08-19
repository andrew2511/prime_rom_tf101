.class Lnet/yostore/aws/service/PlayerService$preSongTask;
.super Landroid/os/AsyncTask;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "preSongTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/PlayerService;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/service/PlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/service/PlayerService;Lnet/yostore/aws/service/PlayerService$preSongTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lnet/yostore/aws/service/PlayerService$preSongTask;-><init>(Lnet/yostore/aws/service/PlayerService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x1

    .line 581
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$0(Lnet/yostore/aws/service/PlayerService;)V

    .line 582
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$17(Lnet/yostore/aws/service/PlayerService;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$22(Lnet/yostore/aws/service/PlayerService;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 584
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 585
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lnet/yostore/aws/service/PlayerService;->access$1(Lnet/yostore/aws/service/PlayerService;I)V

    .line 586
    new-instance v0, Ljava/lang/Long;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 598
    :goto_0
    return-object v0

    .line 587
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$22(Lnet/yostore/aws/service/PlayerService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 588
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lnet/yostore/aws/service/PlayerService;->access$1(Lnet/yostore/aws/service/PlayerService;I)V

    .line 589
    new-instance v0, Ljava/lang/Long;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_1
    new-instance v0, Ljava/lang/Long;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$22(Lnet/yostore/aws/service/PlayerService;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 594
    new-instance v0, Ljava/lang/Long;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$17(Lnet/yostore/aws/service/PlayerService;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 596
    new-instance v0, Ljava/lang/Long;

    const-string v1, "2"

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_4
    new-instance v0, Ljava/lang/Long;

    const-string v1, "-1"

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/service/PlayerService$preSongTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 605
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 606
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-virtual {v0}, Lnet/yostore/aws/service/PlayerService;->mediaStop()V

    .line 612
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 607
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 608
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    iget-object v1, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v1}, Lnet/yostore/aws/service/PlayerService;->access$2(Lnet/yostore/aws/service/PlayerService;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$9(Lnet/yostore/aws/service/PlayerService;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/handler/entity/Mp3Item;

    invoke-static {v0, p0}, Lnet/yostore/aws/service/PlayerService;->access$3(Lnet/yostore/aws/service/PlayerService;Lnet/yostore/aws/handler/entity/Mp3Item;)V

    goto :goto_0

    .line 609
    .restart local p0
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$preSongTask;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$28(Lnet/yostore/aws/service/PlayerService;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/service/PlayerService$preSongTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
