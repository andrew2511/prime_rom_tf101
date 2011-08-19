.class public Lnet/oauth/OAuth$Parameter;
.super Ljava/lang/Object;
.source "OAuth.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oauth/OAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lnet/oauth/OAuth$Parameter;->key:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lnet/oauth/OAuth$Parameter;->value:Ljava/lang/String;

    .line 212
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 269
    :goto_0
    return v2

    .line 254
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 255
    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 257
    goto :goto_0

    .line 258
    :cond_2
    move-object v0, p1

    check-cast v0, Lnet/oauth/OAuth$Parameter;

    move-object v1, v0

    .line 259
    .local v1, that:Lnet/oauth/OAuth$Parameter;
    iget-object v2, p0, Lnet/oauth/OAuth$Parameter;->key:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 260
    iget-object v2, v1, Lnet/oauth/OAuth$Parameter;->key:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v4

    .line 261
    goto :goto_0

    .line 262
    :cond_3
    iget-object v2, p0, Lnet/oauth/OAuth$Parameter;->key:Ljava/lang/String;

    iget-object v3, v1, Lnet/oauth/OAuth$Parameter;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 263
    goto :goto_0

    .line 264
    :cond_4
    iget-object v2, p0, Lnet/oauth/OAuth$Parameter;->value:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 265
    iget-object v2, v1, Lnet/oauth/OAuth$Parameter;->value:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v2, v4

    .line 266
    goto :goto_0

    .line 267
    :cond_5
    iget-object v2, p0, Lnet/oauth/OAuth$Parameter;->value:Ljava/lang/String;

    iget-object v3, v1, Lnet/oauth/OAuth$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    .line 268
    goto :goto_0

    :cond_6
    move v2, v5

    .line 269
    goto :goto_0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lnet/oauth/OAuth$Parameter;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lnet/oauth/OAuth$Parameter;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lnet/oauth/OAuth$Parameter;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lnet/oauth/OAuth$Parameter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 242
    const/16 v0, 0x1f

    .line 243
    .local v0, prime:I
    const/4 v1, 0x1

    .line 244
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v2, p0, Lnet/oauth/OAuth$Parameter;->key:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 245
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lnet/oauth/OAuth$Parameter;->value:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    add-int v1, v2, v3

    .line 246
    return v1

    .line 244
    :cond_0
    iget-object v2, p0, Lnet/oauth/OAuth$Parameter;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 245
    :cond_1
    iget-object v3, p0, Lnet/oauth/OAuth$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 207
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lnet/oauth/OAuth$Parameter;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lnet/oauth/OAuth$Parameter;->value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iput-object p1, p0, Lnet/oauth/OAuth$Parameter;->value:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    iput-object p1, p0, Lnet/oauth/OAuth$Parameter;->value:Ljava/lang/String;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/oauth/OAuth$Parameter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/oauth/OAuth$Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/oauth/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
