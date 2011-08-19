.class public Lcom/amazon/kcp/periodicals/ArticleListViewFactory;
.super Ljava/lang/Object;
.source "ArticleListViewFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArticleRow(Landroid/content/Context;Lcom/amazon/kcp/reader/models/IArticleTOCItem;Landroid/view/View;ILcom/amazon/kcp/reader/ui/color/AndroidColorMode;Landroid/graphics/Bitmap;Z)Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IArticleTOCItem;->getDescriptions()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 51
    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;

    if-eqz v0, :cond_1

    .line 53
    check-cast p2, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;

    move-object v0, p2

    .line 60
    :goto_1
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IArticleTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    move v3, p3

    move-object v4, p4

    move v5, p6

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;->initialize(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/kcp/reader/ui/color/AndroidColorMode;ZLandroid/graphics/Bitmap;)V

    .line 62
    return-object v0

    .line 57
    :cond_1
    const v0, 0x7f030004

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/periodicals/ui/ArticleListRowView;

    move-object v0, p0

    goto :goto_1
.end method

.method public static getFilteredSectionRow(Landroid/content/Context;Lcom/amazon/kcp/reader/models/ISectionTOCItem;Landroid/view/View;I)Lcom/amazon/kcp/periodicals/ui/SectionRowView;
    .locals 1
    .parameter "context"
    .parameter "section"
    .parameter "recyclableView"
    .parameter "textSize"

    .prologue
    .line 77
    const v0, 0x7f03001d

    invoke-static {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/periodicals/ArticleListViewFactory;->getSectionRow(Landroid/content/Context;Lcom/amazon/kcp/reader/models/ISectionTOCItem;Landroid/view/View;II)Lcom/amazon/kcp/periodicals/ui/SectionRowView;

    move-result-object v0

    return-object v0
.end method

.method private static getSectionRow(Landroid/content/Context;Lcom/amazon/kcp/reader/models/ISectionTOCItem;Landroid/view/View;II)Lcom/amazon/kcp/periodicals/ui/SectionRowView;
    .locals 3
    .parameter "context"
    .parameter "section"
    .parameter "recyclableView"
    .parameter "textSize"
    .parameter "layoutId"

    .prologue
    .line 105
    if-eqz p2, :cond_0

    instance-of v2, p2, Lcom/amazon/kcp/periodicals/ui/SectionRowView;

    if-eqz v2, :cond_0

    .line 107
    move-object v0, p2

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/SectionRowView;

    move-object v1, v0

    .line 114
    .local v1, sectionRow:Lcom/amazon/kcp/periodicals/ui/SectionRowView;
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/ISectionTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->setSectionTitle(Ljava/lang/String;)V

    .line 115
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/ISectionTOCItem;->getArticles()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->setNumArticles(I)V

    .line 117
    invoke-virtual {v1, p3}, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->setTextSize(I)V

    .line 119
    return-object v1

    .line 111
    .end local v1           #sectionRow:Lcom/amazon/kcp/periodicals/ui/SectionRowView;
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, p4, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/periodicals/ui/SectionRowView;

    .restart local v1       #sectionRow:Lcom/amazon/kcp/periodicals/ui/SectionRowView;
    goto :goto_0
.end method

.method public static getUnfilteredSectionRow(Landroid/content/Context;Lcom/amazon/kcp/reader/models/ISectionTOCItem;Landroid/view/View;IZ)Lcom/amazon/kcp/periodicals/ui/SectionRowView;
    .locals 3
    .parameter "context"
    .parameter "section"
    .parameter "recyclableView"
    .parameter "textSize"
    .parameter "showCount"

    .prologue
    const/16 v2, 0x8

    .line 92
    const v1, 0x7f03004b

    invoke-static {p0, p1, p2, p3, v1}, Lcom/amazon/kcp/periodicals/ArticleListViewFactory;->getSectionRow(Landroid/content/Context;Lcom/amazon/kcp/reader/models/ISectionTOCItem;Landroid/view/View;II)Lcom/amazon/kcp/periodicals/ui/SectionRowView;

    move-result-object v0

    .line 93
    .local v0, row:Lcom/amazon/kcp/periodicals/ui/SectionRowView;
    if-nez p4, :cond_0

    .line 95
    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    const v1, 0x7f0c00d4

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/SectionRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_0
    return-object v0
.end method
