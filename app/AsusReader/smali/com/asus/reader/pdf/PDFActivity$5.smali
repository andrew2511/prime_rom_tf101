.class Lcom/asus/reader/pdf/PDFActivity$5;
.super Ljava/lang/Object;
.source "PDFActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 224
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity$5;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/high16 v4, 0x43c8

    const/4 v1, 0x1

    .line 227
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$5;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget-boolean v0, v0, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$5;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->hasScale:Z

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$5;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->mBaseNum:I

    if-ne v0, v1, :cond_2

    .line 231
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$5;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v0

    iput-boolean v1, v0, Lcom/asus/reader/pdf/PDFReaderView;->isFit:Z

    .line 232
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$5;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v0

    iput v1, v0, Lcom/asus/reader/pdf/PDFReaderView;->mFitScale:I

    .line 233
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$5;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1, v4}, Lcom/asus/reader/pdf/PDFReaderView;->zoomTo(FF)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$5;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v0

    iput-boolean v1, v0, Lcom/asus/reader/pdf/PDFReaderView;->isFit:Z

    .line 237
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$5;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/asus/reader/pdf/PDFReaderView;->mFitScale:I

    .line 238
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$5;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity$5;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v1}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v1

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->screenHeight:F

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFActivity$5;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v2}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v2

    iget-object v2, v2, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v2, v2, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$5;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v3

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->screenWidth:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFActivity$5;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v3}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v3

    iget-object v3, v3, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v3, v3, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual {v0, v1, v4}, Lcom/asus/reader/pdf/PDFReaderView;->zoomTo(FF)V

    goto :goto_0
.end method
