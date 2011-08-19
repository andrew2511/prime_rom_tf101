.class Lcom/android/launcher2/CellLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayout;->animateDrop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$4;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/high16 v2, 0x3f80

    .line 400
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$4;->this$0:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 401
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$4;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setHoverScale(F)V

    .line 402
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$4;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setHoverAlpha(F)V

    .line 403
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$4;->this$0:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 397
    return-void
.end method
