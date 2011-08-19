.class public Lcom/android/internal/telephony/gsm/SmsCbHeader;
.super Ljava/lang/Object;
.source "SmsCbHeader.java"


# static fields
.field public static final PDU_HEADER_LENGTH:I = 0x6


# instance fields
.field public final dataCodingScheme:I

.field public final geographicalScope:I

.field public final messageCode:I

.field public final messageIdentifier:I

.field public final nrOfPages:I

.field public final pageIndex:I

.field public final updateNumber:I


# direct methods
.method public constructor <init>([B)V
    .registers 9
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_c

    array-length v2, p1

    const/4 v3, 0x6

    if-ge v2, v3, :cond_14

    .line 38
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal PDU"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_14
    aget-byte v2, p1, v4

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->geographicalScope:I

    .line 42
    aget-byte v2, p1, v4

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x4

    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageCode:I

    .line 43
    aget-byte v2, p1, v5

    and-int/lit8 v2, v2, 0xf

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->updateNumber:I

    .line 44
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    .line 45
    const/4 v2, 0x4

    aget-byte v2, p1, v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->dataCodingScheme:I

    .line 48
    aget-byte v2, p1, v6

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v1, v2, 0x4

    .line 49
    .local v1, pageIndex:I
    aget-byte v2, p1, v6

    and-int/lit8 v0, v2, 0xf

    .line 51
    .local v0, nrOfPages:I
    if-eqz v1, :cond_51

    if-eqz v0, :cond_51

    if-le v1, v0, :cond_53

    .line 52
    :cond_51
    const/4 v1, 0x1

    .line 53
    const/4 v0, 0x1

    .line 56
    :cond_53
    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    .line 57
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    .line 58
    return-void
.end method
