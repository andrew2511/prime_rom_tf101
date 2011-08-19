.class final Lcom/google/android/apps/books/app/ReaderFragment$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment;->animateVisible(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 1800
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$20;->val$targetView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$20;->val$targetView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1804
    return-void
.end method
