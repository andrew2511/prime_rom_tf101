.class Lcom/android/camera/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation([B)I
    .locals 7
    .parameter "jpeg"

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 p0, 0x0

    .line 118
    .end local p0
    :goto_0
    return p0

    .line 29
    .restart local p0
    :cond_0
    const/4 v1, 0x0

    .line 30
    .local v1, offset:I
    const/4 v0, 0x0

    .line 33
    .local v0, length:I
    :goto_1
    add-int/lit8 v2, v1, 0x3

    array-length v3, p0

    if-ge v2, v3, :cond_10

    add-int/lit8 v2, v1, 0x1

    .end local v1           #offset:I
    .local v2, offset:I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0xff

    if-ne v1, v3, :cond_e

    .line 34
    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    .line 37
    .local v1, marker:I
    const/16 v3, 0xff

    if-ne v1, v3, :cond_1

    move v1, v2

    .line 38
    .end local v2           #offset:I
    .local v1, offset:I
    goto :goto_1

    .line 40
    .local v1, marker:I
    .restart local v2       #offset:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    const/16 v3, 0xd8

    if-eq v1, v3, :cond_f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    move v1, v2

    .line 44
    .end local v2           #offset:I
    .local v1, offset:I
    goto :goto_1

    .line 47
    .local v1, marker:I
    .restart local v2       #offset:I
    :cond_2
    const/16 v3, 0xd9

    if-eq v1, v3, :cond_e

    const/16 v3, 0xda

    if-ne v1, v3, :cond_3

    move v1, v0

    .line 73
    .end local v0           #length:I
    .local v1, length:I
    :goto_2
    const/16 v0, 0x8

    if-le v1, v0, :cond_d

    .line 75
    const/4 v0, 0x4

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Lcom/android/camera/Exif;->pack([BIIZ)I

    move-result v4

    .line 76
    .local v4, tag:I
    const v0, 0x49492a00

    if-eq v4, v0, :cond_7

    const v0, 0x4d4d002a

    if-eq v4, v0, :cond_7

    .line 77
    const-string p0, "CameraExif"

    .end local p0
    const-string v0, "Invalid byte order"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 p0, 0x0

    goto :goto_0

    .line 52
    .end local v4           #tag:I
    .restart local v0       #length:I
    .local v1, marker:I
    .restart local p0
    :cond_3
    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Lcom/android/camera/Exif;->pack([BIIZ)I

    .end local v0           #length:I
    move-result v0

    .line 53
    .restart local v0       #length:I
    const/4 v3, 0x2

    if-lt v0, v3, :cond_4

    add-int v3, v2, v0

    array-length v4, p0

    if-le v3, v4, :cond_5

    .line 54
    :cond_4
    const-string p0, "CameraExif"

    .end local p0
    const-string v0, "Invalid length"

    .end local v0           #length:I
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 p0, 0x0

    goto :goto_0

    .line 59
    .restart local v0       #length:I
    .restart local p0
    :cond_5
    const/16 v3, 0xe1

    if-ne v1, v3, :cond_6

    const/16 v1, 0x8

    if-lt v0, v1, :cond_6

    .end local v1           #marker:I
    add-int/lit8 v1, v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {p0, v1, v3, v4}, Lcom/android/camera/Exif;->pack([BIIZ)I

    move-result v1

    const v3, 0x45786966

    if-ne v1, v3, :cond_6

    add-int/lit8 v1, v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v1, v3, v4}, Lcom/android/camera/Exif;->pack([BIIZ)I

    move-result v1

    if-nez v1, :cond_6

    .line 62
    add-int/lit8 v1, v2, 0x8

    .line 63
    .end local v2           #offset:I
    .local v1, offset:I
    add-int/lit8 v0, v0, -0x8

    move v2, v1

    .end local v1           #offset:I
    .restart local v2       #offset:I
    move v1, v0

    .line 64
    .end local v0           #length:I
    .local v1, length:I
    goto :goto_2

    .line 68
    .end local v1           #length:I
    .restart local v0       #length:I
    :cond_6
    add-int v1, v2, v0

    .line 69
    .end local v2           #offset:I
    .local v1, offset:I
    const/4 v0, 0x0

    .line 70
    goto/16 :goto_1

    .line 80
    .end local v0           #length:I
    .local v1, length:I
    .restart local v2       #offset:I
    .restart local v4       #tag:I
    :cond_7
    const v0, 0x49492a00

    if-ne v4, v0, :cond_9

    const/4 v0, 0x1

    move v3, v0

    .line 83
    .local v3, littleEndian:Z
    :goto_3
    add-int/lit8 v0, v2, 0x4

    const/4 v5, 0x4

    invoke-static {p0, v0, v5, v3}, Lcom/android/camera/Exif;->pack([BIIZ)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 84
    .local v0, count:I
    const/16 v5, 0xa

    if-lt v0, v5, :cond_8

    if-le v0, v1, :cond_a

    .line 85
    :cond_8
    const-string p0, "CameraExif"

    .end local p0
    const-string v0, "Invalid offset"

    .end local v0           #count:I
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 80
    .end local v3           #littleEndian:Z
    .restart local p0
    :cond_9
    const/4 v0, 0x0

    move v3, v0

    goto :goto_3

    .line 88
    .restart local v0       #count:I
    .restart local v3       #littleEndian:Z
    :cond_a
    add-int/2addr v2, v0

    .line 89
    sub-int/2addr v1, v0

    .line 92
    const/4 v0, 0x2

    sub-int v0, v2, v0

    const/4 v5, 0x2

    invoke-static {p0, v0, v5, v3}, Lcom/android/camera/Exif;->pack([BIIZ)I

    .end local v0           #count:I
    move-result v0

    .restart local v0       #count:I
    move v6, v0

    .end local v0           #count:I
    .local v6, count:I
    move v0, v4

    .end local v4           #tag:I
    .local v0, tag:I
    move v4, v2

    .end local v2           #offset:I
    .local v4, offset:I
    move v2, v1

    .end local v1           #length:I
    .local v2, length:I
    move v1, v6

    .line 93
    .end local v6           #count:I
    .local v1, count:I
    :goto_4
    add-int/lit8 v0, v1, -0x1

    .end local v1           #count:I
    .local v0, count:I
    if-lez v1, :cond_c

    const/16 v1, 0xc

    if-lt v2, v1, :cond_c

    .line 95
    const/4 v1, 0x2

    invoke-static {p0, v4, v1, v3}, Lcom/android/camera/Exif;->pack([BIIZ)I

    move-result v5

    .line 96
    .local v5, tag:I
    const/16 v1, 0x112

    if-ne v5, v1, :cond_b

    .line 98
    add-int/lit8 v0, v4, 0x8

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v3}, Lcom/android/camera/Exif;->pack([BIIZ)I

    .end local v0           #count:I
    move-result p0

    .line 99
    .local p0, orientation:I
    packed-switch p0, :pswitch_data_0

    .line 109
    :pswitch_0
    const-string p0, "CameraExif"

    .end local p0           #orientation:I
    const-string v0, "Unsupported orientation"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 101
    .restart local p0       #orientation:I
    :pswitch_1
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 103
    :pswitch_2
    const/16 p0, 0xb4

    goto/16 :goto_0

    .line 105
    :pswitch_3
    const/16 p0, 0x5a

    goto/16 :goto_0

    .line 107
    :pswitch_4
    const/16 p0, 0x10e

    goto/16 :goto_0

    .line 112
    .restart local v0       #count:I
    .local p0, jpeg:[B
    :cond_b
    add-int/lit8 v4, v4, 0xc

    .line 113
    add-int/lit8 v1, v2, -0xc

    .end local v2           #length:I
    .local v1, length:I
    move v2, v1

    .end local v1           #length:I
    .restart local v2       #length:I
    move v1, v0

    .end local v0           #count:I
    .local v1, count:I
    move v0, v5

    .end local v5           #tag:I
    .local v0, tag:I
    goto :goto_4

    .end local v1           #count:I
    .local v0, count:I
    :cond_c
    move p0, v2

    .end local v2           #length:I
    .local p0, length:I
    move v0, v4

    .line 117
    .end local v3           #littleEndian:Z
    .end local v4           #offset:I
    .local v0, offset:I
    :goto_5
    const-string p0, "CameraExif"

    .end local p0           #length:I
    const-string v0, "Orientation not found"

    .end local v0           #offset:I
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 p0, 0x0

    goto/16 :goto_0

    .local v1, length:I
    .local v2, offset:I
    .local p0, jpeg:[B
    :cond_d
    move p0, v1

    .end local v1           #length:I
    .local p0, length:I
    move v0, v2

    .end local v2           #offset:I
    .restart local v0       #offset:I
    goto :goto_5

    .local v0, length:I
    .restart local v2       #offset:I
    .local p0, jpeg:[B
    :cond_e
    move v1, v0

    .end local v0           #length:I
    .restart local v1       #length:I
    goto/16 :goto_2

    .restart local v0       #length:I
    .local v1, marker:I
    :cond_f
    move v1, v2

    .end local v2           #offset:I
    .local v1, offset:I
    goto/16 :goto_1

    :cond_10
    move v2, v1

    .end local v1           #offset:I
    .restart local v2       #offset:I
    move v1, v0

    .end local v0           #length:I
    .local v1, length:I
    goto/16 :goto_2

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static pack([BIIZ)I
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "littleEndian"

    .prologue
    .line 123
    const/4 v1, 0x1

    .line 124
    .local v1, step:I
    if-eqz p3, :cond_0

    .line 125
    const/4 v3, 0x1

    sub-int v3, p2, v3

    add-int/2addr p1, v3

    .line 126
    const/4 v1, -0x1

    .line 129
    :cond_0
    const/4 v2, 0x0

    .local v2, value:I
    move v0, p2

    .line 130
    .end local p2
    .local v0, length:I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0           #length:I
    .restart local p2
    if-lez v0, :cond_1

    .line 131
    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 132
    add-int/2addr p1, v1

    move v0, p2

    .end local p2
    .restart local v0       #length:I
    goto :goto_0

    .line 134
    .end local v0           #length:I
    .restart local p2
    :cond_1
    return v2
.end method
