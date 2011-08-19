.class Lcom/google/android/apps/circles/people/a;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/apps/circles/people/MultiLineLayout;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/circles/people/MultiLineLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/circles/people/a;->a:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/circles/people/MultiLineLayout;Lcom/google/android/apps/circles/people/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/circles/people/a;-><init>(Lcom/google/android/apps/circles/people/MultiLineLayout;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 13

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/google/android/apps/circles/people/a;->a:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingLeft()I

    move-result v6

    iget-object v0, p0, Lcom/google/android/apps/circles/people/a;->a:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingTop()I

    move-result v7

    iget-object v0, p0, Lcom/google/android/apps/circles/people/a;->a:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/circles/people/a;->a:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/circles/people/a;->a:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/google/android/apps/circles/people/a;->a:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v3}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingRight()I

    move-result v3

    sub-int v8, v2, v3

    iget-object v2, p0, Lcom/google/android/apps/circles/people/a;->a:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getChildCount()I

    move-result v9

    move v10, v12

    move v2, v0

    move v3, v12

    move v0, v1

    :goto_0
    if-ge v10, v9, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/circles/people/a;->a:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v1, v10}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    move v1, v2

    move v2, v3

    :goto_1
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/apps/circles/people/a;->a(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v11, v2, v4

    if-le v11, v8, :cond_2

    iget-object v2, p0, Lcom/google/android/apps/circles/people/a;->a:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v3, v7

    add-int/2addr v0, v3

    move v3, v0

    move v11, v12

    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/circles/people/a;->a(Landroid/view/View;IIII)V

    add-int v0, v4, v6

    add-int/2addr v0, v2

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    move v1, v0

    move v0, v3

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    move v11, v3

    move v3, v0

    goto :goto_2
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/View;IIII)V
    .locals 0

    return-void
.end method
