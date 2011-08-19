.class public final Lcom/google/android/youtube/core/model/PricingStructure;
.super Ljava/lang/Object;
.source "PricingStructure.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/PricingStructure$Builder;,
        Lcom/google/android/youtube/core/model/PricingStructure$Type;
    }
.end annotation


# instance fields
.field public final duration:Lcom/google/android/youtube/core/model/Duration;

.field public final formats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hashCode:I

.field public final infoUri:Landroid/net/Uri;

.field public final price:Lcom/google/android/youtube/core/model/Money;

.field public final type:Lcom/google/android/youtube/core/model/PricingStructure$Type;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/model/PricingStructure$Type;Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)V
    .locals 0
    .parameter "type"
    .parameter "duration"
    .parameter "price"
    .parameter
    .parameter "infoUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/PricingStructure$Type;",
            "Lcom/google/android/youtube/core/model/Duration;",
            "Lcom/google/android/youtube/core/model/Money;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p4, formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    .line 50
    iput-object p2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    .line 51
    iput-object p3, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    .line 52
    iput-object p4, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    .line 53
    iput-object p5, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    .line 54
    return-void
.end method

.method public static createPurchase(Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure;
    .locals 6
    .parameter "price"
    .parameter
    .parameter "infoUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/Money;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/youtube/core/model/PricingStructure;"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "price may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "formats may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/google/android/youtube/core/model/PricingStructure;

    sget-object v1, Lcom/google/android/youtube/core/model/PricingStructure$Type;->PURCHASE:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/model/PricingStructure;-><init>(Lcom/google/android/youtube/core/model/PricingStructure$Type;Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static createRental(Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure;
    .locals 6
    .parameter "duration"
    .parameter "price"
    .parameter
    .parameter "infoUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/Duration;",
            "Lcom/google/android/youtube/core/model/Money;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/youtube/core/model/PricingStructure;"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "duration may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "price may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "formats may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v0, Lcom/google/android/youtube/core/model/PricingStructure;

    sget-object v1, Lcom/google/android/youtube/core/model/PricingStructure$Type;->RENT:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/model/PricingStructure;-><init>(Lcom/google/android/youtube/core/model/PricingStructure$Type;Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)V

    return-object v0
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
    .line 142
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/PricingStructure;->buildUpon()Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type(Lcom/google/android/youtube/core/model/PricingStructure$Type;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration(Lcom/google/android/youtube/core/model/Duration;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price(Lcom/google/android/youtube/core/model/Money;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats(Ljava/util/List;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    if-ne p1, p0, :cond_0

    move v2, v5

    .line 97
    :goto_0
    return v2

    .line 93
    :cond_0
    instance-of v2, p1, Lcom/google/android/youtube/core/model/PricingStructure;

    if-nez v2, :cond_1

    move v2, v4

    .line 94
    goto :goto_0

    .line 96
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/youtube/core/model/PricingStructure;

    move-object v1, v0

    .line 97
    .local v1, other:Lcom/google/android/youtube/core/model/PricingStructure;
    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/model/Money;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    iget v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->hashCode:I

    .line 107
    .local v0, result:I
    if-nez v0, :cond_0

    .line 108
    const/16 v0, 0x11

    .line 109
    mul-int/lit8 v1, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/PricingStructure$Type;->ordinal()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 110
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Duration;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 111
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 112
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 113
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Money;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 114
    iput v0, p0, Lcom/google/android/youtube/core/model/PricingStructure;->hashCode:I

    .line 116
    :cond_0
    return v0

    :cond_1
    move v2, v3

    .line 110
    goto :goto_0

    :cond_2
    move v2, v3

    .line 111
    goto :goto_1

    :cond_3
    move v2, v3

    .line 112
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "], "

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    sget-object v2, Lcom/google/android/youtube/core/model/PricingStructure$Type;->RENT:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " duration=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "info=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->infoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "money=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "formats=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
