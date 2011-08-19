.class Lcom/asus/reader/pdf/PDFThread$4;
.super Ljava/lang/Object;
.source "PDFThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/pdf/PDFThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/pdf/PDFThread;


# direct methods
.method constructor <init>(Lcom/asus/reader/pdf/PDFThread;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFThread$4;->this$0:Lcom/asus/reader/pdf/PDFThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 435
    const-string v1, "PDFThread"

    const-string v2, "***************START_LOAD_BITMAP****************************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {}, Lcom/asus/reader/pdf/PDFThread;->access$000()Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->removeMessages(I)V

    .line 437
    invoke-static {}, Lcom/asus/reader/pdf/PDFThread;->access$000()Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 438
    .local v0, msg:Landroid/os/Message;
    sget-boolean v1, Lcom/asus/reader/pdf/PDFThread;->mThreadExec:Z

    if-eqz v1, :cond_0

    .line 439
    invoke-static {}, Lcom/asus/reader/pdf/PDFThread;->access$000()Lcom/asus/reader/pdf/PDFReaderView$TexHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/asus/reader/pdf/PDFReaderView$TexHandler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    :cond_0
    return-void
.end method
