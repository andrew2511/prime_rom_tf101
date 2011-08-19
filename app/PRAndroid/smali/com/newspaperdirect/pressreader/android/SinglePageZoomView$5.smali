.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$5;
.super Ljava/lang/Object;
.source "SinglePageZoomView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->adjustPosition()Z
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$5;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$5;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;Z)V

    .line 342
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 339
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 338
    return-void
.end method
