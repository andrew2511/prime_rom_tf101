.class Lcom/asus/reader/pdf/PDFActivity$9;
.super Landroid/os/Handler;
.source "PDFActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/pdf/PDFActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/pdf/PDFActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/pdf/PDFActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 599
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 664
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 602
    :pswitch_1
    const/4 v2, 0x0

    .line 603
    .local v2, pageNum:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/asus/reader/ui/SearchResult;

    .line 604
    .local v0, content:Lcom/asus/reader/ui/SearchResult;
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/asus/reader/ui/SearchResult;

    if-eqz v3, :cond_1

    .line 605
    invoke-virtual {v0}, Lcom/asus/reader/ui/SearchResult;->getPageNum()I

    move-result v2

    .line 606
    invoke-virtual {v0}, Lcom/asus/reader/ui/SearchResult;->getStartPos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/asus/reader/ui/SearchResult;->getEndPos()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/reader/book/BookmarkUtility;->setSelectionHighlight(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :goto_1
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v3

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    if-eq v3, v2, :cond_0

    .line 614
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v3, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sput v2, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    .line 615
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/asus/reader/pdf/PDFReaderView;->gotoPage(I)V

    goto :goto_0

    .line 609
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 625
    .end local v0           #content:Lcom/asus/reader/ui/SearchResult;
    .end local v2           #pageNum:I
    :pswitch_2
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$800(Lcom/asus/reader/pdf/PDFActivity;)V

    goto :goto_0

    .line 629
    :pswitch_3
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$900(Lcom/asus/reader/pdf/PDFActivity;)V

    goto :goto_0

    .line 633
    :pswitch_4
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$400(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v3

    const-string v4, "select"

    invoke-virtual {v3, v4}, Lcom/asus/reader/book/BoundingBoxView;->remove(Ljava/lang/String;)Ljava/util/List;

    .line 634
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$400(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/book/BoundingBoxView;->invalidate()V

    goto :goto_0

    .line 638
    :pswitch_5
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$200(Lcom/asus/reader/pdf/PDFActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 639
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$400(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v4

    const-string v5, "select"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v3, v6}, Lcom/asus/reader/book/BoundingBoxView;->put(Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;

    .line 640
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$400(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/book/BoundingBoxView;->invalidate()V

    goto :goto_0

    .line 645
    :pswitch_6
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3, v8}, Lcom/asus/reader/pdf/PDFActivity;->access$202(Lcom/asus/reader/pdf/PDFActivity;Z)Z

    .line 646
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$400(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/asus/reader/book/BoundingBoxView;->setVisibility(I)V

    goto/16 :goto_0

    .line 650
    :pswitch_7
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$400(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/asus/reader/book/BoundingBoxView;->setVisibility(I)V

    goto/16 :goto_0

    .line 654
    :pswitch_8
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$1000(Lcom/asus/reader/pdf/PDFActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 657
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$400(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/asus/reader/book/BoundingBoxView;->setVisibility(I)V

    .line 658
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$400(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v3

    const-string v4, "select"

    iget-object v5, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v5}, Lcom/asus/reader/pdf/PDFActivity;->access$1100(Lcom/asus/reader/pdf/PDFActivity;)Ljava/util/List;

    move-result-object v5

    const/16 v6, 0x32

    const/16 v7, 0xff

    invoke-static {v6, v8, v8, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/asus/reader/book/BoundingBoxView;->put(Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;

    .line 659
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$400(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/book/BoundingBoxView;->postInvalidate()V

    .line 660
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$1200(Lcom/asus/reader/pdf/PDFActivity;)I

    move-result v3

    invoke-static {v3}, Lcom/asus/reader/book/BookmarkUtility;->getPageText(I)Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, extraText:Ljava/lang/String;
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$300(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/dictionary/Dictionary;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFActivity;->access$1300(Lcom/asus/reader/pdf/PDFActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v5}, Lcom/asus/reader/pdf/PDFActivity;->access$1100(Lcom/asus/reader/pdf/PDFActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/reader/pdf/PDFActivity$9;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v6}, Lcom/asus/reader/pdf/PDFActivity;->access$1400(Lcom/asus/reader/pdf/PDFActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/asus/dictionary/Dictionary;->lookupString(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
