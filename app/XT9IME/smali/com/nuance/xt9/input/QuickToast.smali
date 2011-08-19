.class public Lcom/nuance/xt9/input/QuickToast;
.super Ljava/lang/Object;
.source "QuickToast.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/xt9/input/QuickToast;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hide()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/nuance/xt9/input/QuickToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/nuance/xt9/input/QuickToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 26
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 3
    .parameter "context"
    .parameter "text"
    .parameter "duration"
    .parameter "offsetY"

    .prologue
    const/4 v2, 0x0

    .line 11
    sget-object v0, Lcom/nuance/xt9/input/QuickToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 12
    const-string v0, ""

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/nuance/xt9/input/QuickToast;->mToast:Landroid/widget/Toast;

    .line 14
    :cond_0
    sget-object v0, Lcom/nuance/xt9/input/QuickToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 16
    sget-object v0, Lcom/nuance/xt9/input/QuickToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 17
    sget-object v0, Lcom/nuance/xt9/input/QuickToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 18
    sget-object v0, Lcom/nuance/xt9/input/QuickToast;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v2, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 20
    sget-object v0, Lcom/nuance/xt9/input/QuickToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 21
    return-void
.end method
