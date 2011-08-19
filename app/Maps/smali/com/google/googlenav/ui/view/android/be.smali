.class public Lcom/google/googlenav/ui/view/android/be;
.super Lcom/google/googlenav/ui/view/android/bz;


# instance fields
.field private final c:Lcom/google/googlenav/ui/android/AndroidBubbleView;

.field private final d:LaF/a;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/googlenav/ui/android/AndroidBubbleView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/bz;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/be;->d:LaF/a;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/be;->c:Lcom/google/googlenav/ui/android/AndroidBubbleView;

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/be;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/be;->c:Lcom/google/googlenav/ui/android/AndroidBubbleView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidBubbleView;->a()V

    return-void
.end method

.method public a(LaF/a;Lcom/google/googlenav/ui/x;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/be;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget v0, p1, LaF/a;->a:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/be;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p1, LaF/a;->b:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/be;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/be;->d:LaF/a;

    iget v2, v2, LaF/a;->a:I

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/be;->d:LaF/a;

    iget v2, v2, LaF/a;->b:I

    if-ne v2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/be;->c:Lcom/google/googlenav/ui/android/AndroidBubbleView;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/AndroidBubbleView;->invalidate()V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/be;->d:LaF/a;

    invoke-virtual {v2, v0, v1}, LaF/a;->a(II)V

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/google/googlenav/ui/view/android/be;->a(IIII)V

    goto :goto_0
.end method
