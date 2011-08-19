.class public Lcom/layar/util/YUVUtil;
.super Ljava/lang/Object;
.source "YUVUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "layar.YUVUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeYUV(I[I[BII)Z
    .locals 1
    .parameter "pixelFormat"
    .parameter "out"
    .parameter "fg"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 16
    packed-switch p0, :pswitch_data_0

    .line 24
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 20
    :pswitch_1
    invoke-static {p1, p2, p3, p4}, Lcom/layar/util/YUVUtil;->decodeYcbCr_422_SP([I[BII)V

    .line 21
    const/4 v0, 0x1

    goto :goto_0

    .line 16
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static decodeYcbCr_422_SP([I[BII)V
    .locals 12
    .parameter "out"
    .parameter "fg"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 31
    mul-int v10, p2, p3

    .line 32
    .local v10, sz:I
    if-nez p0, :cond_0

    .line 33
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0
    const-string p1, "buffer \'out\' is null"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    .restart local p0
    .restart local p1
    :cond_0
    array-length v0, p0

    if-ge v0, v10, :cond_1

    .line 35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .end local p1
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    const-string p3, "buffer \'out\' size "

    .end local p3
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    .end local p0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 36
    const-string p2, " < minimum "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_1
    if-nez p1, :cond_2

    .line 38
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0
    const-string p1, "buffer \'fg\' is null"

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    .restart local p0
    .restart local p1
    :cond_2
    array-length v0, p1

    if-ge v0, v10, :cond_3

    .line 40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    const-string p3, "buffer \'fg\' size "

    .end local p3
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    .end local p1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 41
    const-string p2, " < minimum "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    mul-int/lit8 p2, v10, 0x3

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_3
    const/4 v1, 0x0

    .local v1, Cr:I
    const/4 v0, 0x0

    .line 44
    .local v0, Cb:I
    const/4 v2, 0x0

    .local v2, j:I
    move v7, v2

    .end local v2           #j:I
    .local v7, j:I
    :goto_0
    if-lt v7, p3, :cond_4

    .line 89
    return-void

    .line 45
    :cond_4
    mul-int v3, v7, p2

    .line 46
    .local v3, pixPtr:I
    shr-int/lit8 v8, v7, 0x1

    .line 47
    .local v8, jDiv2:I
    const/4 v2, 0x0

    .local v2, i:I
    move v9, v3

    .end local v3           #pixPtr:I
    .local v9, pixPtr:I
    move v6, v2

    .end local v2           #i:I
    .local v6, i:I
    :goto_1
    if-lt v6, p2, :cond_5

    .line 44
    add-int/lit8 v2, v7, 0x1

    .end local v7           #j:I
    .local v2, j:I
    move v7, v2

    .end local v2           #j:I
    .restart local v7       #j:I
    goto :goto_0

    .line 48
    :cond_5
    aget-byte v2, p1, v9

    .line 49
    .local v2, Y:I
    if-gez v2, :cond_10

    .line 50
    add-int/lit16 v2, v2, 0xff

    move v5, v2

    .line 51
    .end local v2           #Y:I
    .local v5, Y:I
    :goto_2
    and-int/lit8 v2, v6, 0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_f

    .line 52
    mul-int v0, v8, p2

    add-int/2addr v0, v10

    shr-int/lit8 v1, v6, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 54
    .local v1, cOff:I
    array-length v0, p1

    .end local v0           #Cb:I
    if-lt v1, v0, :cond_6

    .line 55
    const-string v0, "layar.YUVUtil"

    const-string v2, "This is not going to work!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v0, "layar.YUVUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--- j = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_6
    aget-byte v0, p1, v1

    .line 60
    .restart local v0       #Cb:I
    if-gez v0, :cond_8

    .line 61
    add-int/lit8 v0, v0, 0x7f

    .line 64
    :goto_3
    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    .line 65
    .local v1, Cr:I
    if-gez v1, :cond_9

    .line 66
    add-int/lit8 v1, v1, 0x7f

    move v2, v1

    .end local v1           #Cr:I
    .local v2, Cr:I
    move v1, v0

    .line 70
    .end local v0           #Cb:I
    .local v1, Cb:I
    :goto_4
    add-int v0, v5, v2

    shr-int/lit8 v3, v2, 0x2

    add-int/2addr v0, v3

    shr-int/lit8 v3, v2, 0x3

    add-int/2addr v0, v3

    shr-int/lit8 v3, v2, 0x5

    add-int/2addr v0, v3

    .line 71
    .local v0, R:I
    if-gez v0, :cond_a

    .line 72
    const/4 v0, 0x0

    move v4, v0

    .line 75
    .end local v0           #R:I
    .local v4, R:I
    :goto_5
    shr-int/lit8 v0, v1, 0x2

    sub-int v0, v5, v0

    shr-int/lit8 v3, v1, 0x4

    add-int/2addr v0, v3

    shr-int/lit8 v3, v1, 0x5

    add-int/2addr v0, v3

    shr-int/lit8 v3, v2, 0x1

    sub-int/2addr v0, v3

    shr-int/lit8 v3, v2, 0x3

    add-int/2addr v0, v3

    .line 76
    shr-int/lit8 v3, v2, 0x4

    .line 75
    add-int/2addr v0, v3

    .line 76
    shr-int/lit8 v3, v2, 0x5

    .line 75
    add-int/2addr v0, v3

    .line 77
    .local v0, G:I
    if-gez v0, :cond_b

    .line 78
    const/4 v0, 0x0

    move v3, v0

    .line 81
    .end local v0           #G:I
    .local v3, G:I
    :goto_6
    add-int v0, v5, v1

    shr-int/lit8 v5, v1, 0x1

    add-int/2addr v0, v5

    shr-int/lit8 v5, v1, 0x2

    add-int/2addr v0, v5

    shr-int/lit8 v5, v1, 0x6

    add-int/2addr v0, v5

    .line 82
    .local v0, B:I
    if-gez v0, :cond_c

    .line 83
    .end local v5           #Y:I
    const/4 v0, 0x0

    .line 86
    :cond_7
    :goto_7
    add-int/lit8 v5, v9, 0x1

    .end local v9           #pixPtr:I
    .local v5, pixPtr:I
    const/high16 v11, -0x100

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v11

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    aput v0, p0, v9

    .line 47
    .end local v0           #B:I
    .end local v3           #G:I
    add-int/lit8 v0, v6, 0x1

    .end local v6           #i:I
    .local v0, i:I
    move v9, v5

    .end local v5           #pixPtr:I
    .restart local v9       #pixPtr:I
    move v6, v0

    .end local v0           #i:I
    .restart local v6       #i:I
    move v0, v1

    .end local v1           #Cb:I
    .local v0, Cb:I
    move v1, v2

    .end local v2           #Cr:I
    .local v1, Cr:I
    goto/16 :goto_1

    .line 63
    .end local v4           #R:I
    .local v1, cOff:I
    .local v5, Y:I
    :cond_8
    add-int/lit8 v0, v0, -0x80

    goto :goto_3

    .line 68
    .local v1, Cr:I
    :cond_9
    add-int/lit8 v1, v1, -0x80

    move v2, v1

    .end local v1           #Cr:I
    .restart local v2       #Cr:I
    move v1, v0

    .end local v0           #Cb:I
    .local v1, Cb:I
    goto :goto_4

    .line 73
    .local v0, R:I
    :cond_a
    const/16 v3, 0xff

    if-le v0, v3, :cond_e

    .line 74
    const/16 v0, 0xff

    move v4, v0

    .end local v0           #R:I
    .restart local v4       #R:I
    goto :goto_5

    .line 79
    .local v0, G:I
    :cond_b
    const/16 v3, 0xff

    if-le v0, v3, :cond_d

    .line 80
    const/16 v0, 0xff

    move v3, v0

    .end local v0           #G:I
    .restart local v3       #G:I
    goto :goto_6

    .line 84
    .end local v5           #Y:I
    .local v0, B:I
    :cond_c
    const/16 v5, 0xff

    if-le v0, v5, :cond_7

    .line 85
    const/16 v0, 0xff

    goto :goto_7

    .end local v3           #G:I
    .local v0, G:I
    .restart local v5       #Y:I
    :cond_d
    move v3, v0

    .end local v0           #G:I
    .restart local v3       #G:I
    goto :goto_6

    .end local v3           #G:I
    .end local v4           #R:I
    .local v0, R:I
    :cond_e
    move v4, v0

    .end local v0           #R:I
    .restart local v4       #R:I
    goto :goto_5

    .end local v2           #Cr:I
    .end local v4           #R:I
    .local v0, Cb:I
    .local v1, Cr:I
    :cond_f
    move v2, v1

    .end local v1           #Cr:I
    .restart local v2       #Cr:I
    move v1, v0

    .end local v0           #Cb:I
    .local v1, Cb:I
    goto :goto_4

    .end local v5           #Y:I
    .restart local v0       #Cb:I
    .local v1, Cr:I
    .local v2, Y:I
    :cond_10
    move v5, v2

    .end local v2           #Y:I
    .restart local v5       #Y:I
    goto/16 :goto_2
.end method
