.class public Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;
.super Lcom/google/googlenav/ui/android/TemplateView;


# static fields
.field private static final j:I


# instance fields
.field private a:Landroid/widget/TextView;

.field private i:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lac/m;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private c(Lcom/google/googlenav/ui/bx;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030130

    iget-object v2, p0, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v2, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->j:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->b(Lcom/google/googlenav/ui/bx;)V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/TemplateViewWithRichSearchResult;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/ui/bx;)I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->w:Lcom/google/googlenav/ui/aI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->w:Lcom/google/googlenav/ui/aI;

    iget-object v2, p1, Lcom/google/googlenav/ui/bx;->y:Lx/U;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/aI;Lx/U;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/googlenav/ui/bx;->H:[Lcom/google/googlenav/ui/bx;

    array-length v0, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bx;)I

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    move v0, v3

    :goto_1
    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->H:[Lcom/google/googlenav/ui/bx;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->H:[Lcom/google/googlenav/ui/bx;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->c(Lcom/google/googlenav/ui/bx;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method protected a(Lcom/google/googlenav/ui/bx;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->a(Lcom/google/googlenav/ui/bx;IZ)I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->onFinishInflate()V

    const v0, 0x7f0f0024

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->a:Landroid/widget/TextView;

    const v0, 0x7f0f0231

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewForRelatedPlaces;->i:Landroid/view/ViewGroup;

    return-void
.end method
