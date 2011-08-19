.class public Lcom/amazon/kcp/periodicals/ui/SectionRowView;
.super Landroid/widget/LinearLayout;
.source "SectionRowView.java"


# static fields
.field private static final DEFAULT_ARTICLE_COUNT_SCALE_FACTOR:F = 1.0f


# instance fields
.field private final articleSizeRatio:F

.field private articles:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    sget-object v1, Lcom/amazon/kindle/R$styleable;->FontAttributes:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, attributes:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->articleSizeRatio:F

    .line 48
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 96
    const v0, 0x7f0c0069

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->articles:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->articles:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "Requires a TextView with id R.id.section_row_articles"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    const v0, 0x7f0c0068

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->title:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->title:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "Requires a TextView with id R.id.section_row_title"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    return-void
.end method

.method public setNumArticles(I)V
    .locals 6
    .parameter "numArticles"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 69
    if-gtz p1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->articles:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->articles:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    if-ne p1, v3, :cond_1

    const v1, 0x7f0b00d0

    move v0, v1

    .line 78
    .local v0, stringId:I
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->articles:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    .end local v0           #stringId:I
    :cond_1
    const v1, 0x7f0b00d1

    move v0, v1

    goto :goto_1
.end method

.method public setSectionTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "sectionTitle"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->title:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public setTextSize(I)V
    .locals 4
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->title:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->articles:Landroid/widget/TextView;

    int-to-float v1, p1

    iget v2, p0, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->articleSizeRatio:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    return-void
.end method
