.class public Lcom/amazon/kcp/library/ui/DeleteBookRowView;
.super Lcom/amazon/kcp/library/ui/CoverRowView;
.source "DeleteBookRowView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private checkbox:Landroid/widget/CheckBox;

.field private cover:Lcom/amazon/kcp/library/ui/BookCoverView;

.field private isChecked:Z

.field protected updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/ui/CoverRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getCoverView()Lcom/amazon/kcp/library/ui/BookCoverView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->cover:Lcom/amazon/kcp/library/ui/BookCoverView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->isChecked:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->reset()V

    .line 105
    invoke-super {p0}, Lcom/amazon/kcp/library/ui/CoverRowView;->onDetachedFromWindow()V

    .line 106
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/amazon/kcp/library/ui/CoverRowView;->onFinishInflate()V

    .line 68
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->checkbox:Landroid/widget/CheckBox;

    .line 69
    const v0, 0x7f0c00b1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/BookCoverView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->cover:Lcom/amazon/kcp/library/ui/BookCoverView;

    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->checkbox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "No checkbox found after inflating DeleteBookRowView!"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->cover:Lcom/amazon/kcp/library/ui/BookCoverView;

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "No cover found after inflating DeleteBookRowView!"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->setChecked(Z)V

    .line 81
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdatableCover;->cancelUpdates()V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->invalidate()V

    .line 97
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->isChecked:Z

    if-eq v0, p1, :cond_0

    .line 46
    iput-boolean p1, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->isChecked:Z

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->checkbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->isChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->invalidate()V

    .line 50
    :cond_0
    return-void
.end method

.method public setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;F)V
    .locals 2
    .parameter "updatableCover"
    .parameter "bookLengthPercent"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    new-instance v1, Lcom/amazon/kcp/library/ui/DeleteBookRowView$1;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/ui/DeleteBookRowView$1;-><init>(Lcom/amazon/kcp/library/ui/DeleteBookRowView;F)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    .line 120
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->isChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->setChecked(Z)V

    .line 33
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
