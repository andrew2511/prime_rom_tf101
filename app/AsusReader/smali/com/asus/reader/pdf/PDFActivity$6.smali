.class Lcom/asus/reader/pdf/PDFActivity$6;
.super Ljava/lang/Object;
.source "PDFActivity.java"

# interfaces
.implements Lcom/asus/reader/ui/PageSeekBar2$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/pdf/PDFActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 261
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity$6;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 3
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v2, 0x1

    .line 264
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$6;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    sub-int v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$6;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/reader/pdf/PDFActivity;->access$202(Lcom/asus/reader/pdf/PDFActivity;Z)Z

    .line 266
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$6;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$300(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/dictionary/Dictionary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dictionary/Dictionary;->cancelLookupAndInvisible()V

    .line 267
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$6;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$400(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v0

    const-string v1, "select"

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BoundingBoxView;->remove(Ljava/lang/String;)Ljava/util/List;

    .line 268
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$6;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$400(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/book/BoundingBoxView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BoundingBoxView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$6;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    sget-object v0, Lcom/asus/reader/pdf/PDFReaderView;->cache:Lcom/asus/reader/pdf/PDFCache;

    sub-int v0, p1, v2

    sput v0, Lcom/asus/reader/pdf/PDFCache;->currentPage:I

    .line 270
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$6;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v0

    sub-int v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/asus/reader/pdf/PDFReaderView;->gotoPage(I)V

    .line 272
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 278
    return-void
.end method
