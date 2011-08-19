.class final Lcom/google/android/apps/books/util/OceanUris$1;
.super Ljava/lang/Object;
.source "OceanUris.java"

# interfaces
.implements Lcom/google/android/apps/books/util/OceanUris$BookStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/OceanUris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAboutTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "config"
    .parameter "volumeId"

    .prologue
    .line 67
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ebooks"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p1}, Lcom/google/android/apps/books/util/Config;->getSourceParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getBuyTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "config"
    .parameter "volumeId"

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/util/OceanUris$1;->getAboutTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSearchUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "config"
    .parameter "query"

    .prologue
    .line 61
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ebooks"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p1}, Lcom/google/android/apps/books/util/Config;->getSourceParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "as_brr"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getShopUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
    .locals 3
    .parameter "config"

    .prologue
    .line 56
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ebooks"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p1}, Lcom/google/android/apps/books/util/Config;->getSourceParam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
