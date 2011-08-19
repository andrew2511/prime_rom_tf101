.class public final Lcom/google/android/youtube/core/model/PricingStructure$Builder;
.super Ljava/lang/Object;
.source "PricingStructure.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/PricingStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private duration:Lcom/google/android/youtube/core/model/Duration;

.field private formats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private infoUri:Landroid/net/Uri;

.field private price:Lcom/google/android/youtube/core/model/Money;

.field private type:Lcom/google/android/youtube/core/model/PricingStructure$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/PricingStructure$Type;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    .line 202
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Duration;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration:Lcom/google/android/youtube/core/model/Duration;

    .line 203
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    .line 204
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Money;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    .line 205
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    .line 206
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->build()Lcom/google/android/youtube/core/model/PricingStructure;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 197
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/PricingStructure;
    .locals 4

    .prologue
    .line 179
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    move-object v0, v1

    .line 180
    .local v0, formatsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    sget-object v2, Lcom/google/android/youtube/core/model/PricingStructure$Type;->RENT:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    if-ne v1, v2, :cond_1

    .line 181
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration:Lcom/google/android/youtube/core/model/Duration;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/youtube/core/model/PricingStructure;->createRental(Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure;

    move-result-object v1

    .line 183
    :goto_1
    return-object v1

    .line 179
    .end local v0           #formatsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 183
    .restart local v0       #formatsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    invoke-static {v1, v0, v2}, Lcom/google/android/youtube/core/model/PricingStructure;->createPurchase(Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure;

    move-result-object v1

    goto :goto_1
.end method

.method public duration(Lcom/google/android/youtube/core/model/Duration;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .locals 0
    .parameter "duration"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->duration:Lcom/google/android/youtube/core/model/Duration;

    .line 160
    return-object p0
.end method

.method public formats(Ljava/util/List;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/youtube/core/model/PricingStructure$Builder;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->formats:Ljava/util/List;

    .line 175
    return-object p0
.end method

.method public infoUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .locals 0
    .parameter "infoUri"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->infoUri:Landroid/net/Uri;

    .line 165
    return-object p0
.end method

.method public price(Lcom/google/android/youtube/core/model/Money;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .locals 0
    .parameter "price"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->price:Lcom/google/android/youtube/core/model/Money;

    .line 170
    return-object p0
.end method

.method public type(Lcom/google/android/youtube/core/model/PricingStructure$Type;)Lcom/google/android/youtube/core/model/PricingStructure$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/youtube/core/model/PricingStructure$Builder;->type:Lcom/google/android/youtube/core/model/PricingStructure$Type;

    .line 155
    return-object p0
.end method
