.class interface abstract Lcom/google/android/apps/books/util/OceanUris$BookStore;
.super Ljava/lang/Object;
.source "OceanUris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/OceanUris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "BookStore"
.end annotation


# virtual methods
.method public abstract getAboutTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract getBuyTheBookUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract getSearchUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract getShopUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;
.end method
