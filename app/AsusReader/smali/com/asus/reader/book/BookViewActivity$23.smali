.class Lcom/asus/reader/book/BookViewActivity$23;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;


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
    .line 2702
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickOnAddHighlight()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2704
    invoke-static {}, Lcom/asus/reader/book/BookmarkUtility;->setNewHighlight()[Ljava/lang/String;

    move-result-object v7

    .line 2705
    .local v7, location:[Ljava/lang/String;
    const-string v0, "BookViewActivity"

    const-string v1, "Insert a Highlight!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    if-eqz v7, :cond_0

    .line 2707
    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2709
    .local v3, highlight_index:I
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    const v0, 0xff00

    invoke-static {v3, v0}, Lcom/asus/reader/book/BookSurfaceView;->setHighlightColorNative(II)V

    .line 2710
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    aget-object v0, v7, v8

    invoke-static {v0}, Lcom/asus/reader/book/BookSurfaceView;->bookmarkToPosDoubletNative(Ljava/lang/String;)D

    move-result-wide v4

    .line 2711
    .local v4, location_value:D
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1100(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$6400(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$6500(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->createPageInfo(IILcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;)Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;

    move-result-object v6

    .line 2712
    .local v6, pageInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    aget-object v1, v7, v8

    const/4 v2, 0x2

    aget-object v2, v7, v2

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->insertHighlight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IDLcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;)V

    .line 2714
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$3900(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 2715
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$5500(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 2717
    .end local v3           #highlight_index:I
    .end local v4           #location_value:D
    .end local v6           #pageInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 2718
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$5100(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->invalidate()V

    .line 2719
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$5200(Lcom/asus/reader/book/BookViewActivity;)V

    .line 2721
    return-void
.end method

.method public onClickOnAddNote()V
    .locals 2

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->showDialog(I)V

    .line 2743
    return-void
.end method

.method public onClickOnCopy()V
    .locals 4

    .prologue
    .line 2767
    sget-object v1, Lcom/asus/reader/book/BookViewActivity$25;->$SwitchMap$com$asus$reader$book$BookViewActivity$SelectionState:[I

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/book/BookViewActivity$SelectionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2776
    :goto_0
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/BookViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 2777
    .local v0, clipManager:Landroid/text/ClipboardManager;
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$6800(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2778
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const v2, 0x7f070063

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2782
    return-void

    .line 2770
    .end local v0           #clipManager:Landroid/text/ClipboardManager;
    :pswitch_0
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    invoke-static {}, Lcom/asus/reader/book/BookSurfaceView;->getSelectedTextNative()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/reader/book/BookViewActivity;->access$6802(Lcom/asus/reader/book/BookViewActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2773
    :pswitch_1
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v2

    invoke-static {v2}, Lcom/asus/reader/book/BookmarkUtility;->getHighlightText(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/reader/book/BookViewActivity;->access$6802(Lcom/asus/reader/book/BookViewActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2767
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClickOnRemoveHighlight()V
    .locals 7

    .prologue
    .line 2724
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$6600(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v6}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/asus/reader/book/BookViewActivity;->access$6700(Lcom/asus/reader/book/BookViewActivity;Ljava/util/ArrayList;I)I

    move-result v2

    .line 2725
    .local v2, index:I
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$6600(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2726
    .local v1, highlight_loc:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    if-eqz v1, :cond_0

    .line 2727
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v4

    invoke-static {v4}, Lcom/asus/reader/book/BookmarkUtility;->removeHighlight(I)V

    .line 2728
    const-string v4, "start"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2729
    .local v3, start_location:Ljava/lang/String;
    const-string v4, "end"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2730
    .local v0, end_location:Ljava/lang/String;
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$6500(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    move-result-object v5

    invoke-static {v4, v3, v0, v5}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->deleteHighlight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;)I

    .line 2732
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v5

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v4, v5}, Lcom/asus/reader/book/BookViewActivity;->access$3900(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 2733
    const-string v4, "BookViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete the highlight index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v6}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v5

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v4, v5}, Lcom/asus/reader/book/BookViewActivity;->access$5500(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 2736
    .end local v0           #end_location:Ljava/lang/String;
    .end local v3           #start_location:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v5, Lcom/asus/reader/book/BookViewActivity$SelectionState;->NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v4, v5}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 2737
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$5100(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->invalidate()V

    .line 2738
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$5200(Lcom/asus/reader/book/BookViewActivity;)V

    .line 2739
    return-void
.end method

.method public onClickOnRemoveNote()V
    .locals 7

    .prologue
    .line 2745
    const-string v4, "BookViewActivity"

    const-string v5, "onClickOnRemoveNote()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$7400(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v6}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/asus/reader/book/BookViewActivity;->access$7500(Lcom/asus/reader/book/BookViewActivity;Ljava/util/ArrayList;I)I

    move-result v2

    .line 2747
    .local v2, index:I
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$7400(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2748
    .local v0, annotation_loc:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    if-eqz v0, :cond_0

    .line 2749
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v4

    invoke-static {v4}, Lcom/asus/reader/book/BookmarkUtility;->removeHighlight(I)V

    .line 2750
    const-string v4, "start"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2751
    .local v3, start_location:Ljava/lang/String;
    const-string v4, "end"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2752
    .local v1, end_location:Ljava/lang/String;
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$6500(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    move-result-object v5

    invoke-static {v4, v5, v3, v1}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->deleteAnnotation(Landroid/content/Context;Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v5

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v4, v5}, Lcom/asus/reader/book/BookViewActivity;->access$3800(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 2754
    const-string v4, "BookViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete the anntation index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v6}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v5

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v4, v5}, Lcom/asus/reader/book/BookViewActivity;->access$5500(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 2757
    .end local v1           #end_location:Ljava/lang/String;
    .end local v3           #start_location:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v5, Lcom/asus/reader/book/BookViewActivity$SelectionState;->NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v4, v5}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 2758
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$5100(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->invalidate()V

    .line 2759
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$5200(Lcom/asus/reader/book/BookViewActivity;)V

    .line 2760
    return-void
.end method

.method public onClickOnShare()V
    .locals 6

    .prologue
    .line 2808
    sget-object v3, Lcom/asus/reader/book/BookViewActivity$25;->$SwitchMap$com$asus$reader$book$BookViewActivity$SelectionState:[I

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/book/BookViewActivity$SelectionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2818
    :goto_0
    const-string v3, "BookViewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Share the text:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$6800(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$1100(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v4

    const-string v5, "title"

    invoke-static {v3, v4, v5}, Lcom/asus/reader/util/ReaderDatabaseUtils;->getInfoByBookId(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2821
    .local v1, bookname:Ljava/lang/String;
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$1100(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v4

    const-string v5, "creator"

    invoke-static {v3, v4, v5}, Lcom/asus/reader/util/ReaderDatabaseUtils;->getInfoByBookId(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2823
    .local v0, author:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2824
    .local v2, shareContent:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$6800(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2826
    if-eqz v1, :cond_0

    .line 2827
    const-string v3, "\r\n   ~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2829
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2832
    :cond_0
    if-eqz v0, :cond_1

    .line 2833
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2834
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2837
    :cond_1
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/asus/reader/book/BookViewActivity;->showShareDialog(Ljava/lang/String;)V

    .line 2849
    return-void

    .line 2811
    .end local v0           #author:Ljava/lang/String;
    .end local v1           #bookname:Ljava/lang/String;
    .end local v2           #shareContent:Ljava/lang/StringBuffer;
    :pswitch_0
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    invoke-static {}, Lcom/asus/reader/book/BookSurfaceView;->getSelectedTextNative()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/reader/book/BookViewActivity;->access$6802(Lcom/asus/reader/book/BookViewActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2815
    :pswitch_1
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v4

    invoke-static {v4}, Lcom/asus/reader/book/BookmarkUtility;->getHighlightText(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/reader/book/BookViewActivity;->access$6802(Lcom/asus/reader/book/BookViewActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2808
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onClickOnTTS()V
    .locals 1

    .prologue
    .line 2763
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$3600(Lcom/asus/reader/book/BookViewActivity;)V

    .line 2764
    return-void
.end method

.method public onClickOnTranslation()V
    .locals 3

    .prologue
    .line 2785
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$25;->$SwitchMap$com$asus$reader$book$BookViewActivity$SelectionState:[I

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/book/BookViewActivity$SelectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2795
    :goto_0
    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Steate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Translation Text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$6800(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$7600(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2797
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->showDialog(I)V

    .line 2805
    :goto_1
    return-void

    .line 2788
    :pswitch_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    invoke-static {}, Lcom/asus/reader/book/BookSurfaceView;->getSelectedTextNative()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$6802(Lcom/asus/reader/book/BookViewActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2792
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/asus/reader/book/BookmarkUtility;->getHighlightText(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$6802(Lcom/asus/reader/book/BookViewActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2799
    :cond_0
    const-string v0, "BookViewActivity"

    const-string v1, "Translation need network connection!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$23;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->showDialog(I)V

    goto :goto_1

    .line 2785
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
