.class public final Lcom/skyhookwireless/wps/_sdkcb;
.super Lcom/skyhookwireless/wps/Location;

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/skyhookwireless/_sdkwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/skyhookwireless/wps/Location;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/skyhookwireless/wps/_sdkcb;",
        ">;",
        "Lcom/skyhookwireless/_sdkwb;"
    }
.end annotation


# instance fields
.field private final _sdkj:Lcom/skyhookwireless/_sdkyb;

.field private final _sdkk:I

.field private final _sdkl:D


# direct methods
.method public constructor <init>(Lcom/skyhookwireless/_sdkyb;DDID)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/skyhookwireless/wps/Location;-><init>(DD)V

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkj:Lcom/skyhookwireless/_sdkyb;

    iput p6, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkk:I

    iput-wide p7, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkl:D

    return-void
.end method


# virtual methods
.method public _sdka()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkk:I

    return v0
.end method

.method public _sdka(Lcom/skyhookwireless/wps/_sdkcb;)I
    .locals 5

    const/4 v4, -0x1

    if-nez p1, :cond_1

    move v0, v4

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkj:Lcom/skyhookwireless/_sdkyb;

    iget-object v1, p1, Lcom/skyhookwireless/wps/_sdkcb;->_sdkj:Lcom/skyhookwireless/_sdkyb;

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkyb;->_sdka(Lcom/skyhookwireless/_sdkyb;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkk:I

    iget v1, p1, Lcom/skyhookwireless/wps/_sdkcb;->_sdkk:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkl:D

    iget-wide v2, p1, Lcom/skyhookwireless/wps/_sdkcb;->_sdkl:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkl:D

    iget-wide v2, p1, Lcom/skyhookwireless/wps/_sdkcb;->_sdkl:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public _sdka()Lcom/skyhookwireless/_sdkyb;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkj:Lcom/skyhookwireless/_sdkyb;

    return-object v0
.end method

.method public _sdkb()D
    .locals 2

    iget-wide v0, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkl:D

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/skyhookwireless/wps/_sdkcb;

    invoke-virtual {p0, p1}, Lcom/skyhookwireless/wps/_sdkcb;->_sdka(Lcom/skyhookwireless/wps/_sdkcb;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    check-cast p1, Lcom/skyhookwireless/wps/_sdkcb;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkj:Lcom/skyhookwireless/_sdkyb;

    iget-object v1, p1, Lcom/skyhookwireless/wps/_sdkcb;->_sdkj:Lcom/skyhookwireless/_sdkyb;

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkyb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkk:I

    iget v1, p1, Lcom/skyhookwireless/wps/_sdkcb;->_sdkk:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkl:D

    iget-wide v2, p1, Lcom/skyhookwireless/wps/_sdkcb;->_sdkl:D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkj:Lcom/skyhookwireless/_sdkyb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkyb;->_sdka()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkj:Lcom/skyhookwireless/_sdkyb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/skyhookwireless/wps/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/skyhookwireless/wps/_sdkcb;->_sdkl:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
