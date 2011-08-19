.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7$1;
.super Ljava/lang/Object;
.source "SinglePageZoomView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7$1;->this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7$1;->this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;)Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$20(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Z)V

    .line 460
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7$1;->this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;)Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7$1;->this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;)Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$22(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V

    .line 462
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7$1;->this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;)Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    move-result-object v0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mOnZoomClosedListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosedListener;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7$1;->this$1:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;)Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    move-result-object v0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->mOnZoomClosedListener:Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosedListener;

    invoke-interface {v0}, Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosedListener;->onZoomClosed()V

    .line 464
    :cond_0
    return-void
.end method
