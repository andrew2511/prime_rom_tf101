.class Lcom/android/launcher2/ApplicationInfoDropTarget$1;
.super Ljava/lang/Object;
.source "ApplicationInfoDropTarget.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ApplicationInfoDropTarget;->onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ApplicationInfoDropTarget;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ApplicationInfoDropTarget;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/launcher2/ApplicationInfoDropTarget$1;->this$0:Lcom/android/launcher2/ApplicationInfoDropTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onEndOrCancel()V
    .locals 6

    .prologue
    .line 125
    iget-object v4, p0, Lcom/android/launcher2/ApplicationInfoDropTarget$1;->this$0:Lcom/android/launcher2/ApplicationInfoDropTarget;

    iget-object v0, v4, Lcom/android/launcher2/ApplicationInfoDropTarget;->mOverlappingViews:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 126
    .local v3, view:Landroid/view/View;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/ApplicationInfoDropTarget$1;->this$0:Lcom/android/launcher2/ApplicationInfoDropTarget;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/launcher2/ApplicationInfoDropTarget;->access$002(Lcom/android/launcher2/ApplicationInfoDropTarget;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 129
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/launcher2/ApplicationInfoDropTarget$1;->onEndOrCancel()V

    .line 123
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/launcher2/ApplicationInfoDropTarget$1;->onEndOrCancel()V

    .line 120
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 117
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 116
    return-void
.end method
