.class public final Lcom/google/android/youtube/core/model/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/Purchase$Builder;,
        Lcom/google/android/youtube/core/model/Purchase$Status;,
        Lcom/google/android/youtube/core/model/Purchase$ItemType;
    }
.end annotation


# instance fields
.field public final expirationDate:Ljava/util/Date;

.field public final id:Ljava/lang/String;

.field public final itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

.field public final itemUri:Landroid/net/Uri;

.field public final pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

.field public final purchaseDate:Ljava/util/Date;

.field public final purchasedVideo:Lcom/google/android/youtube/core/model/Video;

.field public final status:Lcom/google/android/youtube/core/model/Purchase$Status;

.field public final streamable:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase$ItemType;Landroid/net/Uri;Ljava/util/Date;Ljava/util/Date;Lcom/google/android/youtube/core/model/PricingStructure;Lcom/google/android/youtube/core/model/Purchase$Status;ZLcom/google/android/youtube/core/model/Video;)V
    .locals 1
    .parameter "id"
    .parameter "itemType"
    .parameter "itemUri"
    .parameter "purchaseDate"
    .parameter "expirationDate"
    .parameter "pricePaid"
    .parameter "status"
    .parameter "streamable"
    .parameter "video"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "id may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    .line 59
    const-string v0, "itemType may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 60
    const-string v0, "itemUri may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->itemUri:Landroid/net/Uri;

    .line 61
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    .line 62
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    .line 63
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    .line 64
    iput-object p7, p0, Lcom/google/android/youtube/core/model/Purchase;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 65
    iput-boolean p8, p0, Lcom/google/android/youtube/core/model/Purchase;->streamable:Z

    .line 66
    iput-object p9, p0, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 67
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Purchase;->buildUpon()Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/google/android/youtube/core/model/Purchase$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Purchase$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType(Lcom/google/android/youtube/core/model/Purchase$ItemType;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->itemUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->expirationDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid(Lcom/google/android/youtube/core/model/PricingStructure;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->status(Lcom/google/android/youtube/core/model/Purchase$Status;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Purchase;->streamable:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable(Z)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 75
    if-ne p1, p0, :cond_0

    .line 76
    const/4 v2, 0x1

    .line 82
    :goto_0
    return v2

    .line 78
    :cond_0
    instance-of v2, p1, Lcom/google/android/youtube/core/model/Purchase;

    if-nez v2, :cond_1

    .line 79
    const/4 v2, 0x0

    goto :goto_0

    .line 81
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase;

    move-object v1, v0

    .line 82
    .local v1, other:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 2
    .parameter "now"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    sget-object v1, Lcom/google/android/youtube/core/model/Purchase$Status;->EXPIRED:Lcom/google/android/youtube/core/model/Purchase$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "\' "

    const-string v2, "\', "

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{id =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "itemType = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "itemUri = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->itemUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "purchaseDate = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "expirationDate = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pricePaid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "streamable = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Purchase;->streamable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
