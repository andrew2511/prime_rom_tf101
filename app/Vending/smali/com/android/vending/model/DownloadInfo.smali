.class public Lcom/android/vending/model/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mAssetId:Ljava/lang/String;

.field private final mAssetName:Ljava/lang/String;

.field private final mAuthCookieName:Ljava/lang/String;

.field private final mAuthCookieValue:Ljava/lang/String;

.field private final mBlobUrl:Ljava/lang/String;

.field private mForwardLocked:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mRefundTimeout:Ljava/lang/Long;

.field private final mSignatureAndSize:Ljava/lang/String;

.field private final mSource:Ljava/lang/String;

.field private mType:Lcom/android/vending/model/Asset$AssetType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/Asset$AssetType;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "assetId"
    .parameter "packageName"
    .parameter "signatureAndSize"
    .parameter "assetName"
    .parameter "blobUrl"
    .parameter "type"
    .parameter "isForwardLocked"
    .parameter "refundTimeout"
    .parameter "authCookieValue"
    .parameter "authCookieName"
    .parameter "source"
    .parameter "account"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/vending/model/DownloadInfo;->mAssetId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/android/vending/model/DownloadInfo;->mPackageName:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/android/vending/model/DownloadInfo;->mSignatureAndSize:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/android/vending/model/DownloadInfo;->mAssetName:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/android/vending/model/DownloadInfo;->mBlobUrl:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lcom/android/vending/model/DownloadInfo;->mType:Lcom/android/vending/model/Asset$AssetType;

    .line 51
    iput-boolean p7, p0, Lcom/android/vending/model/DownloadInfo;->mForwardLocked:Z

    .line 52
    iput-object p8, p0, Lcom/android/vending/model/DownloadInfo;->mRefundTimeout:Ljava/lang/Long;

    .line 53
    iput-object p9, p0, Lcom/android/vending/model/DownloadInfo;->mAuthCookieValue:Ljava/lang/String;

    .line 54
    iput-object p10, p0, Lcom/android/vending/model/DownloadInfo;->mAuthCookieName:Ljava/lang/String;

    .line 55
    iput-object p11, p0, Lcom/android/vending/model/DownloadInfo;->mSource:Ljava/lang/String;

    .line 56
    iput-object p12, p0, Lcom/android/vending/model/DownloadInfo;->mAccount:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public findLocalAsset()Lcom/android/vending/model/LocalAsset;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/vending/model/DownloadInfo;->getAssetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/model/LocalAsset;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    return-object v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/vending/model/DownloadInfo;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/vending/model/DownloadInfo;->mAssetId:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/vending/model/DownloadInfo;->mAssetName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthCookieName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/vending/model/DownloadInfo;->mAuthCookieName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthCookieValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/vending/model/DownloadInfo;->mAuthCookieValue:Ljava/lang/String;

    return-object v0
.end method

.method public getBlobUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/vending/model/DownloadInfo;->mBlobUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/vending/model/DownloadInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRefundTimeout()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/vending/model/DownloadInfo;->mRefundTimeout:Ljava/lang/Long;

    return-object v0
.end method

.method public getSignatureAndSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/vending/model/DownloadInfo;->mSignatureAndSize:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/vending/model/DownloadInfo;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/vending/model/Asset$AssetType;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/vending/model/DownloadInfo;->mType:Lcom/android/vending/model/Asset$AssetType;

    return-object v0
.end method

.method public isForwardLocked()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/vending/model/DownloadInfo;->mForwardLocked:Z

    return v0
.end method
