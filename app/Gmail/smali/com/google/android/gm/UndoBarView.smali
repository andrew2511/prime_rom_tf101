.class public Lcom/google/android/gm/UndoBarView;
.super Landroid/widget/FrameLayout;
.source "UndoBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;
    }
.end annotation


# instance fields
.field private mOnCancelListener:Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;

.field private mUndoButtonView:Landroid/view/View;

.field private mUndoCancel:Landroid/view/View;

.field private mUndoDescriptionView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gm/UndoBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mOnCancelListener:Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mOnCancelListener:Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;

    invoke-interface {v0}, Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;->onUndoCancel()V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/UndoBarView;->hide()V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoDescriptionView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gm/UndoBarView;->setVisibility(I)V

    .line 74
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoCancel:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/google/android/gm/UndoBarView;->onCancel()V

    .line 88
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 46
    const v0, 0x7f0e0086

    invoke-virtual {p0, v0}, Lcom/google/android/gm/UndoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoButtonView:Landroid/view/View;

    .line 47
    const v0, 0x7f0e0083

    invoke-virtual {p0, v0}, Lcom/google/android/gm/UndoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoDescriptionView:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0e0085

    invoke-virtual {p0, v0}, Lcom/google/android/gm/UndoBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoCancel:Landroid/view/View;

    .line 49
    return-void
.end method

.method public setOnCancelListener(Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/gm/UndoBarView;->mOnCancelListener:Lcom/google/android/gm/UndoBarView$OnUndoCancelListener;

    .line 40
    return-void
.end method

.method public show(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/UndoOperation;)V
    .locals 2
    .parameter "menuHandler"
    .parameter "undoOperation"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoButtonView:Landroid/view/View;

    new-instance v1, Lcom/google/android/gm/UndoBarView$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gm/UndoBarView$1;-><init>(Lcom/google/android/gm/UndoBarView;Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/UndoOperation;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/gm/UndoBarView;->mUndoDescriptionView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/android/gm/UndoOperation;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/UndoBarView;->setVisibility(I)V

    .line 64
    return-void
.end method
