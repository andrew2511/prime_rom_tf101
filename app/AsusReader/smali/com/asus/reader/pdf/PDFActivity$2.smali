.class Lcom/asus/reader/pdf/PDFActivity$2;
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
    .line 174
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFActivity$2;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/high16 v3, 0x43c8

    const/high16 v1, 0x4180

    const/high16 v2, 0x4000

    .line 177
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$2;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget-boolean v0, v0, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$2;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/asus/reader/pdf/PDFReaderView;->hasScale:Z

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$2;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v0

    iget-object v0, v0, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v0, v0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$2;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/asus/reader/pdf/PDFReaderView;->zoomTo(FF)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFActivity$2;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v0}, Lcom/asus/reader/pdf/PDFActivity;->access$100(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFReaderView;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFActivity$2;->this$0:Lcom/asus/reader/pdf/PDFActivity;

    invoke-static {v1}, Lcom/asus/reader/pdf/PDFActivity;->access$000(Lcom/asus/reader/pdf/PDFActivity;)Lcom/asus/reader/pdf/PDFRenderer;

    move-result-object v1

    iget-object v1, v1, Lcom/asus/reader/pdf/PDFRenderer;->currPage:Lcom/asus/reader/pdf/PDFPage;

    iget v1, v1, Lcom/asus/reader/pdf/PDFPage;->scale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/asus/reader/pdf/PDFReaderView;->zoomTo(FF)V

    goto :goto_0
.end method
