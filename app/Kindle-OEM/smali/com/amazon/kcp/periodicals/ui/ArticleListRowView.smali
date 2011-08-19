.class public Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;
.super Landroid/widget/LinearLayout;
.source "ArticleListRowView.java"


# instance fields
.field private item:Lcom/amazon/kcp/reader/models/IArticleTOCItem;

.field private previewText:Ljava/lang/String;

.field private text:Landroid/widget/TextView;

.field private thumbnail:Landroid/widget/ImageView;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x2

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->text:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->text:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->text:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->text:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->text:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->addView(Landroid/view/View;)V

    .line 61
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->thumbnail:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->thumbnail:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->thumbnail:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method


# virtual methods
.method public doTextStyling(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;IZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 106
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->previewText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 112
    if-eqz p3, :cond_0

    .line 114
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getSecondaryTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->text:Landroid/widget/TextView;

    int-to-float v3, p2

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 123
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 124
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 125
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public getItem()Lcom/amazon/kcp/reader/models/IArticleTOCItem;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->item:Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    return-object v0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/kcp/reader/ui/color/AndroidColorMode;ZLandroid/graphics/Bitmap;)V
    .locals 4
    .parameter "title"
    .parameter "preview"
    .parameter "textSize"
    .parameter "colorMode"
    .parameter "isRead"
    .parameter "thumbnail"

    .prologue
    const/4 v3, 0x0

    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->title:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->previewText:Ljava/lang/String;

    .line 86
    invoke-virtual {p0, p4, p3, p5}, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->doTextStyling(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;IZ)V

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, p6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    if-nez p6, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->thumbnail:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->text:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->thumbnail:Landroid/widget/ImageView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setItem(Lcom/amazon/kcp/reader/models/IArticleTOCItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->item:Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    .line 133
    return-void
.end method
