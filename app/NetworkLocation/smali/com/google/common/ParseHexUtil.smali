.class public final Lcom/google/common/ParseHexUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isFirstBitSet(Ljava/lang/String;I)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private static maskFirstBit(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseHexLong(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/google/common/ParseHexUtil;->isFirstBitSet(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/ParseHexUtil;->maskFirstBit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0
.end method
