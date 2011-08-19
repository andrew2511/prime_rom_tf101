.class public final Lcom/google/android/youtube/googlemobile/common/ParseHexUtil;
.super Ljava/lang/Object;


# static fields
.field public static final FIRST_BIT_OF_HEX:I = 0x8

.field public static final HEX_RADIX:I = 0x10

.field public static final INT_MIN:I = -0x80000000

.field public static final LONG_MASK_LOW_32_BITS:J = 0xffffffffL

.field public static final LONG_MIN:J = -0x8000000000000000L

.field public static final MASKING:I = 0x7

.field public static final MAX_INT_HEX_LEN:I = 0x8

.field public static final MAX_LONG_HEX_LEN:I = 0x10


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

.method public static parseHexInt(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v1, 0x10

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/google/android/youtube/googlemobile/common/ParseHexUtil;->isFirstBitSet(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/youtube/googlemobile/common/ParseHexUtil;->maskFirstBit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, -0x8000

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static parseHexLong(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/google/android/youtube/googlemobile/common/ParseHexUtil;->isFirstBitSet(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/youtube/googlemobile/common/ParseHexUtil;->maskFirstBit(Ljava/lang/String;)Ljava/lang/String;

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

.method public static toString(J)Ljava/lang/String;
    .locals 8

    const-wide v4, 0xffffffffL

    const/16 v3, 0x10

    const/16 v6, 0x8

    const/16 v0, 0x20

    shr-long v0, p0, v0

    and-long/2addr v0, v4

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    and-long v1, p0, v4

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v0, ""

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v6, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    :cond_2
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0
.end method
