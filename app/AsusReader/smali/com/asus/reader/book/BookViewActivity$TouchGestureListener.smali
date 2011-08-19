.class final Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BookViewActivity.java"

# interfaces
.implements Lcom/asus/reader/ui/MultiTouchDetector$SimpleMultiTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;


# direct methods
.method private constructor <init>(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1656
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1656
    invoke-direct {p0, p1}, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Long press on the point X="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1748
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",mSelectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", point count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    const-string v4, "BookViewActivity"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$4200(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$ScanState;

    move-result-object v4

    sget-object v5, Lcom/asus/reader/book/BookViewActivity$ScanState;->SCANNING:Lcom/asus/reader/book/BookViewActivity$ScanState;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$4400(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$UpdateState;

    move-result-object v4

    sget-object v5, Lcom/asus/reader/book/BookViewActivity$UpdateState;->UPDATED:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    if-eq v4, v5, :cond_1

    .line 1783
    :cond_0
    :goto_0
    return-void

    .line 1757
    :cond_1
    sget-object v4, Lcom/asus/reader/book/BookViewActivity$25;->$SwitchMap$com$asus$reader$book$BookViewActivity$SelectionState:[I

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/reader/book/BookViewActivity$SelectionState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1764
    :pswitch_0
    const-string v4, "BookViewActivity"

    const-string v5, "Select a new word"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v6}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v6

    iget v6, v6, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {p1, v4, v5, v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(Landroid/view/MotionEvent;IZI)I

    .line 1769
    invoke-static {}, Lcom/asus/reader/book/BookmarkUtility;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    .line 1770
    .local v3, word:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 1771
    :cond_2
    const-string v4, "BookViewActivity"

    const-string v5, "Press on vancancy area!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v5, Lcom/asus/reader/book/BookViewActivity$SelectionState;->NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v4, v5}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1779
    :goto_1
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v5

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v4, v5, v7, v7}, Lcom/asus/reader/book/BookViewActivity;->access$5800(Lcom/asus/reader/book/BookViewActivity;ILjava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v5

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v4, v5}, Lcom/asus/reader/book/BookViewActivity;->access$5500(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 1781
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$5200(Lcom/asus/reader/book/BookViewActivity;)V

    goto :goto_0

    .line 1774
    :cond_3
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v5, Lcom/asus/reader/book/BookViewActivity$SelectionState;->LONGPRESS_SELECTED:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v4, v5}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1775
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v4

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v5

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v4, v5, v7, v7}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1776
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v4

    iget v4, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v4}, Lcom/asus/reader/book/BookmarkUtility;->getPageText(I)Ljava/lang/String;

    move-result-object v1

    .line 1777
    .local v1, extraText:Ljava/lang/String;
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$5700(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/dictionary/Dictionary;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$5600(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v2, v1, v5}, Lcom/asus/dictionary/Dictionary;->lookupString(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1757
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 1788
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1686
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$4200(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$ScanState;

    move-result-object v3

    sget-object v4, Lcom/asus/reader/book/BookViewActivity$ScanState;->SCANNING:Lcom/asus/reader/book/BookViewActivity$ScanState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$4400(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$UpdateState;

    move-result-object v3

    sget-object v4, Lcom/asus/reader/book/BookViewActivity$UpdateState;->UPDATED:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    if-eq v3, v4, :cond_1

    :cond_0
    move v3, v6

    .line 1741
    :goto_0
    return v3

    .line 1689
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/high16 v4, 0x4270

    cmpg-float v3, v3, v4

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/book/BookSurfaceView;->getWidth()I

    move-result v4

    const/16 v5, 0x3c

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    :cond_2
    move v3, v6

    .line 1690
    goto :goto_0

    .line 1693
    :cond_3
    sget-boolean v3, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "BookViewActivity"

    const-string v4, "onSingleTapConfirmed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :cond_4
    sget-object v3, Lcom/asus/reader/book/BookViewActivity$25;->$SwitchMap$com$asus$reader$book$BookViewActivity$SelectionState:[I

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/book/BookViewActivity$SelectionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_1
    move v3, v7

    .line 1741
    goto :goto_0

    .line 1701
    :pswitch_0
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/asus/reader/book/BookViewActivity;->access$4500(Lcom/asus/reader/book/BookViewActivity;FFI)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 1702
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v4, Lcom/asus/reader/book/BookViewActivity$SelectionState;->NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v3, v4}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1703
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$4600(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1707
    :cond_5
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/asus/reader/book/BookViewActivity;->access$4700(Lcom/asus/reader/book/BookViewActivity;FF)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1708
    .local v0, containsRects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1709
    .local v2, index:Ljava/lang/Integer;
    sget-boolean v3, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "BookViewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The highlight Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " contains the position"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_6
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/asus/reader/book/BookViewActivity;->access$4802(Lcom/asus/reader/book/BookViewActivity;I)I

    goto :goto_2

    .line 1712
    .end local v2           #index:Ljava/lang/Integer;
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 1713
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v4, Lcom/asus/reader/book/BookViewActivity$SelectionState;->PRESS_ON_HIGHLIGHT:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v3, v4}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1714
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$4900(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/asus/reader/book/BookViewActivity;->access$5000(Lcom/asus/reader/book/BookViewActivity;Ljava/util/ArrayList;)V

    .line 1715
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$5100(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->invalidate()V

    .line 1716
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$5200(Lcom/asus/reader/book/BookViewActivity;)V

    move v3, v7

    .line 1717
    goto/16 :goto_0

    .line 1721
    :cond_8
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/asus/reader/book/BookViewActivity;->access$5300(Lcom/asus/reader/book/BookViewActivity;FF)Ljava/util/List;

    move-result-object v0

    .end local v0           #containsRects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 1722
    .restart local v0       #containsRects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1723
    .restart local v2       #index:Ljava/lang/Integer;
    sget-boolean v3, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v3, :cond_9

    const-string v3, "BookViewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The Annotation Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " contains the position"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_9
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/asus/reader/book/BookViewActivity;->access$4802(Lcom/asus/reader/book/BookViewActivity;I)I

    goto :goto_3

    .line 1726
    .end local v2           #index:Ljava/lang/Integer;
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 1727
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v4, Lcom/asus/reader/book/BookViewActivity$SelectionState;->PRESS_ON_NOTE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v3, v4}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1728
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$5400(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$4800(Lcom/asus/reader/book/BookViewActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/asus/reader/book/BookViewActivity;->access$5000(Lcom/asus/reader/book/BookViewActivity;Ljava/util/ArrayList;)V

    .line 1729
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$5100(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->invalidate()V

    .line 1730
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$5200(Lcom/asus/reader/book/BookViewActivity;)V

    move v3, v7

    .line 1731
    goto/16 :goto_0

    .line 1735
    :cond_b
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v4

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v5

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {p1, v3, v4, v5}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(Landroid/view/MotionEvent;IZI)I

    .line 1737
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v4

    iget v4, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v3, v4}, Lcom/asus/reader/book/BookViewActivity;->access$5500(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 1738
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$5200(Lcom/asus/reader/book/BookViewActivity;)V

    .line 1739
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$5100(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->invalidate()V

    goto/16 :goto_1

    .line 1694
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1660
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BookViewActivity"

    const-string v1, "onSingleTapUp up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x4270

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/book/BookSurfaceView;->getWidth()I

    move-result v1

    const/16 v2, 0x3c

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 1662
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$3400(Lcom/asus/reader/book/BookViewActivity;)V

    .line 1664
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$4200(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$ScanState;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$ScanState;->FINISH:Lcom/asus/reader/book/BookViewActivity$ScanState;

    if-ne v0, v1, :cond_2

    .line 1665
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0, p1, v3}, Lcom/asus/reader/book/BookViewActivity;->access$1500(Lcom/asus/reader/book/BookViewActivity;Landroid/view/MotionEvent;Z)V

    :cond_2
    move v0, v4

    .line 1681
    :goto_0
    return v0

    .line 1669
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-ne v0, v1, :cond_5

    .line 1670
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$400(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1671
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1600(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1672
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$3400(Lcom/asus/reader/book/BookViewActivity;)V

    .line 1673
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1600(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    move v0, v3

    .line 1681
    goto :goto_0

    .line 1675
    :cond_4
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1600(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1676
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$3400(Lcom/asus/reader/book/BookViewActivity;)V

    goto :goto_1

    .line 1679
    :cond_5
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$3400(Lcom/asus/reader/book/BookViewActivity;)V

    goto :goto_1
.end method

.method public onTwoPointTap(FFFF)V
    .locals 11
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1794
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "onTwoPointTouch:"

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1795
    .local v7, builder:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    const-string v0, "BookViewActivity"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1803
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$4600(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1804
    float-to-double v0, p1

    float-to-double v2, p2

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v6}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v6

    iget v6, v6, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(DDIZI)I

    .line 1808
    float-to-double v0, p1

    float-to-double v2, p2

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v5

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v4

    iget v6, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    move v4, v10

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(DDIZI)I

    .line 1810
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1, v9, v9}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1811
    .local v8, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1812
    float-to-double v0, p3

    float-to-double v2, p4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v6}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v6

    iget v6, v6, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(DDIZI)I

    .line 1814
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->AFTER_DRAGGING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1818
    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1819
    float-to-double v0, p3

    float-to-double v2, p4

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v5

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v4

    iget v6, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    move v4, v10

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(DDIZI)I

    .line 1821
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1, v9, v9}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .end local v8           #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v8, Ljava/util/ArrayList;

    .line 1822
    .restart local v8       #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1823
    float-to-double v0, p1

    float-to-double v2, p2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v6}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v6

    iget v6, v6, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(DDIZI)I

    .line 1825
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->AFTER_DRAGGING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1829
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1, v9, v9}, Lcom/asus/reader/book/BookViewActivity;->access$5800(Lcom/asus/reader/book/BookViewActivity;ILjava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$5500(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 1831
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$5200(Lcom/asus/reader/book/BookViewActivity;)V

    .line 1832
    return-void
.end method

.method public onTwoPointsLongPress(FFFF)V
    .locals 11
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1837
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "onTwoPointLongPress:"

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1838
    .local v7, builder:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1842
    const-string v0, "BookViewActivity"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1846
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$4600(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1847
    float-to-double v0, p1

    float-to-double v2, p2

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v6}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v6

    iget v6, v6, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(DDIZI)I

    .line 1851
    float-to-double v0, p1

    float-to-double v2, p2

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v5

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v4

    iget v6, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    move v4, v10

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(DDIZI)I

    .line 1853
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1, v9, v9}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1854
    .local v8, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1855
    float-to-double v0, p3

    float-to-double v2, p4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v6}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v6

    iget v6, v6, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(DDIZI)I

    .line 1857
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->AFTER_DRAGGING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1861
    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1862
    float-to-double v0, p3

    float-to-double v2, p4

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v5

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v4}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v4

    iget v6, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    move v4, v10

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(DDIZI)I

    .line 1864
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1, v9, v9}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .end local v8           #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v8, Ljava/util/ArrayList;

    .line 1865
    .restart local v8       #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1866
    float-to-double v0, p1

    float-to-double v2, p2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v5}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v6}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v6

    iget v6, v6, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(DDIZI)I

    .line 1868
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->AFTER_DRAGGING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1872
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1, v9, v9}, Lcom/asus/reader/book/BookViewActivity;->access$5800(Lcom/asus/reader/book/BookViewActivity;ILjava/lang/String;Ljava/lang/String;)I

    .line 1873
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$5500(Lcom/asus/reader/book/BookViewActivity;I)V

    .line 1874
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$5200(Lcom/asus/reader/book/BookViewActivity;)V

    .line 1875
    return-void
.end method
