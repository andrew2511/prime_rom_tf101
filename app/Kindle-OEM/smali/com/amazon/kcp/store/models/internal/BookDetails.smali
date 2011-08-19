.class public Lcom/amazon/kcp/store/models/internal/BookDetails;
.super Lcom/amazon/kcp/store/models/internal/BookInfo;
.source "BookDetails.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/IBookDetails;


# static fields
.field private static final SIM_COUNT:I = 0x3


# instance fields
.field private coverImage:Lcom/amazon/kcp/application/internal/IDownloadableImage;

.field private coverImageBase64Encoded:Ljava/lang/String;

.field private currencyCode:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private editorialReviews:Ljava/lang/String;

.field private hasSample:Z

.field private histogramStarCounts:[I

.field private isAgencyOffer:Z

.field private isOptimizedForDX:Z

.field private isTTSEnabled:Z

.field private licenseCount:Ljava/lang/Integer;

.field private listPrice:Ljava/lang/String;

.field private listPriceCurrencyCode:Ljava/lang/String;

.field private listPriceValue:F

.field private merchantName:Ljava/lang/String;

.field private numPages:Ljava/lang/String;

.field private priceValue:F

.field private printListPrice:Ljava/lang/String;

.field private printListPriceCurrencyCode:Ljava/lang/String;

.field private printListPriceValue:F

.field private publicationDate:Ljava/lang/String;

.field private publisher:Ljava/lang/String;

.field private releaseDate:Ljava/lang/String;

.field private salesRank:Ljava/lang/String;

.field private sampleReviews:Ljava/util/ArrayList;

.field private savings:Ljava/lang/String;

.field private savingsCurrencyCode:Ljava/lang/String;

.field private savingsValue:F

.field private simList:[Lcom/amazon/kcp/store/models/internal/BookInfo;

.field private simSetIndex:I

.field private totalCustomerReviewCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/BookInfo;-><init>()V

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/store/models/internal/BookInfo;

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->simList:[Lcom/amazon/kcp/store/models/internal/BookInfo;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->sampleReviews:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->histogramStarCounts:[I

    .line 63
    invoke-virtual {p0}, Lcom/amazon/kcp/store/models/internal/BookDetails;->empty()V

    .line 64
    return-void
.end method


# virtual methods
.method public addReview(Lcom/amazon/kcp/store/models/internal/ReviewInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 766
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->sampleReviews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    return-void
.end method

.method public addSim(Lcom/amazon/kcp/store/models/internal/BookInfo;)V
    .locals 3
    .parameter "simBookInfo"

    .prologue
    .line 719
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->simSetIndex:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 725
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->simList:[Lcom/amazon/kcp/store/models/internal/BookInfo;

    iget v1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->simSetIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->simSetIndex:I

    invoke-virtual {p1}, Lcom/amazon/kcp/store/models/internal/BookInfo;->cloneInfoModel()Lcom/amazon/kcp/store/models/internal/BookInfo;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public cloneModel()Lcom/amazon/kcp/store/models/internal/BookDetails;
    .locals 5

    .prologue
    .line 72
    new-instance v0, Lcom/amazon/kcp/store/models/internal/BookDetails;

    invoke-direct {v0}, Lcom/amazon/kcp/store/models/internal/BookDetails;-><init>()V

    .line 74
    .local v0, bookDetails:Lcom/amazon/kcp/store/models/internal/BookDetails;
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->asin:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->asin:Ljava/lang/String;

    .line 75
    iget-boolean v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->availableForDevice:Z

    iput-boolean v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->availableForDevice:Z

    .line 76
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->title:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->title:Ljava/lang/String;

    .line 77
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->author:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->author:Ljava/lang/String;

    .line 78
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverImage:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverImage:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    .line 79
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverUrl:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverUrl:Ljava/lang/String;

    .line 80
    iget-boolean v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isOptimizedForDX:Z

    iput-boolean v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isOptimizedForDX:Z

    .line 81
    iget-boolean v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isTTSEnabled:Z

    iput-boolean v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isTTSEnabled:Z

    .line 82
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->licenseCount:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->licenseCount:Ljava/lang/Integer;

    .line 83
    iget v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->orderable:I

    iput v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->orderable:I

    .line 84
    iget v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->preOrder:I

    iput v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->preOrder:I

    .line 85
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->price:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->price:Ljava/lang/String;

    .line 86
    iget v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->rating:F

    iput v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->rating:F

    .line 87
    iget v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->priceValue:F

    iput v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->priceValue:F

    .line 88
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->editorialReviews:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->editorialReviews:Ljava/lang/String;

    .line 89
    iget v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->totalCustomerReviewCount:I

    iput v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->totalCustomerReviewCount:I

    .line 90
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->salesRank:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->salesRank:Ljava/lang/String;

    .line 91
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->numPages:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->numPages:Ljava/lang/String;

    .line 92
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->publisher:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->publisher:Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->publicationDate:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->publicationDate:Ljava/lang/String;

    .line 94
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->releaseDate:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->releaseDate:Ljava/lang/String;

    .line 95
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPrice:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPrice:Ljava/lang/String;

    .line 96
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPrice:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPrice:Ljava/lang/String;

    .line 97
    iget v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPriceValue:F

    iput v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPriceValue:F

    .line 98
    iget v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPriceValue:F

    iput v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPriceValue:F

    .line 99
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savings:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savings:Ljava/lang/String;

    .line 100
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->currencyCode:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->currencyCode:Ljava/lang/String;

    .line 101
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverImageBase64Encoded:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverImageBase64Encoded:Ljava/lang/String;

    .line 102
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->description:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->description:Ljava/lang/String;

    .line 103
    iget-boolean v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->hasSample:Z

    iput-boolean v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->hasSample:Z

    .line 104
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPriceCurrencyCode:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPriceCurrencyCode:Ljava/lang/String;

    .line 105
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPriceCurrencyCode:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPriceCurrencyCode:Ljava/lang/String;

    .line 106
    iget v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savingsValue:F

    iput v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savingsValue:F

    .line 107
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savingsCurrencyCode:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savingsCurrencyCode:Ljava/lang/String;

    .line 108
    iget-boolean v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isAgencyOffer:Z

    iput-boolean v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isAgencyOffer:Z

    .line 109
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->merchantName:Ljava/lang/String;

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->merchantName:Ljava/lang/String;

    .line 111
    iget v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->simSetIndex:I

    iput v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->simSetIndex:I

    .line 113
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    iget v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->simSetIndex:I

    if-ge v2, v3, :cond_0

    .line 115
    iget-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->simList:[Lcom/amazon/kcp/store/models/internal/BookInfo;

    iget-object v4, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->simList:[Lcom/amazon/kcp/store/models/internal/BookInfo;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_0
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    iget-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->histogramStarCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 120
    iget-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->histogramStarCounts:[I

    iget-object v4, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->histogramStarCounts:[I

    aget v4, v4, v1

    aput v4, v3, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->sampleReviews:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->sampleReviews:Ljava/util/ArrayList;

    .line 127
    iget-object v3, v0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v3}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 129
    return-object v0
.end method

.method public empty()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 137
    iput v4, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->preOrder:I

    .line 138
    iput v4, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->orderable:I

    .line 139
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->asin:Ljava/lang/String;

    .line 140
    iput-boolean v5, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->availableForDevice:Z

    .line 141
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->title:Ljava/lang/String;

    .line 142
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverUrl:Ljava/lang/String;

    .line 143
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverImage:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    .line 144
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->author:Ljava/lang/String;

    .line 145
    iput-boolean v4, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isOptimizedForDX:Z

    .line 146
    iput-boolean v5, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isTTSEnabled:Z

    .line 147
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->licenseCount:Ljava/lang/Integer;

    .line 148
    iput v2, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->rating:F

    .line 149
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->price:Ljava/lang/String;

    .line 150
    iput v2, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->priceValue:F

    .line 151
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->currencyCode:Ljava/lang/String;

    .line 152
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->editorialReviews:Ljava/lang/String;

    .line 153
    iput v4, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->totalCustomerReviewCount:I

    .line 154
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->salesRank:Ljava/lang/String;

    .line 155
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->numPages:Ljava/lang/String;

    .line 156
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->publisher:Ljava/lang/String;

    .line 157
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->publicationDate:Ljava/lang/String;

    .line 158
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->releaseDate:Ljava/lang/String;

    .line 159
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPrice:Ljava/lang/String;

    .line 160
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPrice:Ljava/lang/String;

    .line 161
    iput v2, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPriceValue:F

    .line 162
    iput v2, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPriceValue:F

    .line 163
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savings:Ljava/lang/String;

    .line 164
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverImageBase64Encoded:Ljava/lang/String;

    .line 165
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->description:Ljava/lang/String;

    .line 166
    iput-boolean v5, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->hasSample:Z

    .line 167
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPriceCurrencyCode:Ljava/lang/String;

    .line 168
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPriceCurrencyCode:Ljava/lang/String;

    .line 169
    iput v2, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savingsValue:F

    .line 170
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savingsCurrencyCode:Ljava/lang/String;

    .line 171
    iput-boolean v4, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isAgencyOffer:Z

    .line 172
    iput-object v3, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->merchantName:Ljava/lang/String;

    .line 174
    iput v4, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->simSetIndex:I

    .line 176
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->simList:[Lcom/amazon/kcp/store/models/internal/BookInfo;

    aput-object v3, v2, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_0
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    iget-object v2, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->histogramStarCounts:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->histogramStarCounts:[I

    aput v4, v2, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->sampleReviews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 187
    return-void
.end method

.method public getChangedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getCover()Lcom/amazon/system/drawing/Image;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverImage:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    if-nez v0, :cond_0

    .line 816
    const/4 v0, 0x0

    .line 820
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverImage:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/IDownloadableImage;->getImage()Lcom/amazon/system/drawing/Image;

    move-result-object v0

    goto :goto_0
.end method

.method public getCoverImageBase64Encoded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverImageBase64Encoded:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverState()I
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverImage:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverImage:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    invoke-interface {v0}, Lcom/amazon/kcp/application/internal/IDownloadableImage;->getDownloadState()I

    move-result v0

    .line 852
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEditorialReviewCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->editorialReviews:Ljava/lang/String;

    return-object v0
.end method

.method public getHistogramCounts()[I
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->histogramStarCounts:[I

    return-object v0
.end method

.method public getLicenseCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->licenseCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getListPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getListPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPriceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getListPriceValue()F
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPriceValue:F

    return v0
.end method

.method public getMerchantName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->merchantName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumPages()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->numPages:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceValue()F
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->priceValue:F

    return v0
.end method

.method public getPrintListPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPrintListPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPriceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPrintListPriceValue()F
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPriceValue:F

    return v0
.end method

.method public getProcessedCoverImage(Lcom/amazon/system/drawing/Image;Lcom/amazon/system/drawing/Image;)Lcom/amazon/system/drawing/Image;
    .locals 2
    .parameter "noCoverAvailableImage"
    .parameter "loadingCoverImage"

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/amazon/kcp/store/models/internal/BookDetails;->hasCover()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    .line 885
    :goto_0
    return-object v1

    .line 873
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/models/internal/BookDetails;->getCoverState()I

    move-result v0

    .line 875
    .local v0, coverState:I
    packed-switch v0, :pswitch_data_0

    move-object v1, p2

    .line 885
    goto :goto_0

    .line 878
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/models/internal/BookDetails;->getCover()Lcom/amazon/system/drawing/Image;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    move-object v1, p1

    .line 880
    goto :goto_0

    :pswitch_2
    move-object v1, p2

    .line 883
    goto :goto_0

    .line 875
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->publicationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSalesRank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->salesRank:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleCustomerReview(I)Lcom/amazon/kcp/store/models/internal/ReviewInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->sampleReviews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/store/models/internal/ReviewInfo;

    return-object p0
.end method

.method public getSampleCustomerReviewCount()I
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->sampleReviews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSavings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savings:Ljava/lang/String;

    return-object v0
.end method

.method public getSavingsCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savingsCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSavingsValue()F
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savingsValue:F

    return v0
.end method

.method public getSim(I)Lcom/amazon/kcp/store/models/IBookInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->simList:[Lcom/amazon/kcp/store/models/internal/BookInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSimCount()I
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->simSetIndex:I

    return v0
.end method

.method public getTotalCustomerReviewCount()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->totalCustomerReviewCount:I

    return v0
.end method

.method public hasCover()Z
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSample()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->hasSample:Z

    return v0
.end method

.method public isAgencyOffer()Z
    .locals 1

    .prologue
    .line 914
    iget-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isAgencyOffer:Z

    return v0
.end method

.method public isOptimizedForDX()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isOptimizedForDX:Z

    return v0
.end method

.method public isTTSEnabled()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isTTSEnabled:Z

    return v0
.end method

.method public setCover(Lcom/amazon/system/drawing/Image;)V
    .locals 1
    .parameter "coverImage"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverImage:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/internal/IDownloadableImage;->setImage(Lcom/amazon/system/drawing/Image;)V

    .line 806
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 807
    return-void
.end method

.method public setCoverImageBase64Encoded(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverImageBase64Encoded:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 220
    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverUrl:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 1
    .parameter "currencyCode"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->currencyCode:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->currencyCode:Ljava/lang/String;

    .line 627
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "description"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->description:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    :goto_0
    return-void

    .line 603
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->description:Ljava/lang/String;

    .line 604
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setEditorialReviewCount(Ljava/lang/String;)V
    .locals 1
    .parameter "editorialReviewCount"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->editorialReviews:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->editorialReviews:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setHasSample(Z)V
    .locals 1
    .parameter "hasSample"

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->hasSample:Z

    if-ne v0, p1, :cond_0

    .line 651
    :goto_0
    return-void

    .line 649
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->hasSample:Z

    .line 650
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setHistogramCount(II)V
    .locals 2
    .parameter "stars"
    .parameter "count"

    .prologue
    const/4 v1, 0x1

    .line 776
    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    if-ge p1, v1, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->histogramStarCounts:[I

    sub-int v1, p1, v1

    aput p2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 787
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setImage(Lcom/amazon/kcp/application/internal/IDownloadableImage;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 838
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->coverImage:Lcom/amazon/kcp/application/internal/IDownloadableImage;

    .line 839
    invoke-interface {p1}, Lcom/amazon/kcp/application/internal/IDownloadableImage;->getImage()Lcom/amazon/system/drawing/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/models/internal/BookDetails;->setCover(Lcom/amazon/system/drawing/Image;)V

    .line 840
    return-void
.end method

.method public setIsAgencyOffer(Z)V
    .locals 0
    .parameter "isAgencyOffer"

    .prologue
    .line 909
    iput-boolean p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isAgencyOffer:Z

    .line 910
    return-void
.end method

.method public setLicenseCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "licenseCount"

    .prologue
    .line 701
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->licenseCount:Ljava/lang/Integer;

    .line 702
    return-void
.end method

.method public setListPrice(Ljava/lang/String;)V
    .locals 1
    .parameter "listPrice"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPrice:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPrice:Ljava/lang/String;

    .line 503
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setListPriceCurrencyCode(Ljava/lang/String;)V
    .locals 0
    .parameter "listPriceCurrencyCode"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPriceCurrencyCode:Ljava/lang/String;

    .line 543
    return-void
.end method

.method public setListPriceValue(F)V
    .locals 1
    .parameter "listPriceValue"

    .prologue
    .line 396
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPriceValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->listPriceValue:F

    .line 402
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setMerchantName(Ljava/lang/String;)V
    .locals 0
    .parameter "merchantName"

    .prologue
    .line 895
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->merchantName:Ljava/lang/String;

    .line 896
    return-void
.end method

.method public setNumPages(Ljava/lang/String;)V
    .locals 1
    .parameter "numPages"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->numPages:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->numPages:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setOptimizedForDX(Z)V
    .locals 0
    .parameter "isOptimizedForDX"

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isOptimizedForDX:Z

    .line 668
    return-void
.end method

.method public setPriceValue(F)V
    .locals 1
    .parameter "priceValue"

    .prologue
    .line 575
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->priceValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->priceValue:F

    .line 581
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setPrintListPrice(Ljava/lang/String;)V
    .locals 1
    .parameter "printListPrice"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPrice:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPrice:Ljava/lang/String;

    .line 518
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setPrintListPriceCurrencyCode(Ljava/lang/String;)V
    .locals 0
    .parameter "printListPriceCurrencyCode"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPriceCurrencyCode:Ljava/lang/String;

    .line 551
    return-void
.end method

.method public setPrintListPriceValue(F)V
    .locals 1
    .parameter "printListPriceValue"

    .prologue
    .line 411
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPriceValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->printListPriceValue:F

    .line 417
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setPublicationDate(Ljava/lang/String;)V
    .locals 1
    .parameter "publicationDate"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->publicationDate:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->publicationDate:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 1
    .parameter "publisher"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->publisher:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->publisher:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setReleaseDate(Ljava/lang/String;)V
    .locals 1
    .parameter "releaseDate"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->releaseDate:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->releaseDate:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setSalesRank(Ljava/lang/String;)V
    .locals 1
    .parameter "salesRank"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->salesRank:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->salesRank:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setSavings(Ljava/lang/String;)V
    .locals 1
    .parameter "savings"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savings:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savings:Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setSavingsCurrencyCode(Ljava/lang/String;)V
    .locals 0
    .parameter "savingsCurrencyCode"

    .prologue
    .line 480
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savingsCurrencyCode:Ljava/lang/String;

    .line 481
    return-void
.end method

.method public setSavingsValue(F)V
    .locals 0
    .parameter "savingsValue"

    .prologue
    .line 464
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->savingsValue:F

    .line 465
    return-void
.end method

.method public setTTSEnabled(Z)V
    .locals 0
    .parameter "isTTSEnabled"

    .prologue
    .line 684
    iput-boolean p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->isTTSEnabled:Z

    .line 685
    return-void
.end method

.method public setTotalCustomerReviewCount(I)V
    .locals 1
    .parameter "customerReviewCount"

    .prologue
    .line 327
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->totalCustomerReviewCount:I

    if-ne v0, p1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->totalCustomerReviewCount:I

    .line 333
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookDetails;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method
