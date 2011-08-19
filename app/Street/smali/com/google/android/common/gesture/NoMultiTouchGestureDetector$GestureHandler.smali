.class Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "NoMultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;


# direct methods
.method constructor <init>(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;->this$0:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    .line 260
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 261
    return-void
.end method

.method constructor <init>(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;->this$0:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    .line 264
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 265
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 269
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 286
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;->this$0:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    invoke-static {v0}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->access$100(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;)Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;->this$0:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    invoke-static {v1}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->access$000(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 275
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;->this$0:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    invoke-static {v0}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->access$200(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;)V

    goto :goto_0

    .line 280
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;->this$0:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    invoke-static {v0}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->access$300(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;)Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;->this$0:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    invoke-static {v0}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->access$400(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;->this$0:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    invoke-static {v0}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->access$300(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;)Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$GestureHandler;->this$0:Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;

    invoke-static {v1}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;->access$000(Lcom/google/android/common/gesture/NoMultiTouchGestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/common/gesture/NoMultiTouchGestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
