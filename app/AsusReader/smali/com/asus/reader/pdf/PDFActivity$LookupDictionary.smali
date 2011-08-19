.class Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;
.super Ljava/lang/Object;
.source "PDFActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/pdf/PDFActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LookupDictionary"
.end annotation


# instance fields
.field private event:Landroid/view/MotionEvent;

.field private param:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

.field final synthetic this$0:Lcom/asus/reader/pdf/PDFActivity;


# direct methods
.method public constructor <init>(Lcom/asus/reader/pdf/PDFActivity;Landroid/view/MotionEvent;Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;)V
    .locals 0
    .parameter
    .parameter "event"
    .parameter "param"

    .prologue
    .line 759
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput-object p2, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->event:Landroid/view/MotionEvent;

    .line 761
    iput-object p3, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->param:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    .line 762
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 765
    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/asus/reader/pdf/PDFActivity;->access$1502(Lcom/asus/reader/pdf/PDFActivity;Z)Z

    .line 766
    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->event:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-double v4, v4

    iget-object v8, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->param:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    iget-wide v8, v8, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->adjustX:D

    add-double/2addr v4, v8

    iget-object v8, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->param:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    iget-wide v8, v8, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->scaleX:D

    mul-double v0, v4, v8

    .line 767
    .local v0, sdkX:D
    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->event:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-double v4, v4

    iget-object v8, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->param:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    iget-wide v8, v8, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->adjustY:D

    add-double/2addr v4, v8

    iget-object v8, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->param:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    iget-wide v8, v8, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->scaleY:D

    mul-double v2, v4, v8

    .line 769
    .local v2, sdkY:D
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v5}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v5

    iget-object v5, v5, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v5, v5, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    invoke-static/range {v0 .. v5}, Lcom/asus/reader/book/BookmarkUtility;->rmsdkSelectionEvent(DDII)V

    .line 770
    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v4, v4, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    iget-object v5, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->param:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    invoke-static {v10, v4, v11, v11, v5}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;)Ljava/util/List;

    move-result-object v6

    .line 772
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFActivity;->access$200(Lcom/asus/reader/pdf/PDFActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 773
    :cond_0
    const-string v4, "PDFActivity"

    const-string v5, "getBoundingBox returns nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v4, v10}, Lcom/asus/reader/pdf/PDFActivity;->access$1502(Lcom/asus/reader/pdf/PDFActivity;Z)Z

    .line 790
    :goto_0
    return-void

    .line 779
    :cond_1
    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v4, v6}, Lcom/asus/reader/pdf/PDFActivity;->access$1102(Lcom/asus/reader/pdf/PDFActivity;Ljava/util/List;)Ljava/util/List;

    .line 780
    invoke-static {}, Lcom/asus/reader/book/BookmarkUtility;->getSelectedText()Ljava/lang/String;

    move-result-object v7

    .line 781
    .local v7, word:Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFActivity;->access$200(Lcom/asus/reader/pdf/PDFActivity;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 782
    :cond_2
    const-string v4, "PDFActivity"

    const-string v5, "getSelectedText returns nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v4, v10}, Lcom/asus/reader/pdf/PDFActivity;->access$1502(Lcom/asus/reader/pdf/PDFActivity;Z)Z

    goto :goto_0

    .line 787
    :cond_3
    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v4, v7}, Lcom/asus/reader/pdf/PDFActivity;->access$1302(Lcom/asus/reader/pdf/PDFActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 788
    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v4}, Lcom/asus/reader/pdf/PDFActivity;->access$1600(Lcom/asus/reader/pdf/PDFActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 789
    iget-object v4, p0, Lcom/asus/reader/pdf/PDFActivity$LookupDictionary;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v4, v10}, Lcom/asus/reader/pdf/PDFActivity;->access$1502(Lcom/asus/reader/pdf/PDFActivity;Z)Z

    goto :goto_0
.end method
