.class public Lcom/amazon/kcp/periodicals/ui/ArticlesView;
.super Landroid/widget/ScrollView;
.source "ArticlesView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;
    }
.end annotation


# static fields
.field private static final DEF_MAX_NUM_COLUMNS:I = 0x1

.field private static final SECTION_TAG_PREFIX:Ljava/lang/String; = "sectionIndex"


# instance fields
.field private articleRowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;",
            ">;"
        }
    .end annotation
.end field

.field private bookState:Lcom/amazon/kcp/library/models/LocalBookState;

.field private bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;

.field private initialSectionIndex:I

.field private lastArticleRow:Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;

.field private list:Landroid/widget/LinearLayout;

.field private mastHeadDateView:Landroid/widget/TextView;

.field private mastHeadImageView:Landroid/widget/ImageView;

.field private mastHeadTextView:Landroid/widget/TextView;

.field private final numColumns:I

.field private sectionClickedEvent:Lcom/amazon/foundation/internal/IntEventProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v1, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->sectionClickedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 48
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->articleRowList:Ljava/util/List;

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->initialSectionIndex:I

    .line 57
    sget-object v1, Lcom/amazon/kindle/R$styleable;->ArticleListAttributes:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, attributes:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->numColumns:I

    .line 60
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->setSmoothScrollingEnabled(Z)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/ui/ArticlesView;)Lcom/amazon/foundation/internal/IntEventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->sectionClickedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method private static getSectionIndexFromTag(Ljava/lang/Object;)I
    .locals 3
    .parameter

    .prologue
    .line 422
    const/4 v0, -0x1

    .line 424
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 426
    check-cast p0, Ljava/lang/String;

    .line 427
    const-string v1, "sectionIndex"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    :try_start_0
    const-string v1, "sectionIndex"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 435
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad section tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static getTagForSectionIndex(I)Ljava/lang/Object;
    .locals 2
    .parameter "sectionIndex"

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sectionIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasBeenRead(Lcom/amazon/kcp/reader/models/IArticleTOCItem;)Z
    .locals 2
    .parameter "article"

    .prologue
    .line 311
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->bookState:Lcom/amazon/kcp/library/models/LocalBookState;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookTOC;->getTOCArticles()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/LocalBookState;->isArticleRead(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static refreshMastHead(Landroid/view/View;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V
    .locals 1
    .parameter "mastHead"
    .parameter "colorMode"

    .prologue
    .line 218
    const v0, 0x7f0c0098

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->refreshMastHeadImage(Landroid/widget/ImageView;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    .line 219
    const v0, 0x7f0c009a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->refreshMastHeadDate(Landroid/widget/TextView;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    .line 220
    const v0, 0x7f0c0099

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->refreshMastHeadText(Landroid/widget/TextView;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    .line 221
    return-void
.end method

.method private refreshMastHead(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V
    .locals 1
    .parameter "colorMode"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->mastHeadImageView:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->refreshMastHeadImage(Landroid/widget/ImageView;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    .line 230
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->mastHeadDateView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->refreshMastHeadDate(Landroid/widget/TextView;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->mastHeadTextView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->refreshMastHeadText(Landroid/widget/TextView;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    .line 232
    return-void
.end method

.method private static refreshMastHeadDate(Landroid/widget/TextView;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V
    .locals 1
    .parameter "mastHeadDate"
    .parameter "colorMode"

    .prologue
    .line 297
    if-eqz p0, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    :cond_0
    return-void
.end method

.method private static refreshMastHeadImage(Landroid/widget/ImageView;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V
    .locals 3
    .parameter "mastHeadView"
    .parameter "colorMode"

    .prologue
    .line 241
    if-eqz p0, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->hasDarkBackground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    const/16 v2, 0x14

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    .line 266
    .local v1, mx:[F
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v0, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 273
    .end local v1           #mx:[F
    .local v0, cf:Landroid/graphics/ColorFilter;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 275
    .end local v0           #cf:Landroid/graphics/ColorFilter;
    :cond_0
    return-void

    .line 271
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #cf:Landroid/graphics/ColorFilter;
    goto :goto_0

    .line 258
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static refreshMastHeadText(Landroid/widget/TextView;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V
    .locals 1
    .parameter "mastHeadText"
    .parameter "colorMode"

    .prologue
    .line 284
    if-eqz p0, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    :cond_0
    return-void
.end method


# virtual methods
.method public addArticle(Lcom/amazon/kcp/reader/models/IArticleTOCItem;ILcom/amazon/kcp/reader/ui/color/AndroidColorMode;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->lastArticleRow:Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->lastArticleRow:Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->list:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->lastArticleRow:Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->hasBeenRead(Lcom/amazon/kcp/reader/models/IArticleTOCItem;)Z

    move-result v6

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/periodicals/ArticleListViewFactory;->getArticleRow(Landroid/content/Context;Lcom/amazon/kcp/reader/models/IArticleTOCItem;Landroid/view/View;ILcom/amazon/kcp/reader/ui/color/AndroidColorMode;Landroid/graphics/Bitmap;Z)Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->setItem(Lcom/amazon/kcp/reader/models/IArticleTOCItem;)V

    .line 169
    new-instance v1, Lcom/amazon/kcp/periodicals/ui/ArticlesView$2;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$2;-><init>(Lcom/amazon/kcp/periodicals/ui/ArticlesView;Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->numColumns:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 181
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->lastArticleRow:Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;

    invoke-virtual {v2, v0, v1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->articleRowList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->lastArticleRow:Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->numColumns:I

    if-lt v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->lastArticleRow:Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;->turnBottomBordersOn()V

    .line 152
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->lastArticleRow:Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->list:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->lastArticleRow:Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public addMastHead(Landroid/view/View;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V
    .locals 1
    .parameter "mastHeadView"
    .parameter "colorMode"

    .prologue
    .line 83
    const v0, 0x7f0c0098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->mastHeadImageView:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f0c009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->mastHeadDateView:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0c0099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->mastHeadTextView:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    invoke-direct {p0, p2}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->refreshMastHead(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    .line 88
    return-void
.end method

.method public addMastHeadDate(Landroid/view/View;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V
    .locals 1
    .parameter "dateView"
    .parameter "colorMode"

    .prologue
    .line 97
    const v0, 0x7f0c0097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->mastHeadDateView:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->mastHeadDateView:Landroid/widget/TextView;

    invoke-static {v0, p2}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->refreshMastHeadDate(Landroid/widget/TextView;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    .line 100
    return-void
.end method

.method public addSection(Lcom/amazon/kcp/reader/models/ISectionTOCItem;IIZ)V
    .locals 3
    .parameter "section"
    .parameter "sectionIndex"
    .parameter "fontSize"
    .parameter "showCount"

    .prologue
    const/4 v2, 0x0

    .line 111
    iput-object v2, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->lastArticleRow:Lcom/amazon/kcp/periodicals/ui/ArticlesView$RowWithBorders;

    .line 112
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v2, p3, p4}, Lcom/amazon/kcp/periodicals/ArticleListViewFactory;->getUnfilteredSectionRow(Landroid/content/Context;Lcom/amazon/kcp/reader/models/ISectionTOCItem;Landroid/view/View;IZ)Lcom/amazon/kcp/periodicals/ui/SectionRowView;

    move-result-object v0

    .line 117
    .local v0, secView:Lcom/amazon/kcp/periodicals/ui/SectionRowView;
    invoke-static {p2}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->getTagForSectionIndex(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->setTag(Ljava/lang/Object;)V

    .line 119
    if-eqz p4, :cond_0

    .line 121
    new-instance v1, Lcom/amazon/kcp/periodicals/ui/ArticlesView$1;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$1;-><init>(Lcom/amazon/kcp/periodicals/ui/ArticlesView;I)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method public getIndexOfTopVisibleSection()I
    .locals 7

    .prologue
    .line 459
    iget v5, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->initialSectionIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 461
    iget v5, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->initialSectionIndex:I

    .line 481
    :goto_0
    return v5

    .line 464
    :cond_0
    const/4 v4, -0x1

    .line 465
    .local v4, sectionIndex:I
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->getScrollY()I

    move-result v2

    .line 466
    .local v2, currentTopOfVisibleRegion:I
    const v1, 0x7fffffff

    .line 468
    .local v1, currentBestDistance:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v5, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 470
    iget-object v5, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 471
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/amazon/kcp/periodicals/ui/SectionRowView;

    if-eqz v5, :cond_1

    .line 473
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v1, :cond_1

    .line 475
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v1, v2, v5

    .line 476
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->getSectionIndexFromTag(Ljava/lang/Object;)I

    move-result v4

    .line 468
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    :cond_2
    move v5, v4

    .line 481
    goto :goto_0
.end method

.method public getSectionClickedEvent()Lcom/amazon/foundation/internal/IntEventProvider;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->sectionClickedEvent:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public initialize(Lcom/amazon/kcp/library/models/LocalBookState;Lcom/amazon/kcp/reader/models/IBookTOC;)V
    .locals 0
    .parameter "bookState"
    .parameter "bookTOC"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->bookState:Lcom/amazon/kcp/library/models/LocalBookState;

    .line 66
    iput-object p2, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;

    .line 67
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 73
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->list:Landroid/widget/LinearLayout;

    .line 74
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 385
    invoke-static {p1}, Lcom/amazon/android/system/io/PointerCountReflect;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    .line 390
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 519
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->initialSectionIndex:I

    .line 520
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 493
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 497
    iget v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->initialSectionIndex:I

    .line 498
    .local v1, sectionIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 501
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$3;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView$3;-><init>(Lcom/amazon/kcp/periodicals/ui/ArticlesView;I)V

    .line 506
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v2, Lcom/amazon/android/system/AndroidUtilities;

    invoke-direct {v2}, Lcom/amazon/android/system/AndroidUtilities;-><init>()V

    invoke-virtual {v2, v0}, Lcom/amazon/android/system/AndroidUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 508
    .end local v0           #runnable:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public refresh(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;I)V
    .locals 3
    .parameter "colorMode"
    .parameter "fontSize"

    .prologue
    .line 204
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->articleRowList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;

    .line 206
    .local v0, artView:Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->getItem()Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->hasBeenRead(Lcom/amazon/kcp/reader/models/IArticleTOCItem;)Z

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->doTextStyling(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;IZ)V

    goto :goto_0

    .line 208
    .end local v0           #artView:Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->refreshMastHead(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    .line 209
    return-void
.end method

.method public scrollToSection(I)V
    .locals 4
    .parameter "sectionIndex"

    .prologue
    .line 403
    iget v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->initialSectionIndex:I

    .line 404
    .local v1, temp:I
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->list:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->list:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->getTagForSectionIndex(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, section:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->smoothScrollTo(II)V

    .line 412
    .end local v0           #section:Landroid/view/View;
    :cond_0
    iput v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->initialSectionIndex:I

    .line 413
    return-void
.end method

.method public setInitialSectionIndex(I)V
    .locals 0
    .parameter "sectionIndex"

    .prologue
    .line 449
    iput p1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->initialSectionIndex:I

    .line 450
    return-void
.end method
