.class Lcom/asus/reader/book/BookViewActivity$11;
.super Landroid/os/Handler;
.source "BookViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1548
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1551
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1602
    :goto_0
    return-void

    .line 1553
    :pswitch_0
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$1600(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1554
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$3400(Lcom/asus/reader/book/BookViewActivity;)V

    goto :goto_0

    .line 1557
    :pswitch_1
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$3400(Lcom/asus/reader/book/BookViewActivity;)V

    .line 1558
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$1600(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1561
    :pswitch_2
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$3500(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1564
    :pswitch_3
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$3500(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1567
    :pswitch_4
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$3600(Lcom/asus/reader/book/BookViewActivity;)V

    goto :goto_0

    .line 1570
    :pswitch_5
    const/4 v1, 0x0

    .line 1571
    .local v1, pageNum:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/asus/reader/ui/SearchResult;

    .line 1572
    .local v0, content:Lcom/asus/reader/ui/SearchResult;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/asus/reader/ui/SearchResult;

    if-eqz v2, :cond_1

    .line 1573
    invoke-virtual {v0}, Lcom/asus/reader/ui/SearchResult;->getPageNum()I

    move-result v1

    .line 1574
    invoke-virtual {v0}, Lcom/asus/reader/ui/SearchResult;->getStartPos()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/asus/reader/ui/SearchResult;->getEndPos()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookmarkUtility;->setSelectionHighlight(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    :goto_1
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/asus/reader/book/BookSurfaceView;->navigateToPageNative(I)V

    .line 1579
    invoke-static {}, Lcom/asus/reader/Cache;->getInstance()Lcom/asus/reader/Cache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/Cache;->ClearAllCaches()V

    .line 1580
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$1100(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v4

    iget v4, v4, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-virtual {v2, v3, v1, v4}, Lcom/asus/reader/book/PageRenderer;->setCurrentPage(III)V

    .line 1581
    if-eqz v0, :cond_0

    .line 1582
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v0}, Lcom/asus/reader/ui/SearchResult;->getStartPos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/asus/reader/ui/SearchResult;->getEndPos()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lcom/asus/reader/book/BookViewActivity;->access$3700(Lcom/asus/reader/book/BookViewActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 1583
    :cond_0
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/PageSeekBar2;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v3

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/PageSeekBar2;->setProgress(I)V

    goto/16 :goto_0

    .line 1576
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 1586
    .end local v0           #content:Lcom/asus/reader/ui/SearchResult;
    .end local v1           #pageNum:I
    :pswitch_6
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v3

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$3800(Lcom/asus/reader/book/BookViewActivity;I)V

    goto/16 :goto_0

    .line 1589
    :pswitch_7
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$1400(Lcom/asus/reader/book/BookViewActivity;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/asus/reader/book/BookViewActivity;->access$1500(Lcom/asus/reader/book/BookViewActivity;Landroid/view/MotionEvent;Z)V

    goto/16 :goto_0

    .line 1592
    :pswitch_8
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v3, Lcom/asus/reader/book/BookViewActivity$UpdateState;->UPDATING:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$700(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$UpdateState;)V

    .line 1593
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v3

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$3900(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 1594
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v3

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$3800(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 1595
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$4000(Lcom/asus/reader/book/BookViewActivity;)V

    .line 1596
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v3, Lcom/asus/reader/book/BookViewActivity$UpdateState;->UPDATED:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$700(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$UpdateState;)V

    goto/16 :goto_0

    .line 1600
    :pswitch_9
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$11;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookViewActivity;->access$4100(Lcom/asus/reader/book/BookViewActivity;I)V

    goto/16 :goto_0

    .line 1551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
