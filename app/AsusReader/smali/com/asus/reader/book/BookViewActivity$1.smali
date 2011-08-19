.class Lcom/asus/reader/book/BookViewActivity$1;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Lcom/asus/reader/ui/PageSeekBar2$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/BookViewActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 406
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$1;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 0
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 407
    return-void
.end method

.method public onStopTrackingTouch(I)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$1;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$200(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 411
    :cond_0
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The page number is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$1;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$202(Lcom/asus/reader/book/BookViewActivity;Z)Z

    .line 413
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$1;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/PageSeekBar2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/ui/PageSeekBar2;->unregisterOnSeekBarChangeListener()V

    .line 414
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$1;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$400(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$1;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$500(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$1;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$500(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 417
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/book/BookViewActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/asus/reader/book/BookViewActivity$1$1;-><init>(Lcom/asus/reader/book/BookViewActivity$1;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
