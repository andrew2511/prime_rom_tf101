.class public Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
.super Ljava/lang/Object;
.source "Country.java"


# instance fields
.field private mISOCode:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNewspaperCount:I

.field private mServiceId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mNewspaperCount:I

    .line 14
    return-void
.end method

.method public static create(JLorg/xml/sax/Attributes;)Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    .locals 2
    .parameter "serviceId"
    .parameter "attributes"

    .prologue
    .line 53
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    invoke-direct {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;-><init>()V

    .line 54
    .local v0, country:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    iput-wide p0, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mServiceId:J

    .line 55
    const-string v1, "ISOCode"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mISOCode:Ljava/lang/String;

    .line 56
    const-string v1, "name"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mName:Ljava/lang/String;

    .line 57
    return-object v0
.end method

.method public static getCountries(J)Ljava/util/List;
    .locals 1
    .parameter "serviceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Country;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/CountryDbAdapter;->getCountries(J)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getCountries(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCountries(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Country;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 50
    :goto_0
    return-object v5

    .line 27
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Country;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 30
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 31
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v5, v4

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    const-string v5, "service_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 36
    .local v3, idxServiceId:I
    const-string v5, "iso_code"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 37
    .local v1, idxISOCode:I
    const-string v5, "name"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 39
    .local v2, idxName:I
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 47
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 48
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v5, v4

    .line 50
    goto :goto_0

    .line 40
    :cond_2
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    invoke-direct {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;-><init>()V

    .line 41
    .local v0, country:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mServiceId:J

    .line 42
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mISOCode:Ljava/lang/String;

    .line 43
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mName:Ljava/lang/String;

    .line 44
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getCountry(JLjava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    .locals 2
    .parameter "serviceId"
    .parameter "isoCode"

    .prologue
    .line 20
    invoke-static {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/CountryDbAdapter;->getCountry(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getCountries(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 21
    .local v0, countries:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Country;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 22
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    move-object v1, p0

    goto :goto_0
.end method


# virtual methods
.method public getISOCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mISOCode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewspapers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mServiceId:J

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mISOCode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspapersToCountriesDbAdapter;->getNewspapers(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getNewspapers(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNewspapersCount()I
    .locals 3

    .prologue
    .line 77
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mNewspaperCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mServiceId:J

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mISOCode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspapersToCountriesDbAdapter;->getNewspapersCount(JLjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mNewspaperCount:I

    .line 80
    :cond_0
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mNewspaperCount:I

    return v0
.end method

.method public getServiceId()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->mServiceId:J

    return-wide v0
.end method
