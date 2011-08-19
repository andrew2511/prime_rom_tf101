.class Lcom/android/browser/TitleBarXLarge$2;
.super Ljava/lang/Object;
.source "TitleBarXLarge.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/TitleBarXLarge;->hideNavButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/TitleBarXLarge;


# direct methods
.method constructor <init>(Lcom/android/browser/TitleBarXLarge;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/browser/TitleBarXLarge$2;->this$0:Lcom/android/browser/TitleBarXLarge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 598
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/browser/TitleBarXLarge$2;->this$0:Lcom/android/browser/TitleBarXLarge;

    invoke-static {v0}, Lcom/android/browser/TitleBarXLarge;->access$200(Lcom/android/browser/TitleBarXLarge;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 603
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 607
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 611
    return-void
.end method
