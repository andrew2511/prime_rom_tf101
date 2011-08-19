.class Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;
.super Ljava/lang/Object;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoaderTask"
.end annotation


# static fields
.field private static final TYPE_FLAG:I = 0x0

.field private static final TYPE_THUMBNAIL:I = 0x1


# instance fields
.field private mCountry:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

.field private mImageView:Landroid/widget/ImageView;

.field private mKey:Ljava/lang/String;

.field private mNewspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

.field private mType:I

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Country;)V
    .locals 1
    .parameter
    .parameter "imageView"
    .parameter "country"

    .prologue
    .line 2021
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 2016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2017
    const/4 v0, 0x0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mType:I

    .line 2018
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mImageView:Landroid/widget/ImageView;

    .line 2019
    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mCountry:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    .line 2020
    invoke-virtual {p3}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getISOCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;)V
    .locals 1
    .parameter
    .parameter "imageView"
    .parameter "newspaper"

    .prologue
    .line 2028
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    .line 2023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2024
    const/4 v0, 0x1

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mType:I

    .line 2025
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mImageView:Landroid/widget/ImageView;

    .line 2026
    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mNewspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 2027
    invoke-virtual {p3}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountry()Lcom/newspaperdirect/pressreader/android/core/catalog/Country;
    .locals 1

    .prologue
    .line 2002
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mCountry:Lcom/newspaperdirect/pressreader/android/core/catalog/Country;

    .line 2003
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getNewspaper()Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;
    .locals 2

    .prologue
    .line 1996
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mNewspaper:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 1997
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2008
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImageLoaderTask;->mType:I

    return v0
.end method
