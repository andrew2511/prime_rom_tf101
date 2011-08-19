.class Lcom/amazon/topaz/styles/AddSpec;
.super Ljava/lang/Object;
.source "AddSpec.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final key_:Ljava/lang/String;

.field private final value_:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/topaz/styles/AddSpec;->key_:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/amazon/topaz/styles/AddSpec;->value_:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .parameter "otherObj"

    .prologue
    .line 27
    move-object v0, p1

    check-cast v0, Lcom/amazon/topaz/styles/AddSpec;

    move-object v2, v0

    .line 28
    .local v2, other:Lcom/amazon/topaz/styles/AddSpec;
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AddSpec;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/topaz/styles/AddSpec;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 29
    .local v1, cmpKey:I
    if-eqz v1, :cond_0

    move v3, v1

    .line 33
    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/topaz/styles/AddSpec;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/topaz/styles/AddSpec;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 91
    :goto_0
    return v2

    .line 60
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    instance-of v2, p1, Lcom/amazon/topaz/styles/AddSpec;

    if-nez v2, :cond_2

    move v2, v4

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/amazon/topaz/styles/AddSpec;

    move-object v1, v0

    .line 69
    .local v1, other:Lcom/amazon/topaz/styles/AddSpec;
    iget-object v2, p0, Lcom/amazon/topaz/styles/AddSpec;->key_:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 71
    iget-object v2, v1, Lcom/amazon/topaz/styles/AddSpec;->key_:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v4

    .line 73
    goto :goto_0

    .line 76
    :cond_3
    iget-object v2, p0, Lcom/amazon/topaz/styles/AddSpec;->key_:Ljava/lang/String;

    iget-object v3, v1, Lcom/amazon/topaz/styles/AddSpec;->key_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 78
    goto :goto_0

    .line 80
    :cond_4
    iget-object v2, p0, Lcom/amazon/topaz/styles/AddSpec;->value_:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 82
    iget-object v2, v1, Lcom/amazon/topaz/styles/AddSpec;->value_:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v2, v4

    .line 84
    goto :goto_0

    .line 87
    :cond_5
    iget-object v2, p0, Lcom/amazon/topaz/styles/AddSpec;->value_:Ljava/lang/String;

    iget-object v3, v1, Lcom/amazon/topaz/styles/AddSpec;->value_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    .line 89
    goto :goto_0

    :cond_6
    move v2, v5

    .line 91
    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amazon/topaz/styles/AddSpec;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amazon/topaz/styles/AddSpec;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x1

    .line 44
    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, Lcom/amazon/topaz/styles/AddSpec;->key_:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/topaz/styles/AddSpec;->value_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    .line 48
    return v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/styles/AddSpec;->key_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/amazon/topaz/styles/AddSpec;->value_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
