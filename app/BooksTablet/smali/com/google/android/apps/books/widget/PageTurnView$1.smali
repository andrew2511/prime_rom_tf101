.class Lcom/google/android/apps/books/widget/PageTurnView$1;
.super Landroid/os/Handler;
.source "PageTurnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$1;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 235
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 246
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad PageTurnView mUpdateHandler message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;

    .line 238
    .local v0, event:Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$1;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$1;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;->position:Lcom/google/android/apps/books/common/Position;

    iget-boolean v3, v0, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;->fromUser:Z

    iget-object v4, v0, Lcom/google/android/apps/books/widget/PageTurnView$ActionEvent;->lastAction:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;->onPositionChanged(Lcom/google/android/apps/books/common/Position;ZLjava/lang/String;)V

    .line 249
    :cond_0
    return-void

    .line 235
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
