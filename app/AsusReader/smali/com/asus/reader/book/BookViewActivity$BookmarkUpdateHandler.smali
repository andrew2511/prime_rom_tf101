.class Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;
.super Landroid/os/Handler;
.source "BookViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookmarkUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;


# direct methods
.method public constructor <init>(Lcom/asus/reader/book/BookViewActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 2409
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    .line 2410
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2411
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    .line 2416
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2453
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2418
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$3900(Lcom/asus/reader/book/BookViewActivity;I)V

    goto :goto_0

    .line 2421
    :pswitch_2
    invoke-static {}, Lcom/asus/reader/book/BookmarkUtility;->setNewHighlight()[Ljava/lang/String;

    move-result-object v9

    .line 2422
    .local v9, location:[Ljava/lang/String;
    const-string v0, "BookViewActivity"

    const-string v1, "Insert a Highlight!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    if-eqz v9, :cond_0

    .line 2424
    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2425
    .local v3, highlight_index:I
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    aget-object v0, v9, v11

    invoke-static {v0}, Lcom/asus/reader/book/BookSurfaceView;->bookmarkToPosDoubletNative(Ljava/lang/String;)D

    move-result-wide v4

    .line 2426
    .local v4, location_value:D
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1100(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$6400(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$6500(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->createPageInfo(IILcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;)Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;

    move-result-object v6

    .line 2427
    .local v6, pageInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    aget-object v1, v9, v11

    const/4 v2, 0x2

    aget-object v2, v9, v2

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->insertHighlight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IDLcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;)V

    .line 2429
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$3900(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 2430
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$5500(Lcom/asus/reader/book/BookViewActivity;I)V

    goto :goto_0

    .line 2434
    .end local v3           #highlight_index:I
    .end local v4           #location_value:D
    .end local v6           #pageInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;
    .end local v9           #location:[Ljava/lang/String;
    :pswitch_3
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$6600(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/asus/reader/book/BookViewActivity;->access$6700(Lcom/asus/reader/book/BookViewActivity;Ljava/util/ArrayList;I)I

    move-result v3

    .line 2435
    .restart local v3       #highlight_index:I
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$6600(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 2436
    .local v8, highlight_loc:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    if-eqz v8, :cond_0

    .line 2437
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/asus/reader/book/BookmarkUtility;->removeHighlight(I)V

    .line 2438
    const-string v0, "start"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2439
    .local v10, start_location:Ljava/lang/String;
    const-string v0, "end"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2440
    .local v7, end_location:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$6500(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    move-result-object v1

    invoke-static {v0, v10, v7, v1}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->deleteHighlight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;)I

    .line 2442
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$3900(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 2443
    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete the highlight index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$5500(Lcom/asus/reader/book/BookViewActivity;I)V

    goto/16 :goto_0

    .line 2450
    .end local v3           #highlight_index:I
    .end local v7           #end_location:Ljava/lang/String;
    .end local v8           #highlight_loc:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #start_location:Ljava/lang/String;
    :pswitch_4
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$4000(Lcom/asus/reader/book/BookViewActivity;)V

    goto/16 :goto_0

    .line 2416
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
