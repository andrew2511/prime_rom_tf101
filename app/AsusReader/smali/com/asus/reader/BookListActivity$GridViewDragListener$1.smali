.class Lcom/asus/reader/BookListActivity$GridViewDragListener$1;
.super Landroid/os/CountDownTimer;
.source "BookListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/BookListActivity$GridViewDragListener;->onDragStart(Lcom/asus/reader/ui/DragSource;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;


# direct methods
.method constructor <init>(Lcom/asus/reader/BookListActivity$GridViewDragListener;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2916
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 2957
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v2, v2, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$3200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/DragController;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v3, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchX:I

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v4, v4, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchY:I

    invoke-virtual {v2, v3, v4}, Lcom/asus/reader/ui/DragController;->checkBookScrolling(II)I

    move-result v0

    .line 2958
    .local v0, dyBook:I
    if-eqz v0, :cond_0

    .line 2959
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v2, v2, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v2, v2, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/asus/reader/BookListActivity$GridViewDragListener$1$3;

    invoke-direct {v3, p0, v0}, Lcom/asus/reader/BookListActivity$GridViewDragListener$1$3;-><init>(Lcom/asus/reader/BookListActivity$GridViewDragListener$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2964
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iput v5, v2, Lcom/asus/reader/BookListActivity$GridViewDragListener;->positionON:I

    .line 2967
    :cond_0
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v2, v2, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$3200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/DragController;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v3, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchX:I

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v4, v4, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchY:I

    invoke-virtual {v2, v3, v4}, Lcom/asus/reader/ui/DragController;->checkCateScrolling(II)I

    move-result v1

    .line 2968
    .local v1, dyCate:I
    if-eqz v1, :cond_1

    .line 2969
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v2, v2, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v2, v2, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/asus/reader/BookListActivity$GridViewDragListener$1$4;

    invoke-direct {v3, p0, v1}, Lcom/asus/reader/BookListActivity$GridViewDragListener$1$4;-><init>(Lcom/asus/reader/BookListActivity$GridViewDragListener$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2974
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iput v5, v2, Lcom/asus/reader/BookListActivity$GridViewDragListener;->positionON:I

    .line 2977
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v2, v2, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$3100(Lcom/asus/reader/BookListActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v3, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->positionON:I

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v2, v2, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$3100(Lcom/asus/reader/BookListActivity;)I

    move-result v2

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v2, v2, Lcom/asus/reader/BookListActivity$GridViewDragListener;->positionON:I

    if-eq v2, v5, :cond_2

    .line 2978
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v2, v2, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$2700(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$BooksAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v3, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v3}, Lcom/asus/reader/BookListActivity;->access$3100(Lcom/asus/reader/BookListActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v4, v4, Lcom/asus/reader/BookListActivity$GridViewDragListener;->positionON:I

    invoke-virtual {v2, v3, v4}, Lcom/asus/reader/BookListActivity$BooksAdapter;->replaceItemBetweenDragAndDrop(II)V

    .line 2980
    :cond_2
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iput v5, v2, Lcom/asus/reader/BookListActivity$GridViewDragListener;->positionON:I

    .line 2981
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v2, v2, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    iget-boolean v2, v2, Lcom/asus/reader/BookListActivity;->mDrag:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2982
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->start()Landroid/os/CountDownTimer;

    .line 2983
    :cond_3
    return-void
.end method

.method public onTick(J)V
    .locals 8
    .parameter "millisUntilFinished"

    .prologue
    const/4 v7, -0x1

    .line 2919
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v3, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchX:I

    if-ne v3, v7, :cond_1

    .line 2953
    :cond_0
    :goto_0
    return-void

    .line 2922
    :cond_1
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v3, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v3}, Lcom/asus/reader/BookListActivity;->access$3200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/DragController;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v4, v4, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchX:I

    iget-object v5, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v5, v5, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchY:I

    invoke-virtual {v3, v4, v5}, Lcom/asus/reader/ui/DragController;->checkBookScrolling(II)I

    move-result v1

    .line 2923
    .local v1, dyBook:I
    if-eqz v1, :cond_2

    .line 2924
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v3, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v3, v3, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/asus/reader/BookListActivity$GridViewDragListener$1$1;

    invoke-direct {v4, p0, v1}, Lcom/asus/reader/BookListActivity$GridViewDragListener$1$1;-><init>(Lcom/asus/reader/BookListActivity$GridViewDragListener$1;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2929
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iput v7, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->positionON:I

    goto :goto_0

    .line 2933
    :cond_2
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v3, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v3}, Lcom/asus/reader/BookListActivity;->access$3200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/DragController;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v4, v4, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchX:I

    iget-object v5, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v5, v5, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchY:I

    invoke-virtual {v3, v4, v5}, Lcom/asus/reader/ui/DragController;->checkCateScrolling(II)I

    move-result v2

    .line 2934
    .local v2, dyCate:I
    if-eqz v2, :cond_3

    .line 2935
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v3, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v3, v3, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/asus/reader/BookListActivity$GridViewDragListener$1$2;

    invoke-direct {v4, p0, v2}, Lcom/asus/reader/BookListActivity$GridViewDragListener$1$2;-><init>(Lcom/asus/reader/BookListActivity$GridViewDragListener$1;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2940
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iput v7, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->positionON:I

    goto :goto_0

    .line 2944
    :cond_3
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v3, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v3}, Lcom/asus/reader/BookListActivity;->access$3200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/DragController;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v4, v4, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchX:I

    iget-object v5, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v5, v5, Lcom/asus/reader/BookListActivity$GridViewDragListener;->touchY:I

    iget-object v6, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v6, v6, Lcom/asus/reader/BookListActivity$GridViewDragListener;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v6}, Lcom/asus/reader/BookListActivity;->access$3100(Lcom/asus/reader/BookListActivity;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/asus/reader/ui/DragController;->pointToPosition(III)I

    move-result v0

    .line 2945
    .local v0, currentPo:I
    if-eq v0, v7, :cond_0

    .line 2948
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget v3, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->positionON:I

    if-eq v3, v0, :cond_0

    .line 2949
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iput v0, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->positionON:I

    .line 2950
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v3, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 2951
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$GridViewDragListener$1;->this$1:Lcom/asus/reader/BookListActivity$GridViewDragListener;

    iget-object v3, v3, Lcom/asus/reader/BookListActivity$GridViewDragListener;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_0
.end method
