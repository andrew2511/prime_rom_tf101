.class public Lcom/amazon/kcp/store/models/internal/BookInfo;
.super Lcom/amazon/kcp/internal/webservices/WebServiceModel;
.source "BookInfo.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/IBookInfo;


# static fields
.field private static final IMAGE_BORDER_SIZE:Ljava/lang/String; = "0"

.field private static final IMAGE_MAX_HEIGHT:Ljava/lang/String; = "150"

.field private static final IMAGE_MAX_WIDTH:Ljava/lang/String; = "120"


# instance fields
.field protected asin:Ljava/lang/String;

.field protected author:Ljava/lang/String;

.field protected availableForDevice:Z

.field protected coverUrl:Ljava/lang/String;

.field protected orderable:I

.field protected preOrder:I

.field protected price:Ljava/lang/String;

.field protected rating:F

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/amazon/kcp/internal/webservices/WebServiceModel;-><init>()V

    .line 30
    iput v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->preOrder:I

    .line 35
    iput v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->orderable:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->availableForDevice:Z

    return-void
.end method


# virtual methods
.method public cloneInfoModel()Lcom/amazon/kcp/store/models/internal/BookInfo;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/amazon/kcp/store/models/internal/BookInfo;

    invoke-direct {v0}, Lcom/amazon/kcp/store/models/internal/BookInfo;-><init>()V

    .line 92
    .local v0, copy:Lcom/amazon/kcp/store/models/internal/BookInfo;
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kcp/store/models/internal/BookInfo;->title:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->asin:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kcp/store/models/internal/BookInfo;->asin:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->author:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kcp/store/models/internal/BookInfo;->author:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->price:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kcp/store/models/internal/BookInfo;->price:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->coverUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/amazon/kcp/store/models/internal/BookInfo;->coverUrl:Ljava/lang/String;

    .line 97
    iget v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->rating:F

    iput v1, v0, Lcom/amazon/kcp/store/models/internal/BookInfo;->rating:F

    .line 98
    iget v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->preOrder:I

    iput v1, v0, Lcom/amazon/kcp/store/models/internal/BookInfo;->preOrder:I

    .line 99
    iget-boolean v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->availableForDevice:Z

    iput-boolean v1, v0, Lcom/amazon/kcp/store/models/internal/BookInfo;->availableForDevice:Z

    .line 100
    iget v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->orderable:I

    iput v1, v0, Lcom/amazon/kcp/store/models/internal/BookInfo;->orderable:I

    .line 101
    iget-object v1, v0, Lcom/amazon/kcp/store/models/internal/BookInfo;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 103
    return-object v0
.end method

.method public empty()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->title:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->asin:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->author:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->price:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->coverUrl:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->rating:F

    .line 117
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->preOrder:I

    .line 118
    iput v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->orderable:I

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->availableForDevice:Z

    .line 120
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 48
    if-eqz p1, :cond_0

    const-class v0, Lcom/amazon/kcp/store/models/internal/BookInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 55
    :goto_0
    return v0

    .line 53
    :cond_1
    check-cast p1, Lcom/amazon/kcp/store/models/internal/BookInfo;

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/store/models/internal/BookInfo;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->asin:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/store/models/internal/BookInfo;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->author:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/store/models/internal/BookInfo;->author:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->price:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/store/models/internal/BookInfo;->price:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->coverUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/store/models/internal/BookInfo;->coverUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->rating:F

    iget v1, p1, Lcom/amazon/kcp/store/models/internal/BookInfo;->rating:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->preOrder:I

    iget v1, p1, Lcom/amazon/kcp/store/models/internal/BookInfo;->preOrder:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->orderable:I

    iget v1, p1, Lcom/amazon/kcp/store/models/internal/BookInfo;->orderable:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->availableForDevice:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/store/models/internal/BookInfo;->availableForDevice:Z

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getAvailability()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 351
    iget-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->availableForDevice:Z

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x3

    .line 375
    :goto_0
    return v0

    .line 355
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->preOrder:I

    if-gtz v0, :cond_4

    .line 357
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->orderable:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->orderable:I

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->price:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    const/4 v0, 0x0

    goto :goto_0

    .line 363
    :cond_2
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->orderable:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->price:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    :cond_3
    move v0, v2

    .line 365
    goto :goto_0

    .line 370
    :cond_4
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->orderable:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->price:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 372
    goto :goto_0

    :cond_5
    move v0, v2

    .line 375
    goto :goto_0
.end method

.method public getAvailableForDevice()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->availableForDevice:Z

    return v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOrderable()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->orderable:I

    return v0
.end method

.method public getIsPreOrder()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->preOrder:I

    return v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()F
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->rating:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    const/4 v0, 0x1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->asin:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 75
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->author:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    .line 76
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->coverUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->preOrder:I

    add-int/2addr v0, v1

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->price:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->rating:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->title:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    .line 81
    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->asin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->author:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->coverUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->price:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 80
    :cond_4
    iget-object v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 1
    .parameter "asin"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->asin:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->asin:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1
    .parameter "author"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->author:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->author:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setAvailableForDevice(Z)V
    .locals 1
    .parameter "availableForDevice"

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->availableForDevice:Z

    if-ne v0, p1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->availableForDevice:Z

    .line 302
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    const/4 v5, 0x4

    .line 224
    const-string v1, ""

    .line 225
    .local v1, sizedURL:Ljava/lang/String;
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    const-string v0, "._BO0,0,0,0_SX120_SY150_"

    .line 228
    .local v0, size:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .end local v0           #size:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->coverUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_1
    iput-object v1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->coverUrl:Ljava/lang/String;

    .line 238
    iget-object v2, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v2}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setIsOrderable(I)V
    .locals 1
    .parameter "orderable"

    .prologue
    .line 325
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->orderable:I

    if-ne v0, p1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->orderable:I

    .line 331
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setIsPreOrder(I)V
    .locals 1
    .parameter "preorder"

    .prologue
    .line 274
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->preOrder:I

    if-ne v0, p1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->preOrder:I

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 1
    .parameter "price"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->price:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->price:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setRating(F)V
    .locals 1
    .parameter "rating"

    .prologue
    .line 254
    iget v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->rating:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->rating:F

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->title:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->title:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/BookInfo;->changeEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    goto :goto_0
.end method
