.class Lcom/google/android/apps/books/app/ReaderFragment$16;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment;->setupGestureDetector(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;

.field final synthetic val$gestureDetector:Landroid/view/GestureDetector;

.field final synthetic val$gestureListener:Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;

.field final synthetic val$scaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/GestureDetector;Landroid/view/ScaleGestureDetector;Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->val$gestureDetector:Landroid/view/GestureDetector;

    iput-object p3, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->val$scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-object p4, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->val$gestureListener:Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 1358
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/apps/books/widget/PageTurnView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1359
    .local v1, pageTurnHandled:Z
    if-eqz v1, :cond_0

    move v2, v3

    .line 1376
    :goto_0
    return v2

    .line 1361
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1362
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2700(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1363
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->val$scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1366
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1367
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v2, v3

    .line 1376
    goto :goto_0

    .line 1369
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->val$gestureListener:Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onActionUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1372
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$16;->val$gestureListener:Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onActionCancel(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
