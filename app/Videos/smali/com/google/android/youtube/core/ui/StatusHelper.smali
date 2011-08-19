.class public abstract Lcom/google/android/youtube/core/ui/StatusHelper;
.super Ljava/lang/Object;
.source "StatusHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/ui/StatusHelper$1;,
        Lcom/google/android/youtube/core/ui/StatusHelper$ViewStatusHelper;,
        Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private errorIcon:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;

.field private progress:Landroid/widget/ProgressBar;

.field private retryButton:Landroid/widget/Button;

.field private final retryListener:Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;

.field protected statusView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)V
    .locals 1
    .parameter "context"
    .parameter "retryListener"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->retryListener:Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;

    .line 125
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->context:Landroid/content/Context;

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;Lcom/google/android/youtube/core/ui/StatusHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/ui/StatusHelper;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)V

    return-void
.end method

.method public static createFromParent(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)Lcom/google/android/youtube/core/ui/StatusHelper;
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "retryListener"

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/youtube/core/ui/StatusHelper$ViewStatusHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/youtube/core/ui/StatusHelper$ViewStatusHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;Lcom/google/android/youtube/core/ui/StatusHelper$1;)V

    return-object v0
.end method


# virtual methods
.method protected abstract ensureHidden()V
.end method

.method protected abstract ensureVisible()V
.end method

.method getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->ensureHidden()V

    .line 70
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->statusView:Landroid/view/View;

    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->messageView:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->statusView:Landroid/view/View;

    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->progress:Landroid/widget/ProgressBar;

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->statusView:Landroid/view/View;

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->retryButton:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->statusView:Landroid/view/View;

    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->errorIcon:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->retryButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->ensureHidden()V

    .line 63
    return-void
.end method

.method isError()Z
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->errorIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isProgressVisible()Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRetryableError()Z
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->retryButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isVisible()Z
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->retryListener:Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;->onRetry()V

    .line 121
    return-void
.end method

.method public setErrorMessage(IZ)V
    .locals 1
    .parameter "messageResource"
    .parameter "canRetry"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/youtube/core/ui/StatusHelper;->setErrorMessage(Ljava/lang/String;Z)V

    .line 116
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;Z)V
    .locals 3
    .parameter "message"
    .parameter "canRetry"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->errorIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->retryButton:Landroid/widget/Button;

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->ensureVisible()V

    .line 106
    return-void

    :cond_0
    move v1, v2

    .line 102
    goto :goto_0
.end method

.method public setMessage(IZ)V
    .locals 1
    .parameter "messageResource"
    .parameter "hasProgress"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/youtube/core/ui/StatusHelper;->setMessage(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method public setMessage(Ljava/lang/String;Z)V
    .locals 2
    .parameter "message"
    .parameter "hasProgress"

    .prologue
    const/16 v1, 0x8

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->errorIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->retryButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->progress:Landroid/widget/ProgressBar;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/StatusHelper;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/StatusHelper;->ensureVisible()V

    .line 83
    return-void
.end method
