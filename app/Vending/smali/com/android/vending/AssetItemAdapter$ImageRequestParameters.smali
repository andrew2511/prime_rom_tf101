.class public Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;
.super Ljava/lang/Object;
.source "AssetItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageRequestParameters"
.end annotation


# instance fields
.field private final mImageId:I

.field private final mPosition:I

.field private final mUsage:Lcom/android/vending/model/Asset$AppImageUsage;


# direct methods
.method public constructor <init>(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 0
    .parameter "position"
    .parameter "usage"
    .parameter "imageId"

    .prologue
    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    iput p1, p0, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->mPosition:I

    .line 835
    iput-object p2, p0, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->mUsage:Lcom/android/vending/model/Asset$AppImageUsage;

    .line 836
    iput p3, p0, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->mImageId:I

    .line 837
    return-void
.end method


# virtual methods
.method public getImageId()I
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->mImageId:I

    return v0
.end method

.method public getImageUsage()Lcom/android/vending/model/Asset$AppImageUsage;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->mUsage:Lcom/android/vending/model/Asset$AppImageUsage;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Lcom/android/vending/AssetItemAdapter$ImageRequestParameters;->mPosition:I

    return v0
.end method
