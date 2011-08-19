.class public Lcom/google/android/finsky/api/model/Document;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCookie:Ljava/lang/String;

.field private final mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

.field private final mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

.field private mImageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 703
    new-instance v0, Lcom/google/android/finsky/api/model/Document$1;

    invoke-direct {v0}, Lcom/google/android/finsky/api/model/Document$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/api/model/Document;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;Ljava/lang/String;)V
    .locals 1
    .parameter "deviceDoc"
    .parameter "cookie"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    .line 60
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getFinskyDoc()Lcom/google/android/finsky/remoting/protos/Doc$Document;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 61
    iput-object p2, p0, Lcom/google/android/finsky/api/model/Document;->mCookie:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private isAppInstalled(Lcom/google/android/finsky/utils/PackageInfoCache;)Z
    .locals 3
    .parameter "packageInfoCache"

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    .line 508
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    if-nez v0, :cond_0

    .line 509
    const/4 v2, 0x0

    .line 513
    :goto_0
    return v2

    .line 512
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/google/android/finsky/utils/PackageInfoCache;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private isSystemApp(Lcom/google/android/finsky/utils/PackageInfoCache;)Z
    .locals 3
    .parameter "packageInfoCache"

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    .line 518
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    if-nez v0, :cond_0

    .line 519
    const/4 v2, 0x0

    .line 523
    :goto_0
    return v2

    .line 522
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/google/android/finsky/utils/PackageInfoCache;->isSystemPackage(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private offerTypeCheck(I)Z
    .locals 1
    .parameter "offerType"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAvailability()Lcom/google/android/finsky/remoting/protos/Doc$Availability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->hasOfferType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAvailability()Lcom/google/android/finsky/remoting/protos/Doc$Availability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Availability;->getOfferType()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canLaunch(Lcom/google/android/finsky/utils/PackageInfoCache;)Z
    .locals 2
    .parameter "packageInfoCache"

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    .line 565
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    if-nez v0, :cond_0

    .line 566
    const/4 v1, 0x0

    .line 569
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/finsky/utils/PackageInfoCache;->canLaunch(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public canManage(Lcom/google/android/finsky/utils/PackageInfoCache;)Z
    .locals 6
    .parameter "packageInfoCache"

    .prologue
    const/4 v5, 0x0

    .line 540
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 542
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v3

    .line 556
    :goto_0
    return v3

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    .line 546
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    if-nez v0, :cond_1

    move v3, v5

    .line 547
    goto :goto_0

    .line 550
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    .line 551
    goto :goto_0

    .line 554
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v1

    .line 555
    .local v1, ourVersion:I
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getVersionCode()I

    move-result v2

    .line 556
    .local v2, theirVersion:I
    if-gt v1, v2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppPermissionsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDetails()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->hasAppDetails()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAvailableOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getOfferList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackend()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->getBackend()I

    move-result v0

    return v0
.end method

.method public getBackendDocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBestThumbnailUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getFirstImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, url:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 308
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getFirstImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_0
    return-object v0
.end method

.method public getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getCreator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreditsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    move-result-object v0

    .line 402
    .local v0, videoDetails:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getCreditList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getDefaultOffer()Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, bestOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 725
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v5

    .line 726
    .local v5, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 727
    .local v2, o:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v4

    .line 728
    .local v4, offerType:I
    if-ne v4, v9, :cond_2

    .line 729
    move-object v0, v2

    .line 748
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #o:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v4           #offerType:I
    .end local v5           #offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    :cond_1
    :goto_1
    if-nez v0, :cond_7

    iget-object v6, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v6

    :goto_2
    return-object v6

    .line 731
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #o:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .restart local v4       #offerType:I
    .restart local v5       #offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    :cond_2
    if-ne v4, v8, :cond_0

    if-nez v0, :cond_0

    .line 732
    move-object v0, v2

    goto :goto_0

    .line 735
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #o:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v4           #offerType:I
    .end local v5           #offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    if-eq v6, v8, :cond_4

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 737
    :cond_4
    iget-object v6, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getOfferList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 738
    .local v3, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 739
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v6

    if-ne v6, v7, :cond_6

    .line 740
    move-object v0, v3

    .line 741
    goto :goto_1

    .line 743
    :cond_6
    move-object v0, v3

    goto :goto_3

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_7
    move-object v6, v0

    .line 748
    goto :goto_2
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDetailsUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDocid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstImageUrl(I)Ljava/lang/String;
    .locals 2
    .parameter "imageType"

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    .line 299
    .local v0, typedImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFormattedPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v0

    .line 632
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageTypeMap()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v7, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    if-nez v7, :cond_0

    .line 275
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 276
    .local v5, thumbnailImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 277
    .local v3, previewImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 278
    .local v4, promoImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 279
    .local v6, videoImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 280
    .local v0, hiResPreviewImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    .line 281
    iget-object v7, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v7, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v7, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v7, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v7, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v7, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getImageList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 287
    .local v2, image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    iget-object v7, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    .end local v0           #hiResPreviewImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .end local v3           #previewImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    .end local v4           #promoImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    .end local v5           #thumbnailImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    .end local v6           #videoImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    :cond_0
    iget-object v7, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    return-object v7
.end method

.method public getImages(I)Ljava/util/List;
    .locals 2
    .parameter "imageType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getImageTypeMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getMoreByBrowseUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getMoreByBrowseUrl()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, browseUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMoreByHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getMoreByHeader()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, header:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getRelatedHeader()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMoreByListUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, moreByUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getRelatedUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMovieRentalTerms()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    move-result-object v0

    .line 385
    .local v0, details:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getRentalTermList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getMovieTrailers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    move-result-object v0

    .line 394
    .local v0, details:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;->getTrailerList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getNormalizedContentRating()I
    .locals 3

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    .line 376
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getContentRating()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public getRatingCount()J
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getRatingsCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRelatedBrowseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getRelatedBrowseUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getRelatedHeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getRelatedListUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReviewsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getReviewsUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStarRating()F
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getStarRating()F

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DocumentDetails;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoDetails;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWhatsNew()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getRecentChangesHtml()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 210
    .local v0, whatsNew:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 211
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 213
    :goto_1
    return-object v1

    .line 209
    .end local v0           #whatsNew:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 213
    .restart local v0       #whatsNew:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public getYouTubeWatchUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCreatorRelatedContent()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getMoreByListUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDetails()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->hasDetails()Z

    move-result v0

    return v0
.end method

.method public hasRating()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating()Z

    move-result v0

    return v0
.end method

.method public hasSample()Z
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid()Z

    move-result v0

    return v0
.end method

.method public hasScreenshots()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 678
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    .line 680
    .local v0, imageList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    if-eq v2, v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasVideos()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 663
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    .line 669
    .local v0, videoList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isLocallyAvailable(Lcom/google/android/finsky/utils/PackageInfoCache;)Z
    .locals 2
    .parameter "packageInfoCache"

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 495
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v0

    .line 498
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/api/model/Document;->isAppInstalled(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUpdateAvailable(Lcom/google/android/finsky/utils/PackageInfoCache;)Z
    .locals 5
    .parameter "packageInfoCache"

    .prologue
    const/4 v4, 0x0

    .line 576
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;

    move-result-object v0

    .line 578
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;
    if-nez v0, :cond_0

    move v3, v4

    .line 584
    :goto_0
    return v3

    .line 582
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/finsky/utils/PackageInfoCache;->getPackageVersion(Ljava/lang/String;)I

    move-result v1

    .line 583
    .local v1, ourVersion:I
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$AppDetails;->getVersionCode()I

    move-result v2

    .line 584
    .local v2, theirVersion:I
    if-le v2, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public needsCheckoutFlow()Z
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCheckoutFlowRequired()Z

    move-result v0

    return v0
.end method

.method public ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z
    .locals 3
    .parameter "packageInfoCache"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 456
    invoke-direct {p0, p1}, Lcom/google/android/finsky/api/model/Document;->isSystemApp(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 463
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/finsky/api/model/Document;->offerTypeCheck(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/finsky/api/model/Document;->offerTypeCheck(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/google/android/finsky/api/model/Document;->offerTypeCheck(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sampleOwnedByUser()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/finsky/api/model/Document;->offerTypeCheck(I)Z

    move-result v0

    return v0
.end method

.method public setPrice(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 6
    .parameter "priceView"
    .parameter "convertedPriceView"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 598
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 599
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 600
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mFinskyDoc:Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, price:Ljava/lang/String;
    const/4 v0, 0x0

    .line 608
    .local v0, convertedPrice:Ljava/lang/String;
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    const-string v3, "\\(|\\)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, parts:[Ljava/lang/String;
    aget-object v2, v1, v4

    .line 611
    const/4 v3, 0x1

    aget-object v0, v1, v3

    .line 613
    .end local v1           #parts:[Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    if-eqz v0, :cond_1

    .line 615
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    .end local v0           #convertedPrice:Ljava/lang/String;
    .end local v2           #price:Ljava/lang/String;
    :goto_0
    return-void

    .line 618
    .restart local v0       #convertedPrice:Ljava/lang/String;
    .restart local v2       #price:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 621
    .end local v0           #convertedPrice:Ljava/lang/String;
    .end local v2           #price:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public skipPurchaseDialog(I)Z
    .locals 2
    .parameter "offerType"

    .prologue
    const/4 v1, 0x1

    .line 655
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDeviceDoc:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 700
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mCookie:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 701
    return-void
.end method
