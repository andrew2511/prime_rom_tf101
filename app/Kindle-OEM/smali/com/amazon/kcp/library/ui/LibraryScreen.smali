.class public Lcom/amazon/kcp/library/ui/LibraryScreen;
.super Landroid/widget/FrameLayout;
.source "LibraryScreen.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const v3, 0x7f0c0076

    .line 33
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 37
    .local v0, today:Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x19

    if-gt v1, v2, :cond_0

    .line 41
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/library/ui/LibraryScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/library/ui/LibraryScreen;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/library/ui/SnowView;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/SnowView;->startSnowing()V

    .line 48
    :goto_0
    return-void

    .line 46
    .restart local p0
    :cond_0
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/library/ui/LibraryScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/ui/LibraryScreen;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
