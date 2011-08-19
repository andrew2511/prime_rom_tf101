.class public Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;
.super Landroid/content/ContentProvider;
.source "CatalogContentProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.newspaperdirect.pressreader.android.catalogprovider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final COUNTRIES:I = 0x3

.field public static final COUNTRIES_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.newspaperdirect.countries"

.field public static final COUNTRIES_URI:Landroid/net/Uri; = null

.field private static final COUNTRY_ISO:I = 0x4

.field public static final COUNTRY_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.newspaperdirect.countries"

.field private static final COUNTRY_NEWSPAPERS:I = 0x5

.field public static final COUNTRY_NEWSPAPERS_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.newspaperdirect.countries.newspapers"

.field public static final COUNTRY_NEWSPAPERS_URI:Landroid/net/Uri; = null

.field private static final LANGUAGES:I = 0x6

.field public static final LANGUAGES_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.newspaperdirect.languages"

.field public static final LANGUAGES_URI:Landroid/net/Uri; = null

.field private static final NEWSPAPERS:I = 0x0

.field public static final NEWSPAPERS_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.newspaperdirect.newspapers"

.field public static final NEWSPAPERS_URI:Landroid/net/Uri; = null

.field private static final NEWSPAPER_CID:I = 0x1

.field private static final NEWSPAPER_COUNTRIES:I = 0x2

.field public static final NEWSPAPER_COUNTRIES_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.newspaperdirect.newspapers.countries"

.field public static final NEWSPAPER_COUNTRIES_URI:Landroid/net/Uri; = null

.field public static final NEWSPAPER_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.newspaperdirect.newspapers"

