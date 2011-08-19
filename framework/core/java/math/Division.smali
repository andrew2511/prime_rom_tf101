.class Ljava/math/Division;
.super Ljava/lang/Object;
.source "Division.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static divideArrayByInt([I[III)I
    .registers 14
    .parameter "quotient"
    .parameter "dividend"
    .parameter "dividendLength"
    .parameter "divisor"

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    .line 53
    .local v0, rem:J
    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 55
    .local v2, bLong:J
    const/4 v4, 0x1

    sub-int/2addr p2, v4

    .local p2, i:I
    :goto_b
    if-ltz p2, :cond_65

    .line 56
    const/16 v4, 0x20

    shl-long/2addr v0, v4

    aget v4, p1, p2

    .end local v0           #rem:J
    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long v8, v0, v4

    .line 58
    .local v8, temp:J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-ltz v0, :cond_32

    .line 59
    div-long v0, v8, v2

    .line 60
    .local v0, quot:J
    rem-long v4, v8, v2

    .line 87
    .local v4, rem:J
    :goto_25
    const-wide v6, 0xffffffffL

    and-long/2addr v0, v6

    long-to-int v0, v0

    aput v0, p0, p2

    .line 55
    .end local v0           #quot:J
    add-int/lit8 p2, p2, -0x1

    move-wide v0, v4

    .end local v4           #rem:J
    .local v0, rem:J
    goto :goto_b

    .line 66
    .end local v0           #rem:J
    :cond_32
    const/4 v0, 0x1

    ushr-long v0, v8, v0

    .line 67
    .local v0, aPos:J
    ushr-int/lit8 v4, p3, 0x1

    int-to-long v4, v4

    .line 68
    .local v4, bPos:J
    div-long v6, v0, v4

    .line 69
    .local v6, quot:J
    rem-long/2addr v0, v4

    .line 71
    .local v0, rem:J
    const/4 v4, 0x1

    shl-long/2addr v0, v4

    const-wide/16 v4, 0x1

    and-long/2addr v4, v8

    add-long/2addr v0, v4

    .line 72
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_67

    .line 74
    .end local v4           #bPos:J
    cmp-long v4, v6, v0

    if-gtz v4, :cond_4d

    .line 75
    sub-long/2addr v0, v6

    move-wide v4, v0

    .end local v0           #rem:J
    .local v4, rem:J
    move-wide v0, v6

    .end local v6           #quot:J
    .local v0, quot:J
    goto :goto_25

    .line 77
    .end local v4           #rem:J
    .local v0, rem:J
    .restart local v6       #quot:J
    :cond_4d
    sub-long v4, v6, v0

    cmp-long v4, v4, v2

    if-gtz v4, :cond_5b

    .line 78
    sub-long v4, v2, v6

    add-long/2addr v4, v0

    .line 79
    .end local v0           #rem:J
    .restart local v4       #rem:J
    const-wide/16 v0, 0x1

    sub-long v0, v6, v0

    .end local v6           #quot:J
    .local v0, quot:J
    goto :goto_25

    .line 81
    .end local v4           #rem:J
    .local v0, rem:J
    .restart local v6       #quot:J
    :cond_5b
    const/4 v4, 0x1

    shl-long v4, v2, v4

    sub-long/2addr v4, v6

    add-long/2addr v4, v0

    .line 82
    .end local v0           #rem:J
    .restart local v4       #rem:J
    const-wide/16 v0, 0x2

    sub-long v0, v6, v0

    .end local v6           #quot:J
    .local v0, quot:J
    goto :goto_25

    .line 89
    .end local v4           #rem:J
    .end local v8           #temp:J
    .local v0, rem:J
    :cond_65
    long-to-int p0, v0

    .end local p0
    return p0

    .restart local v6       #quot:J
    .restart local v8       #temp:J
    .restart local p0
    :cond_67
    move-wide v4, v0

    .end local v0           #rem:J
    .restart local v4       #rem:J
    move-wide v0, v6

    .end local v6           #quot:J
    .local v0, quot:J
    goto :goto_25
.end method
