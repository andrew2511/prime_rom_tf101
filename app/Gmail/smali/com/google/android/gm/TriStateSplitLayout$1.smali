.class Lcom/google/android/gm/TriStateSplitLayout$1;
.super Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;
.source "TriStateSplitLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/TriStateSplitLayout;->onEnterConversationListMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TriStateSplitLayout;


# direct methods
.method constructor <init>(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout$1;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;-><init>(Lcom/google/android/gm/TriStateSplitLayout;Lcom/google/android/gm/TriStateSplitLayout$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout$1;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-static {v0}, Lcom/google/android/gm/TriStateSplitLayout;->access$100(Lcom/google/android/gm/TriStateSplitLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout$1;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-static {v0}, Lcom/google/android/gm/TriStateSplitLayout;->access$200(Lcom/google/android/gm/TriStateSplitLayout;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 593
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout$1;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-static {v0}, Lcom/google/android/gm/TriStateSplitLayout;->access$300(Lcom/google/android/gm/TriStateSplitLayout;)V

    .line 597
    return-void
.end method