.field private static final countryColumns:[Ljava/lang/String;

.field private static final newspaperColumns:[Ljava/lang/String;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private isQueryingCatalog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    const-string v0, "content://com.newspaperdirect.pressreader.android.catalogprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "content://com.newspaperdirect.pressreader.android.catalogprovider/newspapers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->NEWSPAPERS_URI:Landroid/net/Uri;

    .line 29
    const-string v0, "content://com.newspaperdirect.pressreader.android.catalogprovider/newspaper/countries"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->NEWSPAPER_COUNTRIES_URI:Landroid/net/Uri;

    .line 30
    const-string v0, "content://com.newspaperdirect.pressreader.android.catalogprovider/countries"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->COUNTRIES_URI:Landroid/net/Uri;

    .line 31
    const-string v0, "content://com.newspaperdirect.pressreader.android.catalogprovider/country/newspapers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->COUNTRY_NEWSPAPERS_URI:Landroid/net/Uri;

    .line 32
    const-string v0, "content://com.newspaperdirect.pressreader.android.catalogprovider/languages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->LANGUAGES_URI:Landroid/net/Uri;

    .line 58
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    .line 59
    const-string v1, "cid"

    aput-object v1, v0, v3

    .line 60
    const-string v1, "title"

    aput-object v1, v0, v4

    .line 61
    const-string v1, "parent_name"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    .line 62
    const-string v2, "reading_allowed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 63
    const-string v2, "printing_allowed"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 64
    const-string v2, "export_allowed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 65
    const-string v2, "enable_smart"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 66
    const-string v2, "background_color"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 67
    const-string v2, "media"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 68
    const-string v2, "is_right_to_left"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 69
    const-string v2, "rate"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 70
    const-string v2, "supplement_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 71
    const-string v2, "schedule"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 72
    const-string v2, "subscribed"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 73
    const-string v2, "country_iso_code"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 74
    const-string v2, "title_is_free"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 75
    const-string v2, "title_is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 76
    const-string v2, "language"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 77
    const-string v2, "parent_cid"

    aput-object v2, v0, v1

    .line 58
    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->newspaperColumns:[Ljava/lang/String;

    .line 80
    new-array v0, v5, [Ljava/lang/String;

    .line 81
    const-string v1, "iso_code"

    aput-object v1, v0, v3

    .line 82
    const-string v1, "name"

    aput-object v1, v0, v4

    .line 80
    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->countryColumns:[Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->isQueryingCatalog:Z

    .line 21
    return-void
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 91
    .local v0, matcher:Landroid/content/UriMatcher;
    const-string v1, "com.newspaperdirect.pressreader.android.catalogprovider"

    const-string v2, "newspapers"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    const-string v1, "com.newspaperdirect.pressreader.android.catalogprovider"

    const-string v2, "newspapers/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    const-string v1, "com.newspaperdirect.pressreader.android.catalogprovider"

    const-string v2, "newspaper/countries/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    const-string v1, "com.newspaperdirect.pressreader.android.catalogprovider"

    const-string v2, "countries"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    const-string v1, "com.newspaperdirect.pressreader.android.catalogprovider"

    const-string v2, "countries/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    const-string v1, "com.newspaperdirect.pressreader.android.catalogprovider"

    const-string v2, "country/newspapers/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    const-string v1, "com.newspaperdirect.pressreader.android.catalogprovider"

    const-string v2, "languages"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    return-object v0
.end method

.method private checkDeviceAuthorization()Z
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getServicesCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCountries()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 260
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getCountries(J)Ljava/util/List;

    move-result-object v0

    .line 261
    .local v0, countries:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Country;>;"
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->countryColumns:[Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 262
    .local v2, result:Landroid/database/MatrixCursor;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 265
    return-object v2

    .line 262
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    .line 263
    .local v1, country:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getCountryRow(Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method private getCountry(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "isoCode"

    .prologue
    .line 269
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getCountry(JLjava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    move-result-object v0

    .line 270
    .local v0, country:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->countryColumns:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 271
    .local v1, result:Landroid/database/MatrixCursor;
    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getCountryRow(Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 272
    return-object v1
.end method

.method private getCountryNewspapers(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "isoCode"

    .prologue
    .line 228
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspapersToCountriesDbAdapter;->getNewspapers(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 227
    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getNewspapers(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 229
    .local v1, newspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->newspaperColumns:[Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 230
    .local v2, result:Landroid/database/MatrixCursor;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    return-object v2

    .line 230
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 231
    .local v0, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getNewspaperRow(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method private getCountryRow(Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)Ljava/util/List;
    .locals 2
    .parameter "country"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Country;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v0, row:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getISOCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    return-object v0
.end method

.method private declared-synchronized getLanguages()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v4

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->get(Lcom/newspaperdirect/pressreader/android/core/Service;)Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->getLanguages()Ljava/util/List;

    move-result-object v1

    .line 294
    .local v1, languages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "NAME"

    aput-object v6, v4, v5

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 295
    .local v2, result:Landroid/database/MatrixCursor;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 300
    monitor-exit p0

    return-object v2

    .line 295
    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    .local v0, language:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v3, row:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    .end local v0           #language:Ljava/lang/String;
    .end local v1           #languages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #result:Landroid/database/MatrixCursor;
    .end local v3           #row:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getNewspaper(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "cid"

    .prologue
    .line 220
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getNewspaper(JLjava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-result-object v0

    .line 221
    .local v0, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->newspaperColumns:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 222
    .local v1, result:Landroid/database/MatrixCursor;
    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getNewspaperRow(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 223
    return-object v1
.end method

.method private getNewspaperCountries(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "cid"

    .prologue
    .line 277
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v3

    invoke-static {v3, v4, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspapersToCountriesDbAdapter;->getCountries(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 276
    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getCountries(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 278
    .local v0, countries:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Country;>;"
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->countryColumns:[Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 279
    .local v2, result:Landroid/database/MatrixCursor;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 282
    return-object v2

    .line 279
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    .line 280
    .local v1, country:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getCountryRow(Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method private getNewspaperRow(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)Ljava/util/List;
    .locals 4
    .parameter "newspaper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v0, row:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getParentName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getReadingAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getPrintingAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getExportAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getEnableSmart()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getBackgroundColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getMedia()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getIsRightToLeft()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getRate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getSupplementName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getSchedule()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getSubscribed()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCountryISOCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->isFree()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    :goto_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getParentCid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-object v0

    :cond_0
    move v1, v2

    .line 240
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 241
    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 242
    goto/16 :goto_2

    :cond_3
    move v1, v2

    .line 243
    goto/16 :goto_3

    :cond_4
    move v1, v2

    .line 246
    goto :goto_4

    :cond_5
    move v1, v2

    .line 250
    goto :goto_5

    :cond_6
    move v1, v2

    .line 252
    goto :goto_6

    :cond_7
    move v1, v2

    .line 253
    goto :goto_7
.end method

.method private getNewspapers()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 212
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getNewspapers(J)Ljava/util/List;

    move-result-object v1

    .line 213
    .local v1, newspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->newspaperColumns:[Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 214
    .local v2, result:Landroid/database/MatrixCursor;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 216
    return-object v2

    .line 214
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 215
    .local v0, newspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getNewspaperRow(Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Invalid method: delete(Uri, String, String[])"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 165
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.newspaperdirect.newspapers"

    .line 179
    :goto_0
    return-object v0

    .line 169
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.newspaperdirect.newspapers"

    goto :goto_0

    .line 171
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.newspaperdirect.newspapers.countries"

    goto :goto_0

    .line 173
    :pswitch_3
    const-string v0, "vnd.android.cursor.dir/vnd.newspaperdirect.countries"

    goto :goto_0

    .line 175
    :pswitch_4
    const-string v0, "vnd.android.cursor.item/vnd.newspaperdirect.countries"

    goto :goto_0

    .line 177
    :pswitch_5
    const-string v0, "vnd.android.cursor.dir/vnd.newspaperdirect.countries.newspapers"

    goto :goto_0

    .line 179
    :pswitch_6
    const-string v0, "vnd.android.cursor.dir/vnd.newspaperdirect.languages"

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Invalid method: insert(Uri, ContentValues)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->init(Landroid/content/Context;)V

    .line 108
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->init(Landroid/content/Context;)Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    .line 109
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->create(Landroid/content/Context;)V

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 115
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->checkDeviceAuthorization()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v6

    .line 160
    :goto_0
    return-object v4

    .line 116
    :cond_0
    iget-boolean v4, p0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->isQueryingCatalog:Z

    if-eqz v4, :cond_1

    move-object v4, v6

    goto :goto_0

    .line 117
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->isQueryingCatalog:Z

    .line 121
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v4

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->get(Lcom/newspaperdirect/pressreader/android/core/Service;)Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    move-result-object v0

    .line 122
    .local v0, catalog:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->isUpdating()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 123
    :cond_2
    iput-boolean v5, p0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->isQueryingCatalog:Z

    move-object v4, v6

    .line 124
    goto :goto_0

    .line 128
    :cond_3
    sget-object v4, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 129
    .local v3, type:I
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, id:Ljava/lang/String;
    const/4 v2, 0x0

    .line 132
    .local v2, result:Landroid/database/Cursor;
    packed-switch v3, :pswitch_data_0

    .line 155
    iput-boolean v5, p0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->isQueryingCatalog:Z

    .line 156
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown URL: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :pswitch_0
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getNewspapers()Landroid/database/Cursor;

    move-result-object v2

    .line 158
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 159
    :cond_4
    iput-boolean v5, p0, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->isQueryingCatalog:Z

    move-object v4, v2

    .line 160
    goto :goto_0

    .line 137
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getNewspaper(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 138
    goto :goto_1

    .line 140
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getNewspaperCountries(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 141
    goto :goto_1

    .line 143
    :pswitch_3
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getCountries()Landroid/database/Cursor;

    move-result-object v2

    .line 144
    goto :goto_1

    .line 146
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getCountry(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 147
    goto :goto_1

    .line 149
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getCountryNewspapers(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 150
    goto :goto_1

    .line 152
    :pswitch_6
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/CatalogContentProvider;->getLanguages()Landroid/database/Cursor;

    move-result-object v2

    .line 153
    goto :goto_1

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Invalid method: update(Uri, ContentValues, String, String[])"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
