.class public Lcom/google/android/finsky/adapters/PromoAdapter;
.super Ljava/lang/Object;
.source "PromoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;
    }
.end annotation


# instance fields
.field private mBannerHeight:I

.field private mBannerWidth:I

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mFlyoverHeight:I

.field private mFlyoverWidth:I

.field private mItems:[Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

.field private final mMaxImages:I

.field private mObserver:Lcom/google/android/finsky/adapters/ArrayObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeList;IIIILcom/google/android/finsky/adapters/ArrayObserver;I)V
    .locals 2
    .parameter "bitmapLoader"
    .parameter "promoList"
    .parameter "maxBannerWidth"
    .parameter "maxBannerHeight"
    .parameter "maxFlyoverWidth"
    .parameter "maxFlyoverHeight"
    .parameter "observer"
    .parameter "maxImages"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v1, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mBannerWidth:I

    .line 26
    iput v1, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mBannerHeight:I

    .line 27
    iput v1, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mFlyoverWidth:I

    .line 28
    iput v1, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mFlyoverHeight:I

    .line 32
    new-array v0, v1, [Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mItems:[Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

    .line 87
    iput-object p1, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 88
    iput p3, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mBannerWidth:I

    .line 89
    iput p4, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mBannerHeight:I

    .line 90
    iput p5, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mFlyoverWidth:I

    .line 91
    iput p6, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mFlyoverHeight:I

    .line 92
    iput-object p7, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mObserver:Lcom/google/android/finsky/adapters/ArrayObserver;

    .line 93
    iput p8, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mMaxImages:I

    .line 94
    invoke-virtual {p2, v1}, Lcom/google/android/finsky/api/model/DfeList;->getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/adapters/PromoAdapter;->syncWrapperItems(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/PromoAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mFlyoverWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/PromoAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mFlyoverHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/adapters/PromoAdapter;)Lcom/google/android/finsky/utils/BitmapLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/adapters/PromoAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mBannerWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/adapters/PromoAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mBannerHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/adapters/PromoAdapter;)Lcom/google/android/finsky/adapters/ArrayObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mObserver:Lcom/google/android/finsky/adapters/ArrayObserver;

    return-object v0
.end method

.method private destroyItems()V
    .locals 5

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mItems:[Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

    .local v0, arr$:[Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 148
    .local v2, item:Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;
    invoke-virtual {v2}, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->destroy()V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v2           #item:Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mItems:[Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

    .line 151
    return-void
.end method

.method private syncWrapperItems(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)V
    .locals 8
    .parameter "bucket"

    .prologue
    .line 110
    iget v6, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mMaxImages:I

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocumentCount()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v2, v6, [Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

    .line 112
    .local v2, items:[Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v2

    if-ge v1, v6, :cond_3

    .line 114
    new-instance v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1, v1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocument(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;Ljava/lang/String;)V

    .line 117
    .local v0, document:Lcom/google/android/finsky/api/model/Document;
    const/4 v5, 0x0

    .line 118
    .local v5, reused:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    iget-object v6, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mItems:[Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 119
    iget-object v6, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mItems:[Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v6

    if-ne v6, v0, :cond_2

    .line 120
    iget-object v6, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mItems:[Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

    aget-object v6, v6, v3

    aput-object v6, v2, v1

    .line 121
    const/4 v5, 0x1

    .line 127
    :cond_0
    if-nez v5, :cond_1

    .line 128
    new-instance v4, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

    invoke-direct {v4, p0, v0}, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;-><init>(Lcom/google/android/finsky/adapters/PromoAdapter;Lcom/google/android/finsky/api/model/Document;)V

    .line 129
    .local v4, newWrapper:Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;
    aput-object v4, v2, v1

    .line 132
    .end local v4           #newWrapper:Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;
    :cond_1
    aget-object v6, v2, v1

    invoke-virtual {v6, v1}, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->setCurrentPosition(I)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    .end local v0           #document:Lcom/google/android/finsky/api/model/Document;
    .end local v3           #j:I
    .end local v5           #reused:Z
    :cond_3
    iput-object v2, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mItems:[Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

    .line 135
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/PromoAdapter;->destroyItems()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mObserver:Lcom/google/android/finsky/adapters/ArrayObserver;

    .line 144
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mItems:[Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

    array-length v0, v0

    return v0
.end method

.method public getDocument(I)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "index"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mItems:[Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    return-object v0
.end method

.method public getFlyover(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "index"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mItems:[Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->getLogoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPromo(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "index"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/adapters/PromoAdapter;->mItems:[Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/PromoAdapter$PromoItemWrapper;->getPromoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
