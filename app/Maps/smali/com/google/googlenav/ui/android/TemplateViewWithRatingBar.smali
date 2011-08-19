.class public Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;
.super Lcom/google/googlenav/ui/android/TemplateView;


# instance fields
.field protected a:[Landroid/widget/ImageView;

.field private i:Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->a:[Landroid/widget/ImageView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->a:[Landroid/widget/ImageView;

    return-void
.end method

.method private static a(Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x2

    const v0, 0x7f0f0007

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    move v1, v5

    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f0f034f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->a:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->a:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-le p1, v0, :cond_0

    const v2, 0x7f02032d

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7f02032b

    goto :goto_1

    :cond_1
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/bx;)V
    .locals 3

    const v2, 0x7f0201b0

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    iget v0, p1, Lcom/google/googlenav/ui/bx;->F:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->a(I)V

    iget v0, p1, Lcom/google/googlenav/ui/bx;->r:I

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->i:Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->a(Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->i:Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->i:Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->setVisibility(I)V

    return-void

    :cond_1
    iget v0, p1, Lcom/google/googlenav/ui/bx;->r:I

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->i:Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->a(Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->i:Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->a:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f0f032a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->a:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f0f032b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->a:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f0f032c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->a:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f0f032d

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->a:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    const v0, 0x7f0f032e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    const v0, 0x7f0f021e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;->i:Lcom/google/googlenav/ui/android/TemplateViewWithRatingBar;

    return-void
.end method
