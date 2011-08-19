.class public final Lcom/skyhookwireless/_sdkq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/skyhookwireless/_sdkq;",
        ">;"
    }
.end annotation


# instance fields
.field private final _sdka:I

.field private final _sdkb:I

.field private final _sdkc:I

.field private final _sdkd:I

.field private final _sdke:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/skyhookwireless/_sdkq;->_sdka:I

    iput p2, p0, Lcom/skyhookwireless/_sdkq;->_sdkb:I

    iput v0, p0, Lcom/skyhookwireless/_sdkq;->_sdkc:I

    iput v0, p0, Lcom/skyhookwireless/_sdkq;->_sdkd:I

    iput p3, p0, Lcom/skyhookwireless/_sdkq;->_sdke:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/skyhookwireless/_sdkq;->_sdka:I

    iput p2, p0, Lcom/skyhookwireless/_sdkq;->_sdkb:I

    if-ne p3, v1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/skyhookwireless/_sdkq;->_sdkc:I

    iput p4, p0, Lcom/skyhookwireless/_sdkq;->_sdkd:I

    iput v1, p0, Lcom/skyhookwireless/_sdkq;->_sdke:I

    return-void

    :cond_0
    const v0, 0xffff

    and-int/2addr v0, p3

    goto :goto_0
.end method


# virtual methods
.method public _sdka()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdke:I

    return v0
.end method

.method public _sdka(Lcom/skyhookwireless/_sdkq;)I
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdka:I

    iget v1, p1, Lcom/skyhookwireless/_sdkq;->_sdka:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdkb:I

    iget v1, p1, Lcom/skyhookwireless/_sdkq;->_sdkb:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdkc:I

    iget v1, p1, Lcom/skyhookwireless/_sdkq;->_sdkc:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdkd:I

    iget v1, p1, Lcom/skyhookwireless/_sdkq;->_sdkd:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdke:I

    iget v1, p1, Lcom/skyhookwireless/_sdkq;->_sdke:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public _sdkb()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdkc:I

    return v0
.end method

.method public _sdkc()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdkd:I

    return v0
.end method

.method public _sdkd()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdka:I

    return v0
.end method

.method public _sdke()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdkb:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/skyhookwireless/_sdkq;

    invoke-virtual {p0, p1}, Lcom/skyhookwireless/_sdkq;->_sdka(Lcom/skyhookwireless/_sdkq;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    check-cast p1, Lcom/skyhookwireless/_sdkq;

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdkc:I

    iget v1, p1, Lcom/skyhookwireless/_sdkq;->_sdkc:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdkd:I

    iget v1, p1, Lcom/skyhookwireless/_sdkq;->_sdkd:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdkb:I

    iget v1, p1, Lcom/skyhookwireless/_sdkq;->_sdkb:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdka:I

    iget v1, p1, Lcom/skyhookwireless/_sdkq;->_sdka:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdke:I

    iget v1, p1, Lcom/skyhookwireless/_sdkq;->_sdke:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdke:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdkc:I

    iget v1, p0, Lcom/skyhookwireless/_sdkq;->_sdkd:I

    xor-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/skyhookwireless/_sdkq;->_sdke:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/skyhookwireless/_sdkq;->_sdka:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/skyhookwireless/_sdkq;->_sdkb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/skyhookwireless/_sdkq;->_sdke:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/skyhookwireless/_sdkq;->_sdkd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/skyhookwireless/_sdkq;->_sdkc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/skyhookwireless/_sdkq;->_sdke:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method
