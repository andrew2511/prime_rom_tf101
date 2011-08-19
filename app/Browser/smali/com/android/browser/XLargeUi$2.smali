.class Lcom/android/browser/XLargeUi$2;
.super Ljava/lang/Object;
.source "XLargeUi.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/XLargeUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mWasCanceled:Z

.field final synthetic this$0:Lcom/android/browser/XLargeUi;


# direct methods
.method constructor <init>(Lcom/android/browser/XLargeUi;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/browser/XLargeUi$2;->this$0:Lcom/android/browser/XLargeUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/XLargeUi$2;->mWasCanceled:Z

    .line 412
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/browser/XLargeUi$2;->mWasCanceled:Z

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/browser/XLargeUi$2;->this$0:Lcom/android/browser/XLargeUi;

    invoke-static {v0}, Lcom/android/browser/XLargeUi;->access$100(Lcom/android/browser/XLargeUi;)Lcom/android/browser/TitleBarXLarge;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBarXLarge;->setTranslationY(F)V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/browser/XLargeUi$2;->this$0:Lcom/android/browser/XLargeUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/XLargeUi;->setTitleGravity(I)V

    .line 407
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 399
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/XLargeUi$2;->mWasCanceled:Z

    .line 395
    return-void
.end method
