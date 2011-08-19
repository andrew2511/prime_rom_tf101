.class Lcom/asus/reader/book/BookViewActivity$2;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Lcom/asus/reader/ui/PageSeekBar2$OnKeyUpInterceptor;


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
    .line 427
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$2;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 429
    packed-switch p1, :pswitch_data_0

    .line 449
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 433
    :pswitch_0
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$2;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$200(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_0

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$2;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1, v5}, Lcom/asus/reader/book/BookViewActivity;->access$202(Lcom/asus/reader/book/BookViewActivity;Z)Z

    .line 435
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$2;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$400(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$2;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$500(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$2;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$500(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 438
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$2;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/PageSeekBar2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/ui/PageSeekBar2;->getProgress()I

    move-result v0

    .line 439
    .local v0, progress:I
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/asus/reader/book/BookViewActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/asus/reader/book/BookViewActivity$2$1;-><init>(Lcom/asus/reader/book/BookViewActivity$2;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    move v1, v5

    .line 447
    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
