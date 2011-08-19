.class public Lcom/asus/reader/book/BookmarkUtility;
.super Ljava/lang/Object;
.source "BookmarkUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;
    }
.end annotation


# static fields
.field public static final EpubLandParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

.field public static final EpubPortParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-wide v7, -0x3fa9800000000000L

    const-wide/high16 v3, -0x3fc2

    const-wide/high16 v1, 0x3ff0

    .line 691
    new-instance v0, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    move-wide v5, v1

    invoke-direct/range {v0 .. v8}, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;-><init>(DDDD)V

    sput-object v0, Lcom/asus/reader/book/BookmarkUtility;->EpubLandParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    .line 692
    new-instance v0, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    move-wide v5, v1

    invoke-direct/range {v0 .. v8}, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;-><init>(DDDD)V

    sput-object v0, Lcom/asus/reader/book/BookmarkUtility;->EpubPortParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    return-void
.end method

.method public static addHighlight(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "startBookmark"
    .parameter "endBookmark"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/asus/reader/book/BookSurfaceView;->addHighlightNative(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBookLang(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "bookId"

    .prologue
    .line 665
    invoke-static {p0, p1}, Lcom/asus/reader/util/ReaderDatabaseUtils;->getLocaleFromBookId(Landroid/content/Context;I)Ljava/util/Locale;

    move-result-object v1

    .line 666
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, language:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 670
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    :cond_0
    return-object v0
.end method

.method public static getBoundingBox(ZILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "mIsLandscape"
    .parameter "mPageNo"
    .parameter "startBookmark"
    .parameter "endBookmark"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 165
    if-eqz p0, :cond_0

    sget-object v1, Lcom/asus/reader/book/BookmarkUtility;->EpubLandParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    move-object v0, v1

    .line 166
    .local v0, param:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;
    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 165
    .end local v0           #param:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;
    :cond_0
    sget-object v1, Lcom/asus/reader/book/BookmarkUtility;->EpubPortParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    move-object v0, v1

    goto :goto_0
.end method

.method public static getBoundingBox(ZILjava/lang/String;Ljava/lang/String;Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;)Ljava/util/List;
    .locals 6
    .parameter "mIsLandscape"
    .parameter "mPageNo"
    .parameter "startBookmark"
    .parameter "endBookmark"
    .parameter "param"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBoundingBox(ZILjava/lang/String;Ljava/lang/String;Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;Z)Ljava/util/List;
    .locals 11
    .parameter "mIsLandscape"
    .parameter "mPageNo"
    .parameter "startBookmark"
    .parameter "endBookmark"
    .parameter "param"
    .parameter "callBySelf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p0, :cond_0

    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x280

    move v3, v0

    .line 115
    .local v3, landscapeRightAdjust:I
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/asus/reader/book/BookSurfaceView;->getBoundingBoxNative(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 120
    .local v0, boundingBoxes:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 121
    move-object v0, v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 123
    .local v1, boundingBox:Ljava/lang/String;
    invoke-static {v1}, Lcom/asus/reader/book/BookmarkUtility;->processParameters(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 125
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "x1"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 126
    .local v7, x1:D
    iget-wide v9, p4, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->scaleX:D

    div-double/2addr v7, v9

    iget-wide v9, p4, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->adjustX:D

    .end local v7           #x1:D
    sub-double/2addr v7, v9

    int-to-double v9, v3

    add-double/2addr v7, v9

    .line 127
    .restart local v7       #x1:D
    const-string v5, "x1"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v5, "x1"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    .end local v7           #x1:D
    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v5, "y1"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 131
    .local v7, y1:D
    iget-wide v9, p4, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->scaleY:D

    div-double/2addr v7, v9

    iget-wide v9, p4, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->adjustY:D

    .end local v7           #y1:D
    sub-double/2addr v7, v9

    .line 132
    .restart local v7       #y1:D
    const-string v5, "y1"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v5, "y1"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    .end local v7           #y1:D
    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v5, "x2"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 136
    .local v7, x2:D
    iget-wide v9, p4, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->scaleX:D

    div-double/2addr v7, v9

    iget-wide v9, p4, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->adjustX:D

    .end local v7           #x2:D
    sub-double/2addr v7, v9

    int-to-double v9, v3

    add-double/2addr v7, v9

    .line 137
    .restart local v7       #x2:D
    const-string v5, "x2"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v5, "x2"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    .end local v7           #x2:D
    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v5, "y2"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 141
    .local v7, y2:D
    iget-wide v9, p4, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->scaleY:D

    div-double/2addr v7, v9

    iget-wide v9, p4, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->adjustY:D

    .end local v7           #y2:D
    sub-double/2addr v7, v9

    .line 142
    .restart local v7       #y2:D
    const-string v5, "y2"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v5, "y2"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    .end local v7           #y2:D
    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i$:I
    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .restart local v2       #i$:I
    goto/16 :goto_1

    .line 113
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #landscapeRightAdjust:I
    .end local v4           #len$:I
    :cond_0
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_0

    .line 149
    .restart local v3       #landscapeRightAdjust:I
    :cond_1
    if-nez p5, :cond_2

    if-eqz p0, :cond_2

    .line 150
    rem-int/lit8 p5, p1, 0x2

    .end local p5
    if-nez p5, :cond_3

    add-int/lit8 p1, p1, 0x1

    move v1, p1

    .line 151
    .end local p1
    .local v1, otherPage:I
    :goto_2
    const/4 v5, 0x1

    move v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;Z)Ljava/util/List;

    .end local v3           #landscapeRightAdjust:I
    move-result-object p0

    .line 152
    .local p0, otherList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v6, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    .end local v1           #otherPage:I
    .end local p0           #otherList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    return-object v6

    .line 150
    .restart local v3       #landscapeRightAdjust:I
    .local p0, mIsLandscape:Z
    .restart local p1
    :cond_3
    const/16 p5, 0x1

    sub-int p1, p1, p5

    move v1, p1

    goto :goto_2
.end method

.method public static getHighlightInPage(IIII)Ljava/util/List;
    .locals 11
    .parameter "startPage"
    .parameter "endPage"
    .parameter "mode"
    .parameter "color"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/asus/reader/book/BookSurfaceView;->getHighlightInPageNative(IIII)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 224
    .local v3, highlights:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 225
    move-object v1, v3

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 226
    .local v2, highlight:Ljava/lang/String;
    const-string v8, "BookmarkUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getHighlightInPage highlight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 228
    invoke-static {v2}, Lcom/asus/reader/book/BookmarkUtility;->processParameters(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 229
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "BookmarkUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getHighlightInPage map: index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "index"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " start="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "start"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " end="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "end"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " color="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "color"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 234
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #highlight:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    return-object v6
.end method

.method public static getHighlightText(I)Ljava/lang/String;
    .locals 1
    .parameter "highlightIndex"

    .prologue
    .line 48
    invoke-static {p0}, Lcom/asus/reader/book/BookSurfaceView;->getHighlightTextNative(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPageLocation(I)Ljava/lang/String;
    .locals 1
    .parameter "pageNo"

    .prologue
    .line 519
    invoke-static {p0}, Lcom/asus/reader/book/BookSurfaceView;->getPageLocationNative(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPageText(I)Ljava/lang/String;
    .locals 1
    .parameter "wantedPage"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/asus/reader/book/BookSurfaceView;->getPageTextNative(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/asus/reader/book/BookSurfaceView;->getSelectedTextNative()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSentenceLoc([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 2
    .parameter "parsedData"
    .parameter "type"
    .parameter "index"

    .prologue
    .line 608
    packed-switch p1, :pswitch_data_0

    .line 621
    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .line 612
    .restart local p0
    :pswitch_0
    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, v0}, Lcom/asus/reader/book/BookSurfaceView;->getSentenceLocNative([Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 615
    .restart local p0
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/asus/reader/book/BookSurfaceView;->getSentenceLocNative([Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 618
    .restart local p0
    :pswitch_2
    neg-int v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/asus/reader/book/BookSurfaceView;->getSentenceLocNative([Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static handleSelectionEvent(DDIZI)I
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "eventType"
    .parameter "mIsLandscape"
    .parameter "mPageNo"

    .prologue
    .line 378
    const/16 v0, 0x253

    .line 379
    .local v0, LANDSCAPE_Y_BOUND:I
    const/16 v0, 0x424

    .line 381
    .local v0, PORTRAIT_Y_BOUND:I
    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    .line 382
    .end local v0           #PORTRAIT_Y_BOUND:I
    invoke-static {}, Lcom/asus/reader/book/BookSurfaceView;->clearSelectionNative()V

    .line 383
    const/4 p0, -0x1

    .line 412
    .end local p0
    .end local p2
    .end local p5
    :goto_0
    return p0

    .line 386
    .restart local p0
    .restart local p2
    .restart local p5
    :cond_0
    move v5, p6

    .line 389
    .local v5, touchedPage:I
    if-eqz p5, :cond_4

    .line 391
    sget-object p5, Lcom/asus/reader/book/BookmarkUtility;->EpubLandParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    .end local p5
    iget-wide v0, p5, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->adjustY:D

    add-double/2addr p2, v0

    sget-object p5, Lcom/asus/reader/book/BookmarkUtility;->EpubLandParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    .end local p2
    iget-wide v0, p5, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->scaleY:D

    mul-double v2, p2, v0

    .line 392
    .local v2, mappingY:D
    const-wide p2, 0x4082980000000000L

    cmpl-double p2, v2, p2

    if-lez p2, :cond_1

    const-wide p2, 0x4082980000000000L

    move-wide v2, p2

    .line 394
    :cond_1
    const-wide/high16 p2, 0x4084

    cmpg-double p2, p0, p2

    if-gez p2, :cond_3

    .line 395
    sget-object p2, Lcom/asus/reader/book/BookmarkUtility;->EpubLandParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    iget-wide p2, p2, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->adjustX:D

    add-double/2addr p0, p2

    sget-object p2, Lcom/asus/reader/book/BookmarkUtility;->EpubLandParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    .end local p0
    iget-wide p2, p2, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->scaleX:D

    mul-double v0, p0, p2

    .line 396
    .local v0, mappingX:D
    rem-int/lit8 p0, p6, 0x2

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    add-int/lit8 v5, v5, -0x1

    :cond_2
    :goto_1
    move v4, p4

    .line 410
    invoke-static/range {v0 .. v5}, Lcom/asus/reader/book/BookmarkUtility;->rmsdkSelectionEvent(DDII)V

    move p0, v5

    .line 412
    goto :goto_0

    .line 400
    .end local v0           #mappingX:D
    .restart local p0
    :cond_3
    sget-object p2, Lcom/asus/reader/book/BookmarkUtility;->EpubLandParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    iget-wide p2, p2, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->adjustX:D

    add-double/2addr p0, p2

    const-wide p2, 0x4084300000000000L

    sub-double/2addr p0, p2

    sget-object p2, Lcom/asus/reader/book/BookmarkUtility;->EpubLandParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    .end local p0
    iget-wide p2, p2, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->scaleX:D

    mul-double v0, p0, p2

    .line 401
    .restart local v0       #mappingX:D
    rem-int/lit8 p0, p6, 0x2

    if-nez p0, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 405
    .end local v0           #mappingX:D
    .end local v2           #mappingY:D
    .restart local p0
    .restart local p2
    .restart local p5
    :cond_4
    sget-object p5, Lcom/asus/reader/book/BookmarkUtility;->EpubPortParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    .end local p5
    iget-wide p5, p5, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->adjustX:D

    add-double/2addr p0, p5

    sget-object p5, Lcom/asus/reader/book/BookmarkUtility;->EpubPortParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    .end local p0
    iget-wide p5, p5, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->scaleX:D

    mul-double v0, p0, p5

    .line 406
    .restart local v0       #mappingX:D
    sget-object p0, Lcom/asus/reader/book/BookmarkUtility;->EpubPortParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    iget-wide p0, p0, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->adjustY:D

    add-double/2addr p0, p2

    sget-object p2, Lcom/asus/reader/book/BookmarkUtility;->EpubPortParam:Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;

    .end local p2
    iget-wide p2, p2, Lcom/asus/reader/book/BookmarkUtility$CoordinateMappingParam;->scaleY:D

    mul-double v2, p0, p2

    .line 407
    .restart local v2       #mappingY:D
    const-wide p0, 0x4090900000000000L

    cmpl-double p0, v2, p0

    if-lez p0, :cond_5

    const-wide p0, 0x4090900000000000L

    move-wide v2, p0

    :cond_5
    goto :goto_1
.end method

.method public static handleSelectionEvent(Landroid/view/MotionEvent;IZI)I
    .locals 7
    .parameter "event"
    .parameter "eventType"
    .parameter "mIsLandscape"
    .parameter "mPageNo"

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-double v2, v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(DDIZI)I

    move-result v0

    return v0
.end method

.method private static isCjkCharacter(C)Z
    .locals 10
    .parameter "c"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 481
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    .line 483
    .local v1, charBlock:Ljava/lang/Character$UnicodeBlock;
    const/16 v6, 0x9

    new-array v3, v6, [Ljava/lang/Character$UnicodeBlock;

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    aput-object v6, v3, v8

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    aput-object v6, v3, v9

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    aput-object v7, v3, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    aput-object v7, v3, v6

    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    aput-object v7, v3, v6

    const/4 v6, 0x5

    sget-object v7, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    aput-object v7, v3, v6

    const/4 v6, 0x6

    sget-object v7, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    aput-object v7, v3, v6

    const/4 v6, 0x7

    sget-object v7, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    aput-object v7, v3, v6

    const/16 v6, 0x8

    sget-object v7, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    aput-object v7, v3, v6

    .line 494
    .local v3, cjkBlocks:[Ljava/lang/Character$UnicodeBlock;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/Character$UnicodeBlock;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 495
    .local v2, cjkBlock:Ljava/lang/Character$UnicodeBlock;
    if-ne v1, v2, :cond_0

    move v6, v9

    .line 498
    .end local v2           #cjkBlock:Ljava/lang/Character$UnicodeBlock;
    :goto_1
    return v6

    .line 494
    .restart local v2       #cjkBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2           #cjkBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_1
    move v6, v8

    .line 498
    goto :goto_1
.end method

.method public static processParameters(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .parameter "remainder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x3d

    const/4 v10, 0x0

    .line 172
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v2, pairs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 175
    .local v3, st:Ljava/util/StringTokenizer;
    const-string v5, ""

    .line 176
    .local v5, tokenBuffer:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 177
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 180
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 182
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, token:Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 186
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 187
    .local v0, index:I
    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v7, "BookmarkUtility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processParameters put: key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move-object v5, v4

    .line 193
    goto :goto_0

    .line 194
    .end local v0           #index:I
    .end local v1           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_1
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 197
    .end local v4           #token:Ljava/lang/String;
    :cond_2
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 199
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 200
    .restart local v0       #index:I
    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 201
    .restart local v1       #key:Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 202
    .restart local v6       #value:Ljava/lang/String;
    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v7, "BookmarkUtility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processParameters put: key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v0           #index:I
    .end local v1           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method public static removeHighlight(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/asus/reader/book/BookSurfaceView;->removeHighlightNative(I)V

    .line 85
    return-void
.end method

.method public static rmsdkSelectionEvent(DDII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "eventType"
    .parameter "mPageNo"

    .prologue
    .line 417
    packed-switch p4, :pswitch_data_0

    .line 478
    .end local p0
    .end local p2
    .end local p4
    .end local p5
    :cond_0
    :goto_0
    return-void

    .line 420
    .restart local p0
    .restart local p2
    .restart local p4
    .restart local p5
    :pswitch_0
    invoke-static {}, Lcom/asus/reader/book/BookSurfaceView;->clearSelectionNative()V

    .line 421
    invoke-static {p0, p1, p2, p3, p5}, Lcom/asus/reader/book/BookSurfaceView;->getPositionTextNative(DDI)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object p5, v0

    .line 422
    .local p5, returnText:[Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 424
    const/4 p0, 0x1

    aget-object p0, p5, p0

    .line 426
    .local p0, beforeText:Ljava/lang/String;
    const/16 p1, 0x20

    .line 427
    .local p1, previousChar:C
    const/4 p2, 0x2

    aget-object p2, p5, p2

    .end local p2
    if-eqz p2, :cond_a

    const/4 p2, 0x2

    aget-object p2, p5, p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    const/4 p1, 0x2

    aget-object p1, p5, p1

    .end local p1           #previousChar:C
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .restart local p1       #previousChar:C
    move p2, p1

    .line 428
    .end local p1           #previousChar:C
    .local p2, previousChar:C
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    .local p1, breakPoint:I
    move p3, p2

    .end local p2           #previousChar:C
    .end local p4
    .local p3, previousChar:C
    :goto_2
    if-ltz p1, :cond_1

    .line 429
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 430
    .local p2, currentChar:C
    invoke-static {p2}, Ljava/lang/Character;->isLetter(C)Z

    move-result p4

    if-nez p4, :cond_3

    .line 441
    .end local p2           #currentChar:C
    .end local p3           #previousChar:C
    :cond_1
    :goto_3
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .end local p1           #breakPoint:I
    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 443
    .end local p0           #beforeText:Ljava/lang/String;
    .local p1, beforeText:Ljava/lang/String;
    const/4 p0, 0x2

    aget-object p0, p5, p0

    .line 444
    .local p0, afterText:Ljava/lang/String;
    const/16 p2, 0x20

    .line 445
    .local p2, previousChar:C
    const/4 p3, 0x1

    aget-object p3, p5, p3

    if-eqz p3, :cond_9

    const/4 p3, 0x1

    aget-object p3, p5, p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    const/4 p2, 0x1

    aget-object p2, p5, p2

    .end local p2           #previousChar:C
    const/4 p3, 0x1

    aget-object p3, p5, p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .restart local p2       #previousChar:C
    move p3, p2

    .line 446
    .end local p2           #previousChar:C
    .restart local p3       #previousChar:C
    :goto_4
    const/4 p2, 0x0

    .local p2, breakPoint:I
    move p4, p3

    .end local p3           #previousChar:C
    .local p4, previousChar:C
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 447
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 448
    .local p3, currentChar:C
    invoke-static {p3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_6

    .line 458
    .end local p3           #currentChar:C
    .end local p4           #previousChar:C
    :cond_2
    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 459
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .end local p2           #breakPoint:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    const/16 p3, 0x32

    if-ge p2, p3, :cond_0

    .line 460
    const/4 p2, 0x0

    aget-object p2, p5, p2

    invoke-static {p2, p1, p0}, Lcom/asus/reader/book/BookSurfaceView;->setPreciseSelectionNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 431
    .local p0, beforeText:Ljava/lang/String;
    .local p1, breakPoint:I
    .local p2, currentChar:C
    .local p3, previousChar:C
    :cond_3
    invoke-static {p2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-static {p3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 432
    add-int/lit8 p1, p1, -0x1

    .line 433
    goto :goto_3

    .line 435
    :cond_4
    const/16 p4, 0x20

    if-eq p3, p4, :cond_5

    invoke-static {p2}, Lcom/asus/reader/book/BookmarkUtility;->isCjkCharacter(C)Z

    move-result p4

    invoke-static {p3}, Lcom/asus/reader/book/BookmarkUtility;->isCjkCharacter(C)Z

    move-result p3

    .end local p3           #previousChar:C
    if-ne p4, p3, :cond_1

    .line 439
    :cond_5
    move p2, p2

    .line 428
    .local p2, previousChar:C
    add-int/lit8 p1, p1, -0x1

    move p3, p2

    .end local p2           #previousChar:C
    .restart local p3       #previousChar:C
    goto/16 :goto_2

    .line 449
    .local p0, afterText:Ljava/lang/String;
    .local p1, beforeText:Ljava/lang/String;
    .local p2, breakPoint:I
    .local p3, currentChar:C
    .restart local p4       #previousChar:C
    :cond_6
    invoke-static {p3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 452
    :cond_7
    const/16 v1, 0x20

    if-eq p4, v1, :cond_8

    invoke-static {p3}, Lcom/asus/reader/book/BookmarkUtility;->isCjkCharacter(C)Z

    move-result v1

    invoke-static {p4}, Lcom/asus/reader/book/BookmarkUtility;->isCjkCharacter(C)Z

    move-result p4

    .end local p4           #previousChar:C
    if-ne v1, p4, :cond_2

    .line 456
    :cond_8
    move p3, p3

    .line 446
    .local p3, previousChar:C
    add-int/lit8 p2, p2, 0x1

    move p4, p3

    .end local p3           #previousChar:C
    .restart local p4       #previousChar:C
    goto :goto_5

    .end local p1           #beforeText:Ljava/lang/String;
    .local p0, x:D
    .local p2, y:D
    .local p4, eventType:I
    .local p5, mPageNo:I
    :pswitch_1
    move-wide v1, p0

    move-wide v3, p2

    move v5, p5

    move v6, p4

    .line 467
    invoke-static/range {v1 .. v6}, Lcom/asus/reader/book/BookSurfaceView;->updateSelectionBoundNative(DDII)V

    goto/16 :goto_0

    .line 472
    :pswitch_2
    invoke-static {}, Lcom/asus/reader/book/BookSurfaceView;->clearSelectionNative()V

    goto/16 :goto_0

    .end local p4           #eventType:I
    .local p0, afterText:Ljava/lang/String;
    .restart local p1       #beforeText:Ljava/lang/String;
    .local p2, previousChar:C
    .local p5, returnText:[Ljava/lang/String;
    :cond_9
    move p3, p2

    .end local p2           #previousChar:C
    .restart local p3       #previousChar:C
    goto :goto_4

    .end local p3           #previousChar:C
    .local p0, beforeText:Ljava/lang/String;
    .local p1, previousChar:C
    .restart local p4       #eventType:I
    :cond_a
    move p2, p1

    .end local p1           #previousChar:C
    .restart local p2       #previousChar:C
    goto/16 :goto_1

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static searchString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .parameter "stringToFind"
    .parameter "startBookmark"
    .parameter "endBookmark"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    if-eqz p0, :cond_a

    .line 255
    invoke-static {p0, p1, p2}, Lcom/asus/reader/book/BookSurfaceView;->searchStringNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 257
    .local v1, findStringInfo:[Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 259
    const-string p0, "BookmarkUtility"

    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "searchString  result="

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p2, v1, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 p0, 0x0

    aget-object p0, v1, p0

    invoke-static {p0}, Lcom/asus/reader/book/BookmarkUtility;->processParameters(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 262
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 p0, 0x1

    aget-object p0, v1, p0

    if-eqz p0, :cond_3

    .line 264
    const/4 p0, 0x1

    aget-object p0, v1, p0

    .line 267
    .local p0, beforeText:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x2d

    sub-int/2addr p1, p2

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    .line 268
    .local p1, bound:I
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 269
    :cond_0
    const/4 p2, 0x1

    sub-int v2, p1, p2

    .line 270
    .local v2, firstWhiteSpace:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v4, 0x1

    sub-int/2addr p2, v4

    .local p2, breakPoint:I
    :goto_0
    if-lt p2, p1, :cond_1

    .line 272
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 273
    move v2, p2

    .line 275
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_8

    .line 279
    :cond_1
    if-ltz p2, :cond_2

    .line 280
    const-string v4, "BookmarkUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchString char="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isSpaceChar="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isWhitespace="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_2
    const/4 v4, 0x1

    sub-int/2addr p1, v4

    if-ne p2, p1, :cond_c

    .end local p1           #bound:I
    move p1, v2

    .line 285
    .end local p2           #breakPoint:I
    .local p1, breakPoint:I
    :goto_1
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .end local p1           #breakPoint:I
    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 287
    const-string p1, "BookmarkUtility"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchString  relateText before="

    .end local v2           #firstWhiteSpace:I
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string p1, "before"

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .end local p0           #beforeText:Ljava/lang/String;
    :cond_3
    const/4 p0, 0x2

    aget-object p0, v1, p0

    if-eqz p0, :cond_7

    .line 292
    const/4 p0, 0x2

    aget-object p0, v1, p0

    .line 295
    .local p0, afterText:Ljava/lang/String;
    const/16 p1, 0x2d

    .line 296
    .local p1, bound:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-le p1, p2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 297
    :cond_4
    move v1, p1

    .line 298
    .local v1, lastWhiteSpace:I
    const/4 p2, 0x0

    .restart local p2       #breakPoint:I
    :goto_2
    if-ge p2, p1, :cond_5

    .line 299
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 300
    move v1, p2

    .line 301
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_9

    .line 304
    :cond_5
    if-ge p2, p1, :cond_6

    .line 305
    const-string v2, "BookmarkUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchString char="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSpaceChar="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isWhitespace="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " breakpoint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_6
    if-ne p2, p1, :cond_b

    move p1, v1

    .line 311
    .end local p2           #breakPoint:I
    .local p1, breakPoint:I
    :goto_3
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 312
    const-string p1, "BookmarkUtility"

    .end local p1           #breakPoint:I
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchString relatedText after="

    .end local v1           #lastWhiteSpace:I
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string p1, "after"

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local p0           #afterText:Ljava/lang/String;
    :cond_7
    move-object p0, v3

    .line 318
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    return-object p0

    .line 270
    .local v1, findStringInfo:[Ljava/lang/String;
    .restart local v2       #firstWhiteSpace:I
    .restart local v3       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p0, beforeText:Ljava/lang/String;
    .local p1, bound:I
    .restart local p2       #breakPoint:I
    :cond_8
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_0

    .line 298
    .end local v2           #firstWhiteSpace:I
    .local v1, lastWhiteSpace:I
    .local p0, afterText:Ljava/lang/String;
    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_2

    .line 318
    .end local v1           #lastWhiteSpace:I
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0           #afterText:Ljava/lang/String;
    .local p1, startBookmark:Ljava/lang/String;
    .local p2, endBookmark:Ljava/lang/String;
    :cond_a
    const/4 p0, 0x0

    goto :goto_4

    .restart local v1       #lastWhiteSpace:I
    .restart local v3       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0       #afterText:Ljava/lang/String;
    .local p1, bound:I
    .local p2, breakPoint:I
    :cond_b
    move p1, p2

    .end local p2           #breakPoint:I
    .local p1, breakPoint:I
    goto :goto_3

    .end local p1           #breakPoint:I
    .local v1, findStringInfo:[Ljava/lang/String;
    .restart local v2       #firstWhiteSpace:I
    .local p0, beforeText:Ljava/lang/String;
    .restart local p2       #breakPoint:I
    :cond_c
    move p1, p2

    .end local p2           #breakPoint:I
    .restart local p1       #breakPoint:I
    goto/16 :goto_1
.end method

.method public static setNewHighlight()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/asus/reader/book/BookSurfaceView;->setNewHighlightNative()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static setSelectionHighlight(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "startBookmark"
    .parameter "endBookmark"

    .prologue
    .line 345
    invoke-static {p0, p1}, Lcom/asus/reader/book/BookSurfaceView;->setSelectionHighlightNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method
