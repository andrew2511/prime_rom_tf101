.class Landroid/widget/NumberPicker$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .registers 3
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 573
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$700(Landroid/widget/NumberPicker;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    .line 576
    :cond_f
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 562
    iget-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    if-nez v0, :cond_a

    .line 564
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->setDrawSelectorWheel(Z)V
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->access$500(Landroid/widget/NumberPicker;Z)V

    .line 566
    :cond_a
    iput-boolean v1, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    .line 567
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mSelectorPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$600(Landroid/widget/NumberPicker;)Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 568
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 569
    return-void
.end method
