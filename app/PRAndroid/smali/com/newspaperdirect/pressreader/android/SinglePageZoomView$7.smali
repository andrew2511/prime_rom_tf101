.class Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;
.super Ljava/lang/Object;
.source "SinglePageZoomView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->close()V
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;)Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;
    .locals 1
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;->this$0:Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7$1;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageZoomView$7;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/SinglePageZoomView;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 455
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 454
    return-void
.end method
