.class public Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;
.super Ljava/lang/Object;
.source "PromotedAssetSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/PromotedAssetSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromotedAssetData"
.end annotation


# instance fields
.field private final mAssetId:Ljava/lang/String;

.field private mError:Ljava/lang/Throwable;

.field private final mPosition:I

.field private mPromoBadge:Landroid/graphics/Bitmap;

.field private mPromoDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "position"
    .parameter "assetId"

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mPosition:I

    .line 279
    iput-object p2, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mAssetId:Ljava/lang/String;

    .line 280
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;
    .locals 3

    .prologue
    .line 329
    new-instance v0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {p0}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->getPositionInPromoList()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;-><init>(ILjava/lang/String;)V

    .line 330
    .local v0, clone:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mPromoBadge:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->setPromoBadge(Landroid/graphics/Bitmap;)V

    .line 331
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mPromoDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->setPromoDescription(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mError:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->setError(Ljava/lang/Throwable;)V

    .line 333
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->clone()Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    move-result-object v0

    return-object v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mAssetId:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionInPromoList()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mPosition:I

    return v0
.end method

.method public getPromoBadge()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mPromoBadge:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPromoDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mPromoDescription:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mError:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLoadedEnoughForDisplay()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mPromoDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyLoaded()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mPromoDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mPromoBadge:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mError:Ljava/lang/Throwable;

    .line 308
    return-void
.end method

.method public setPromoBadge(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "promoBadge"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mPromoBadge:Landroid/graphics/Bitmap;

    .line 304
    return-void
.end method

.method public setPromoDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "promoDescription"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->mPromoDescription:Ljava/lang/String;

    .line 296
    return-void
.end method
