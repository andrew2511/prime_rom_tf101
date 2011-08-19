.class Lcom/google/android/maps/GestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/maps/GestureDetector;


# direct methods
.method constructor <init>(Lcom/google/android/maps/GestureDetector;)V
    .registers 2
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    .line 252
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 253
    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/GestureDetector;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "handler"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    .line 256
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 257
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 261
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    .line 278
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

    .line 263
    :pswitch_1e
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #getter for: Lcom/google/android/maps/GestureDetector;->mListener:Lcom/google/android/maps/GestureDetector$OnGestureListener;
    invoke-static {v0}, Lcom/google/android/maps/GestureDetector;->access$100(Lcom/google/android/maps/GestureDetector;)Lcom/google/android/maps/GestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #getter for: Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/google/android/maps/GestureDetector;->access$000(Lcom/google/android/maps/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 280
    :cond_2d
    :goto_2d
    return-void

    .line 267
    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #calls: Lcom/google/android/maps/GestureDetector;->dispatchLongPress()V
    invoke-static {v0}, Lcom/google/android/maps/GestureDetector;->access$200(Lcom/google/android/maps/GestureDetector;)V

    goto :goto_2d

    .line 272
    :pswitch_34
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #getter for: Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Lcom/google/android/maps/GestureDetector;->access$300(Lcom/google/android/maps/GestureDetector;)Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #getter for: Lcom/google/android/maps/GestureDetector;->mStillDown:Z
    invoke-static {v0}, Lcom/google/android/maps/GestureDetector;->access$400(Lcom/google/android/maps/GestureDetector;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 273
    iget-object v0, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #getter for: Lcom/google/android/maps/GestureDetector;->mDoubleTapListener:Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Lcom/google/android/maps/GestureDetector;->access$300(Lcom/google/android/maps/GestureDetector;)Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/GestureDetector$GestureHandler;->this$0:Lcom/google/android/maps/GestureDetector;

    #getter for: Lcom/google/android/maps/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/google/android/maps/GestureDetector;->access$000(Lcom/google/android/maps/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_2d

    .line 261
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_2e
        :pswitch_34
    .end packed-switch
.end method
