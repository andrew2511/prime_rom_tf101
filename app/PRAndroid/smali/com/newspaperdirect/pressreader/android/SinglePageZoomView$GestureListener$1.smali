.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener$1;
.super Ljava/lang/Object;
.source "SinglePageZoomView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener$1;->this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener$1;->this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;->access$1(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$GestureListener;)Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$9(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)Z

    .line 562
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 559
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 558
    return-void
.end method
