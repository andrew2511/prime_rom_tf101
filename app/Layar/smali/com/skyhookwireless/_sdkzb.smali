.class public Lcom/skyhookwireless/_sdkzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/skyhookwireless/_sdkwb;
.implements Lcom/skyhookwireless/_sdkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/skyhookwireless/_sdkzb;",
        ">;",
        "Lcom/skyhookwireless/_sdkwb;",
        "Lcom/skyhookwireless/_sdkw;"
    }
.end annotation


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkyb;

.field private final _sdkb:I

.field private final _sdkc:J

.field private final _sdkd:Lcom/skyhookwireless/_sdkub;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "&2N"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    :cond_0
    move v3, v1

    move v4, v2

    move-object v1, v0

    move v7, v2

    move-object v2, v0

    move v0, v7

    :goto_0
    aget-char v5, v1, v0

    rem-int/lit8 v6, v4, 0x5

    packed-switch v6, :pswitch_data_0

    const/16 v6, 0x3e

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    if-nez v3, :cond_1

    move-object v1, v2

    move v4, v0

    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/skyhookwireless/_sdkzb;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v6, 0x4b

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x41

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x13

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x65

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Lcom/skyhookwireless/_sdkyb;IJLcom/skyhookwireless/_sdkub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skyhookwireless/_sdkzb;->_sdka:Lcom/skyhookwireless/_sdkyb;

    iput p2, p0, Lcom/skyhookwireless/_sdkzb;->_sdkb:I

    iput-wide p3, p0, Lcom/skyhookwireless/_sdkzb;->_sdkc:J

    iput-object p5, p0, Lcom/skyhookwireless/_sdkzb;->_sdkd:Lcom/skyhookwireless/_sdkub;

    return-void
.end method


# virtual methods
.method public _sdka()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/_sdkzb;->_sdkb:I

    return v0
.end method

.method public _sdka(Lcom/skyhookwireless/_sdkzb;)I
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkzb;->_sdka:Lcom/skyhookwireless/_sdkyb;

    iget-object v1, p1, Lcom/skyhookwireless/_sdkzb;->_sdka:Lcom/skyhookwireless/_sdkyb;

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkyb;->_sdka(Lcom/skyhookwireless/_sdkyb;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkzb;->_sdkd:Lcom/skyhookwireless/_sdkub;

    iget-object v1, p1, Lcom/skyhookwireless/_sdkzb;->_sdkd:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkub;->_sdkb(Lcom/skyhookwireless/_sdkub;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/skyhookwireless/_sdkzb;->_sdkb:I

    iget v1, p1, Lcom/skyhookwireless/_sdkzb;->_sdkb:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public _sdka()Lcom/skyhookwireless/_sdkyb;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkzb;->_sdka:Lcom/skyhookwireless/_sdkyb;

    return-object v0
.end method

.method public _sdkb()J
    .locals 2

    iget-wide v0, p0, Lcom/skyhookwireless/_sdkzb;->_sdkc:J

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual {p0, p1}, Lcom/skyhookwireless/_sdkzb;->_sdka(Lcom/skyhookwireless/_sdkzb;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    check-cast p1, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual {p0, p1}, Lcom/skyhookwireless/_sdkzb;->_sdka(Lcom/skyhookwireless/_sdkzb;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public getAge()Lcom/skyhookwireless/_sdkub;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkzb;->_sdkd:Lcom/skyhookwireless/_sdkub;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    const/16 v0, 0x11

    mul-int/lit8 v0, v0, 0x25

    iget-object v0, p0, Lcom/skyhookwireless/_sdkzb;->_sdka:Lcom/skyhookwireless/_sdkyb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkyb;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lcom/skyhookwireless/_sdkzb;->_sdkc:J

    iget-wide v3, p0, Lcom/skyhookwireless/_sdkzb;->_sdkc:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/skyhookwireless/_sdkzb;->_sdkb:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkzb;->_sdka:Lcom/skyhookwireless/_sdkyb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/skyhookwireless/_sdkzb;->_sdkb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/skyhookwireless/_sdkzb;->_sdkc:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkzb;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
