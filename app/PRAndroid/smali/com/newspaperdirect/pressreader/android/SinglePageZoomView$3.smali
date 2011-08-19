.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$3;
.super Ljava/lang/Object;
.source "SinglePageZoomView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->setScale(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x1

    .line 185
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$20(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Z)V

    .line 186
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->setBackgroundColor(I)V

    .line 187
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    iput-boolean v2, v0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->processOnTouchEvents:Z

    .line 188
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    invoke-static {v0, v2}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Z)V

    .line 189
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 183
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$3;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->setBackgroundColor(I)V

    .line 182
    return-void
.end method
