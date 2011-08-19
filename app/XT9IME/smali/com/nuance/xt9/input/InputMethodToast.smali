.class public Lcom/nuance/xt9/input/InputMethodToast;
.super Ljava/lang/Object;
.source "InputMethodToast.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hide()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/nuance/xt9/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/nuance/xt9/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 33
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 6
    .parameter "context"
    .parameter "text"
    .parameter "duration"

    .prologue
    const/4 v5, 0x0

    .line 14
    sget-object v3, Lcom/nuance/xt9/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_0

    .line 15
    new-instance v3, Landroid/widget/Toast;

    invoke-direct {v3, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/nuance/xt9/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    .line 18
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 19
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v3, 0x7f030019

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 20
    .local v2, v:Landroid/view/View;
    const v3, 0x7f09002d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 21
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    sget-object v3, Lcom/nuance/xt9/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 24
    sget-object v3, Lcom/nuance/xt9/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 25
    sget-object v3, Lcom/nuance/xt9/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 27
    sget-object v3, Lcom/nuance/xt9/input/InputMethodToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 28
    return-void
.end method
