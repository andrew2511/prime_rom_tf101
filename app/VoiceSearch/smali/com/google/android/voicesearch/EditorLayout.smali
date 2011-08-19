.class public Lcom/google/android/voicesearch/EditorLayout;
.super Landroid/widget/LinearLayout;
.source "EditorLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/EditorLayout$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/google/android/voicesearch/EditorLayout$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 59
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorLayout;->mListener:Lcom/google/android/voicesearch/EditorLayout$Listener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/voicesearch/EditorLayout;->mListener:Lcom/google/android/voicesearch/EditorLayout$Listener;

    invoke-interface {v0}, Lcom/google/android/voicesearch/EditorLayout$Listener;->notifyLayoutChanged()V

    .line 62
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorLayout;->updateLayout()V

    .line 54
    return-void
.end method

.method public setListener(Lcom/google/android/voicesearch/EditorLayout$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/voicesearch/EditorLayout;->mListener:Lcom/google/android/voicesearch/EditorLayout$Listener;

    .line 48
    return-void
.end method

.method public updateLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 66
    const v0, 0x7f080002

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/EditorLayout;->setMinimumHeight(I)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 72
    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorLayout;->getSuggestedMinimumHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 73
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 74
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorLayout;->mListener:Lcom/google/android/voicesearch/EditorLayout$Listener;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorLayout;->mListener:Lcom/google/android/voicesearch/EditorLayout$Listener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/EditorLayout$Listener;->notifyKeyboardState(Z)V

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/EditorLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v0, Lcom/google/android/voicesearch/EditorLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/EditorLayout$1;-><init>(Lcom/google/android/voicesearch/EditorLayout;)V

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/EditorLayout;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void

    .line 78
    :cond_1
    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 79
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorLayout;->mListener:Lcom/google/android/voicesearch/EditorLayout$Listener;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/google/android/voicesearch/EditorLayout;->mListener:Lcom/google/android/voicesearch/EditorLayout$Listener;

    invoke-interface {v1, v4}, Lcom/google/android/voicesearch/EditorLayout$Listener;->notifyKeyboardState(Z)V

    goto :goto_0
.end method
