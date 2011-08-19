.class public final Lcom/google/android/youtube/core/model/Purchase$Builder;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/android/youtube/core/model/ModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/google/android/youtube/core/model/ModelBuilder",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        ">;"
    }
.end annotation


# instance fields
.field private expirationDate:Ljava/util/Date;

.field private id:Ljava/lang/String;

.field private itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

.field private itemUri:Landroid/net/Uri;

.field private pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

.field private purchaseDate:Ljava/util/Date;

.field private purchasedVideo:Lcom/google/android/youtube/core/model/Video;

.field private status:Lcom/google/android/youtube/core/model/Purchase$Status;

.field private streamable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    sget-object v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;->OTHER:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

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
    .line 212
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->id:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 214
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri:Landroid/net/Uri;

    .line 215
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchaseDate:Ljava/util/Date;

    .line 216
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->expirationDate:Ljava/util/Date;

    .line 217
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/PricingStructure;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    .line 218
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 219
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

    .line 220
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 221
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Purchase$Builder;->build()Lcom/google/android/youtube/core/model/Purchase;

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
    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchaseDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->expirationDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 206
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 208
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/Purchase;
    .locals 10

    .prologue
    .line 182
    new-instance v0, Lcom/google/android/youtube/core/model/Purchase;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchaseDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->expirationDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    iget-object v7, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    iget-boolean v8, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

    iget-object v9, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/core/model/Purchase;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase$ItemType;Landroid/net/Uri;Ljava/util/Date;Ljava/util/Date;Lcom/google/android/youtube/core/model/PricingStructure;Lcom/google/android/youtube/core/model/Purchase$Status;ZLcom/google/android/youtube/core/model/Video;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Purchase$Builder;->build()Lcom/google/android/youtube/core/model/Purchase;

    move-result-object v0

    return-object v0
.end method

.method public expirationDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0
    .parameter "value"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->expirationDate:Ljava/util/Date;

    .line 148
    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0
    .parameter "value"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->id:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public itemType(Lcom/google/android/youtube/core/model/Purchase$ItemType;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0
    .parameter "value"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    .line 153
    return-object p0
.end method

.method public itemUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0
    .parameter "value"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri:Landroid/net/Uri;

    .line 158
    return-object p0
.end method

.method public pricePaid(Lcom/google/android/youtube/core/model/PricingStructure;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0
    .parameter "value"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    .line 163
    return-object p0
.end method

.method public purchaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0
    .parameter "value"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchaseDate:Ljava/util/Date;

    .line 143
    return-object p0
.end method

.method public purchasedVideo(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0
    .parameter "video"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 178
    return-object p0
.end method

.method public status(Lcom/google/android/youtube/core/model/Purchase$Status;)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0
    .parameter "status"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    .line 168
    return-object p0
.end method

.method public streamable(Z)Lcom/google/android/youtube/core/model/Purchase$Builder;
    .locals 0
    .parameter "streamable"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Purchase$Builder;->streamable:Z

    .line 173
    return-object p0
.end method
