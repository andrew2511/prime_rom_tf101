.class public Lcom/google/android/apps/books/provider/BooksContract$Volumes;
.super Ljava/lang/Object;
.source "BooksContract.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/BooksContract$VolumeColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Volumes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;,
        Lcom/google/android/apps/books/provider/BooksContract$Volumes$Mode;,
        Lcom/google/android/apps/books/provider/BooksContract$Volumes$Viewability;,
        Lcom/google/android/apps/books/provider/BooksContract$Volumes$OpenAccess;
    }
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/com.google.android.apps.books.volume"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/com.google.android.apps.books.volume"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_ORDER_BY:Ljava/lang/String; = "title ASC"

.field public static final EXTRA_TOTAL_RESULTS:Ljava/lang/String; = "com.google.android.apps.books.cursor.extra.TOTAL_RESULTS"

.field public static final MAX_ZERO_FRACTION:D = 1.0E-7

.field public static final MIN_UNIT_FRACTION:D = 0.9999999

.field public static final PARAM_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field public static final PARAM_LOCAL:Ljava/lang/String; = "local"

.field public static final PARAM_QUERY:Ljava/lang/String; = "query"

.field public static final PATH_ANNOTATIONS:Ljava/lang/String; = "annotations"

.field public static final PATH_CHAPTERS:Ljava/lang/String; = "chapters"

.field public static final PATH_COVER:Ljava/lang/String; = "cover"

.field public static final PATH_COVER_THUMBNAIL:Ljava/lang/String; = "cover_thumbnail"

.field public static final PATH_PAGES:Ljava/lang/String; = "pages"

.field public static final PATH_RESOURCES:Ljava/lang/String; = "res"

.field public static final PATH_SECTIONS:Ljava/lang/String; = "sections"

.field private static final RESOURCE_CONTRIBUTION:D = 0.5

.field private static final SECTION_CONTRIBUTION:D = 0.5


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1417
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "volumes"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1520
    return-void
.end method

.method public static buildCoverThumbnailUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "volumeId"

    .prologue
    .line 1553
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cover_thumbnail"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildCoverUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "volumeId"

    .prologue
    .line 1545
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "cover"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "volumeId"

    .prologue
    .line 1534
    const-string v1, "Valid volume required"

    invoke-static {p0, v1}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1535
    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1536
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1537
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static computeAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .locals 4
    .parameter "viewability"
    .parameter "openAccess"
    .parameter "buyUrl"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1583
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    const-string v1, "empty viewability"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1584
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    const-string v1, "empty openAccess"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1585
    const-string v0, "http://schemas.google.com/books/2008#view_all_pages"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1586
    const-string v0, "http://schemas.google.com/books/2008#enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1587
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->FREE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 1596
    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    .line 1583
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1584
    goto :goto_1

    .line 1588
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1589
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->PURCHASED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    goto :goto_2

    .line 1592
    :cond_3
    const-string v0, "http://schemas.google.com/books/2008#view_unknown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "http://schemas.google.com/books/2008#view_no_pages"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1594
    :cond_4
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->NO_VIEW:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    goto :goto_2

    .line 1596
    :cond_5
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    goto :goto_2
.end method

.method public static getContentUris(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1723
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getManifestContentUris(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1724
    .local v0, uris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$VolumeFiles;->buildClearContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1725
    return-object v0
.end method

.method public static getDownloadedFraction(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)D
    .locals 9
    .parameter "preferredMode"
    .parameter "sectionFraction"
    .parameter "resourceFraction"
    .parameter "pageFraction"

    .prologue
    const-wide/high16 v7, 0x3fe0

    const-wide/16 v5, 0x0

    .line 1683
    const/4 v4, 0x1

    if-ne p0, v4, :cond_1

    .line 1684
    if-nez p3, :cond_0

    move-wide v4, v5

    .line 1696
    :goto_0
    return-wide v4

    .line 1684
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_0

    .line 1686
    :cond_1
    if-nez p1, :cond_2

    move-wide v2, v5

    .line 1688
    .local v2, secFrac:D
    :goto_1
    const-wide v4, 0x3fefffffca501acbL

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    .line 1691
    const-wide/16 v0, 0x0

    .line 1696
    .local v0, resFrac:D
    :goto_2
    mul-double v4, v7, v2

    mul-double v6, v7, v0

    add-double/2addr v4, v6

    goto :goto_0

    .line 1686
    .end local v0           #resFrac:D
    .end local v2           #secFrac:D
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-wide v2, v4

    goto :goto_1

    .line 1694
    .restart local v2       #secFrac:D
    :cond_3
    if-nez p2, :cond_4

    const-wide/high16 v4, 0x3ff0

    move-wide v0, v4

    .restart local v0       #resFrac:D
    :goto_3
    goto :goto_2

    .end local v0           #resFrac:D
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_3
.end method

.method public static getManifestContentUris(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1712
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Chapters;->buildChapterDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Sections;->buildSectionDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getValuesToClearContentColumns()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 1746
    invoke-static {}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getValuesToClearManifestContentColumns()Landroid/content/ContentValues;

    move-result-object v0

    .line 1747
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "cover_content_status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1748
    return-object v0
.end method

.method public static getValuesToClearManifestContentColumns()Landroid/content/ContentValues;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1733
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1734
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "content_version"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1735
    const-string v1, "first_chapter_start_section"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1736
    const-string v1, "preferred_mode"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1737
    const-string v1, "has_text_mode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1738
    const-string v1, "has_image_mode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1739
    return-object v0
.end method

.method public static getVolumeId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    .line 1566
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1568
    .local v0, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "Not enough segments"

    invoke-static {v3, v1, v2}, Lcom/google/common/base/Preconditions;->checkElementIndex(IILjava/lang/String;)I

    .line 1569
    const-string v1, "volumes"

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v2, "Not a volumes path"

    invoke-static {v1, p0, v2}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1570
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "Missing VOLUME_ID"

    invoke-static {p0, v1}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1572
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isContentInvalid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "oldViewability"
    .parameter "oldBuyUrl"
    .parameter "oldOpenAccess"
    .parameter "newViewability"
    .parameter "newBuyUrl"
    .parameter "newOpenAccess"

    .prologue
    .line 1642
    invoke-static {p0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFullyDownloaded(D)Z
    .locals 2
    .parameter "fraction"

    .prologue
    .line 1705
    const-wide v0, 0x3fefffffca501acbL

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLimitedPreview(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "viewability"
    .parameter "buyUrl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1610
    if-eqz p0, :cond_1

    const-string v1, "http://schemas.google.com/books/2008#view_all_pages"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://schemas.google.com/books/2008#view_partial"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 1613
    .local v0, result:Z
    :goto_0
    return v0

    .line 1610
    .end local v0           #result:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static isPublicDomain(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "viewability"
    .parameter "openAccess"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1626
    if-eqz p0, :cond_0

    const-string v1, "http://schemas.google.com/books/2008#view_all_pages"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "http://schemas.google.com/books/2008#enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 1628
    .local v0, result:Z
    :goto_0
    return v0

    .line 1626
    .end local v0           #result:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static searchUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "query"

    .prologue
    .line 1526
    const-string v0, "Valid query required"

    invoke-static {p0, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1527
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
