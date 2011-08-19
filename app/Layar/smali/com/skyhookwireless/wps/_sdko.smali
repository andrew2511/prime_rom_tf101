.class final Lcom/skyhookwireless/wps/_sdko;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/wps/_sdke;


# static fields
.field static final _sdki:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkb:Lcom/skyhookwireless/_sdko;

.field private final _sdkc:Lcom/skyhookwireless/_sdksc;

.field private final _sdkd:I

.field private final _sdke:J

.field private final _sdkf:J

.field private final _sdkg:Lcom/skyhookwireless/wps/_sdkkc;

.field private _sdkh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x31

    const/16 v12, 0x2d

    const/16 v11, 0x19

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "W\u0002pA]UCnDLYC|U[T\u0013mDW_"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_87

    move v3, v9

    :cond_0
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_0
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_0

    const/16 v7, 0x38

    :goto_1
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_1

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_0

    :cond_1
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_2
    if-gt v2, v3, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "p3j\r^C\u000ct\rHC\u0006oDWD\u00109^[P\r9"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_86

    move v3, v9

    :cond_2
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_3
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_1

    const/16 v7, 0x38

    :goto_4
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_3

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_3

    :cond_3
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_5
    if-gt v2, v3, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, 0x2

    const-string v2, "A\u000cnHJ\u0011\u0010vXJR\u00069DK\u0011"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_85

    move v4, v9

    :cond_4
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_6
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2

    const/16 v8, 0x38

    :goto_7
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_5

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_6

    :cond_5
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_8
    if-gt v3, v4, :cond_4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "R\u0006uAK\u0011\u0010zLV_\u0006}\r"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_84

    move v4, v9

    :cond_6
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_9
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_3

    const/16 v8, 0x38

    :goto_a
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_7

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_9

    :cond_7
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_b
    if-gt v3, v4, :cond_6

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "V\u0013j\rT^\u0000xYQ^\r#\r"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_83

    move v4, v9

    :cond_8
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_c
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_4

    const/16 v8, 0x38

    :goto_d
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_9

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_c

    :cond_9
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_e
    if-gt v3, v4, :cond_8

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F\n\u007fD\u0018_\u000cm\rVT\u0006}H\\"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_82

    move v4, v9

    :cond_a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_f
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_5

    const/16 v8, 0x38

    :goto_10
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_f

    :cond_b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_11
    if-gt v3, v4, :cond_a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Y\u0002wITT&oHVE\u00101\u0004\u0018C\u0006mXJ_\u0006}\roa0F~l~3"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_81

    move v4, v9

    :cond_c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_12
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_6

    const/16 v8, 0x38

    :goto_13
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_12

    :cond_d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_14
    if-gt v3, v4, :cond_c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "D\rp\\MTCX}K\u0011\u0010zLV_\u0006}\r"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_80

    move v4, v9

    :cond_e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_15
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_7

    const/16 v8, 0x38

    :goto_16
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_15

    :cond_f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_17
    if-gt v3, v4, :cond_e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\\\u0010"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7f

    move v4, v9

    :cond_10
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_18
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_8

    const/16 v8, 0x38

    :goto_19
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_11

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_18

    :cond_11
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_1a
    if-gt v3, v4, :cond_10

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "V\u0013j\r]G\u0006wY\u0018F\u000bpA]\u0011\u0010uH]A\nwJ"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7e

    move v4, v9

    :cond_12
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_1b
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_9

    const/16 v8, 0x38

    :goto_1c
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_13

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_1b

    :cond_13
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_1d
    if-gt v3, v4, :cond_12

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "E\ntH\\\u0011\u000clY\u0018F\u000bpA]\u0011\u0014xDLX\r~\r^^\u00119DVX\u0017pLT\u0011\u0013vZ]CCjYYE\u0016j"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7d

    move v4, v9

    :cond_14
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_1e
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_a

    const/16 v8, 0x38

    :goto_1f
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_15

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_1e

    :cond_15
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_20
    if-gt v3, v4, :cond_14

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Y\u0002wITT&k_WCK0\rLY\u0011|Z\u0018T\u001bzHHE\nvC"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7c

    move v4, v9

    :cond_16
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_21
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_b

    const/16 v8, 0x38

    :goto_22
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_17

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_21

    :cond_17
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_23
    if-gt v3, v4, :cond_16

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "R\u000fv^Q_\u00049zQ\u001c%p\rYU\u0002iY]C"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7b

    move v4, v9

    :cond_18
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_24
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_c

    const/16 v8, 0x38

    :goto_25
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_19

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_24

    :cond_19
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_26
    if-gt v3, v4, :cond_18

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "F\n\u007fD\u0018X\u00109C]T\u0007|I"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7a

    move v4, v9

    :cond_1a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_27
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_d

    const/16 v8, 0x38

    :goto_28
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_1b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_27

    :cond_1b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_29
    if-gt v3, v4, :cond_1a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Y\u0002wITT0zLV\u0019J9YW^\u00089"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_79

    move v4, v9

    :cond_1c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_2a
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_e

    const/16 v8, 0x38

    :goto_2b
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_1d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_2a

    :cond_1d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_2c
    if-gt v3, v4, :cond_1c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "X\u0004wBJX\r~\rQ_\u0015xAQUC^}k\u0011\u000fvNYE\nvC\u0002\u0011"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_78

    move v4, v9

    :cond_1e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_2d
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_f

    const/16 v8, 0x38

    :goto_2e
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_1f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_2d

    :cond_1f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_2f
    if-gt v3, v4, :cond_1e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u001dC}XJP\u0017pBV\u0011^9"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_77

    move v4, v9

    :cond_20
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_30
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_10

    const/16 v8, 0x38

    :goto_31
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_21

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_30

    :cond_21
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_32
    if-gt v3, v4, :cond_20

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "B\u0017x_L\u0011\u0010zLV_\nwJ\u0018F\nmE\u0018"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_76

    move v4, v9

    :cond_22
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_33
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_11

    const/16 v8, 0x38

    :goto_34
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_23

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_33

    :cond_23
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_35
    if-gt v3, v4, :cond_22

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "^\u0013|CQ_\u00049zQ\u001c%p\rYU\u0002iY]C"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_75

    move v4, v9

    :cond_24
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_36
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_12

    const/16 v8, 0x38

    :goto_37
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_25

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_36

    :cond_25
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_38
    if-gt v3, v4, :cond_24

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "B\u000f|HHX\r~\r^^\u00119XH\u0011\u0017v\r"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_74

    move v4, v9

    :cond_26
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_39
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_13

    const/16 v8, 0x38

    :goto_3a
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_27

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_39

    :cond_27
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_3b
    if-gt v3, v4, :cond_26

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "v3J"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_73

    move v4, v9

    :cond_28
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_3c
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_14

    const/16 v8, 0x38

    :goto_3d
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_29

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_3c

    :cond_29
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_3e
    if-gt v3, v4, :cond_28

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "v3J\rV^\u00179LNP\nuLZ]\u0006"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_72

    move v4, v9

    :cond_2a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_3f
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_15

    const/16 v8, 0x38

    :goto_40
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_2b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_3f

    :cond_2b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_41
    if-gt v3, v4, :cond_2a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "T\u000fx]KT\u00079\u0010\u0018"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_71

    move v4, v9

    :cond_2c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_42
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_16

    const/16 v8, 0x38

    :goto_43
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_2d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_42

    :cond_2d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_44
    if-gt v3, v4, :cond_2c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "F\n\u007fD\u0018_\u000cm\rVT\u0006}H\\\u001dC{XL\u0011\u0006aY]C\rxA\u0018A\u000cnHJ\u0011\u0010vXJR\u00069DK\u0011\u0000vCVT\u0000mH\\"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_70

    move v4, v9

    :cond_2e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_45
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_17

    const/16 v8, 0x38

    :goto_46
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_2f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_45

    :cond_2f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_47
    if-gt v3, v4, :cond_2e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "_\u000c9LNP\nuLZ]\u00069AWR\u0002mDW_C{HYR\u000cw^"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6f

    move v4, v9

    :cond_30
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_48
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_18

    const/16 v8, 0x38

    :goto_49
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_31

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_48

    :cond_31
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_4a
    if-gt v3, v4, :cond_30

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "F\n\u007fD\u0018T\u0015|CL\u0011\u0014qDTTCjA]T\u0013pC_"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_6e

    move v3, v9

    :cond_32
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_4b
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_19

    const/16 v7, 0x38

    :goto_4c
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_33

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_4b

    :cond_33
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_4d
    if-gt v2, v3, :cond_32

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/16 v1, 0x1a

    const-string v2, "P\u0001v_LT\u0007"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6d

    move v4, v9

    :cond_34
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_4e
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_1a

    const/16 v8, 0x38

    :goto_4f
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_35

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_4e

    :cond_35
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_50
    if-gt v3, v4, :cond_34

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "R\u000clA\\_Dm\rWA\u0006w\r\u007fb.9L\\P\u0013mHJ"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6c

    move v4, v9

    :cond_36
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_51
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_1b

    const/16 v8, 0x38

    :goto_52
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_37

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_51

    :cond_37
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_53
    if-gt v3, v4, :cond_36

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "B\u0017v]HX\r~"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6b

    move v4, v9

    :cond_38
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_54
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_1c

    const/16 v8, 0x38

    :goto_55
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_39

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_54

    :cond_39
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_56
    if-gt v3, v4, :cond_38

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "T\u0011kBJ\u0011\u0013kH\u0015R\u000cwC]R\u0017pC_"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6a

    move v4, v9

    :cond_3a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_57
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_1d

    const/16 v8, 0x38

    :goto_58
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_3b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_57

    :cond_3b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_59
    if-gt v3, v4, :cond_3a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "D\rp\\MTCzHT]\u00109^[P\rwH\\\u0011"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_69

    move v4, v9

    :cond_3c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_5a
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_1e

    const/16 v8, 0x38

    :goto_5b
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_3d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_5a

    :cond_3d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_5c
    if-gt v3, v4, :cond_3c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "R\u000clA\\_Dm\rKE\u0002kY\u0018v0T\rKR\u0002wCQ_\u0004"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_68

    move v4, v9

    :cond_3e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_5d
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_1f

    const/16 v8, 0x38

    :goto_5e
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_3f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_5d

    :cond_3f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_5f
    if-gt v3, v4, :cond_3e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "B\u0006uH[E7p@]\u0011\u0011|@YX\rpC_\u0011^9"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_67

    move v4, v9

    :cond_40
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_60
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_20

    const/16 v8, 0x38

    :goto_61
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_41

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_60

    :cond_41
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_62
    if-gt v3, v4, :cond_40

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u001dC}XJP\u0017pBV\u0011^9XVS\u000clC\\T\u0007"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_66

    move v4, v9

    :cond_42
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_63
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_21

    const/16 v8, 0x38

    :goto_64
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_43

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_63

    :cond_43
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_65
    if-gt v3, v4, :cond_42

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "V\u000cm\rVT\u00149jhbCuB[P\u0017pBV"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_65

    move v4, v9

    :cond_44
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_66
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_22

    const/16 v8, 0x38

    :goto_67
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_45

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_66

    :cond_45
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_68
    if-gt v3, v4, :cond_44

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u000bC"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_64

    move v4, v9

    :cond_46
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_69
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_23

    const/16 v8, 0x38

    :goto_6a
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_47

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_69

    :cond_47
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_6b
    if-gt v3, v4, :cond_46

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Y\u0002wITT0zLV\u0019J9_]E\u0016kC]UCN}kn0Mbh"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_63

    move v4, v9

    :cond_48
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_6c
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_24

    const/16 v8, 0x38

    :goto_6d
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_49

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_6c

    :cond_49
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_6e
    if-gt v3, v4, :cond_48

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "F\u0002pYQ_\u00049KWCCnD^XCjNY_CkHKD\u000fm^\u0018W\u000ck\rMACmB\u0018"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_62

    move v4, v9

    :cond_4a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_6f
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_25

    const/16 v8, 0x38

    :goto_70
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_4b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_6f

    :cond_4b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_71
    if-gt v3, v4, :cond_4a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "T\u001bzHHE\nvC\u0018F\u000bpA]\u0011\u0014xDLX\r~\r^^\u00119DVX\u0017pLT\u0011\u0013vZ]CCjYYE\u0016j"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_61

    move v4, v9

    :cond_4c
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_72
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_26

    const/16 v8, 0x38

    :goto_73
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_4d

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_72

    :cond_4d
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_74
    if-gt v3, v4, :cond_4c

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "p3j\rKR\u0002wC]UC"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_60

    move v4, v9

    :cond_4e
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_75
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_27

    const/16 v8, 0x38

    :goto_76
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_4f

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_75

    :cond_4f
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_77
    if-gt v3, v4, :cond_4e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "R\u0006uAK\u0011\u0005kBU\u0011\u0013kHNX\u000cl^\u0018B\u0000xC\u0018"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5f

    move v4, v9

    :cond_50
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_78
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_28

    const/16 v8, 0x38

    :goto_79
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_51

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_78

    :cond_51
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_7a
    if-gt v3, v4, :cond_50

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "V\u000cm\r]G\u0006wY\u0018W\u0011v@\u0018"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5e

    move v4, v9

    :cond_52
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_7b
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_29

    const/16 v8, 0x38

    :goto_7c
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_53

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_7b

    :cond_53
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_7d
    if-gt v3, v4, :cond_52

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "R\u000clA\\_Dm\rWA\u0006w\roXN_D\u0018P\u0007x]LT\u0011"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5d

    move v4, v9

    :cond_54
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_7e
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2a

    const/16 v8, 0x38

    :goto_7f
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_55

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_7e

    :cond_55
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_80
    if-gt v3, v4, :cond_54

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Y\u0002wITT&k_WCKN}kc\u0006mXJ_ vI]\u001f4I~gt1Kbjn4Pkqn-Vygp5Xdtp!Uh\u0011\u0011\u0011|YMC\r|I\u0018f3JnW_\u0017pCMP\u0017pBV\u001f4I~gb7V}"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5c

    move v4, v9

    :cond_56
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_81
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2b

    const/16 v8, 0x38

    :goto_82
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_57

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_81

    :cond_57
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_83
    if-gt v3, v4, :cond_56

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "U\u000cwH\u0010\u0018CmEJT\u00149H@R\u0006iYQ^\r"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5b

    move v4, v9

    :cond_58
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_84
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2c

    const/16 v8, 0x38

    :goto_85
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_59

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_84

    :cond_59
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_86
    if-gt v3, v4, :cond_58

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/wps/_sdkf;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_5a

    move v0, v10

    :goto_87
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdko;->_sdki:Z

    return-void

    :cond_5a
    move v0, v9

    goto :goto_87

    :pswitch_0
    move v7, v13

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x63

    goto/16 :goto_1

    :pswitch_2
    move v7, v11

    goto/16 :goto_1

    :pswitch_3
    move v7, v12

    goto/16 :goto_1

    :pswitch_4
    move v7, v13

    goto/16 :goto_4

    :pswitch_5
    const/16 v7, 0x63

    goto/16 :goto_4

    :pswitch_6
    move v7, v11

    goto/16 :goto_4

    :pswitch_7
    move v7, v12

    goto/16 :goto_4

    :pswitch_8
    move v8, v13

    goto/16 :goto_7

    :pswitch_9
    const/16 v8, 0x63

    goto/16 :goto_7

    :pswitch_a
    move v8, v11

    goto/16 :goto_7

    :pswitch_b
    move v8, v12

    goto/16 :goto_7

    :pswitch_c
    move v8, v13

    goto/16 :goto_a

    :pswitch_d
    const/16 v8, 0x63

    goto/16 :goto_a

    :pswitch_e
    move v8, v11

    goto/16 :goto_a

    :pswitch_f
    move v8, v12

    goto/16 :goto_a

    :pswitch_10
    move v8, v13

    goto/16 :goto_d

    :pswitch_11
    const/16 v8, 0x63

    goto/16 :goto_d

    :pswitch_12
    move v8, v11

    goto/16 :goto_d

    :pswitch_13
    move v8, v12

    goto/16 :goto_d

    :pswitch_14
    move v8, v13

    goto/16 :goto_10

    :pswitch_15
    const/16 v8, 0x63

    goto/16 :goto_10

    :pswitch_16
    move v8, v11

    goto/16 :goto_10

    :pswitch_17
    move v8, v12

    goto/16 :goto_10

    :pswitch_18
    move v8, v13

    goto/16 :goto_13

    :pswitch_19
    const/16 v8, 0x63

    goto/16 :goto_13

    :pswitch_1a
    move v8, v11

    goto/16 :goto_13

    :pswitch_1b
    move v8, v12

    goto/16 :goto_13

    :pswitch_1c
    move v8, v13

    goto/16 :goto_16

    :pswitch_1d
    const/16 v8, 0x63

    goto/16 :goto_16

    :pswitch_1e
    move v8, v11

    goto/16 :goto_16

    :pswitch_1f
    move v8, v12

    goto/16 :goto_16

    :pswitch_20
    move v8, v13

    goto/16 :goto_19

    :pswitch_21
    const/16 v8, 0x63

    goto/16 :goto_19

    :pswitch_22
    move v8, v11

    goto/16 :goto_19

    :pswitch_23
    move v8, v12

    goto/16 :goto_19

    :pswitch_24
    move v8, v13

    goto/16 :goto_1c

    :pswitch_25
    const/16 v8, 0x63

    goto/16 :goto_1c

    :pswitch_26
    move v8, v11

    goto/16 :goto_1c

    :pswitch_27
    move v8, v12

    goto/16 :goto_1c

    :pswitch_28
    move v8, v13

    goto/16 :goto_1f

    :pswitch_29
    const/16 v8, 0x63

    goto/16 :goto_1f

    :pswitch_2a
    move v8, v11

    goto/16 :goto_1f

    :pswitch_2b
    move v8, v12

    goto/16 :goto_1f

    :pswitch_2c
    move v8, v13

    goto/16 :goto_22

    :pswitch_2d
    const/16 v8, 0x63

    goto/16 :goto_22

    :pswitch_2e
    move v8, v11

    goto/16 :goto_22

    :pswitch_2f
    move v8, v12

    goto/16 :goto_22

    :pswitch_30
    move v8, v13

    goto/16 :goto_25

    :pswitch_31
    const/16 v8, 0x63

    goto/16 :goto_25

    :pswitch_32
    move v8, v11

    goto/16 :goto_25

    :pswitch_33
    move v8, v12

    goto/16 :goto_25

    :pswitch_34
    move v8, v13

    goto/16 :goto_28

    :pswitch_35
    const/16 v8, 0x63

    goto/16 :goto_28

    :pswitch_36
    move v8, v11

    goto/16 :goto_28

    :pswitch_37
    move v8, v12

    goto/16 :goto_28

    :pswitch_38
    move v8, v13

    goto/16 :goto_2b

    :pswitch_39
    const/16 v8, 0x63

    goto/16 :goto_2b

    :pswitch_3a
    move v8, v11

    goto/16 :goto_2b

    :pswitch_3b
    move v8, v12

    goto/16 :goto_2b

    :pswitch_3c
    move v8, v13

    goto/16 :goto_2e

    :pswitch_3d
    const/16 v8, 0x63

    goto/16 :goto_2e

    :pswitch_3e
    move v8, v11

    goto/16 :goto_2e

    :pswitch_3f
    move v8, v12

    goto/16 :goto_2e

    :pswitch_40
    move v8, v13

    goto/16 :goto_31

    :pswitch_41
    const/16 v8, 0x63

    goto/16 :goto_31

    :pswitch_42
    move v8, v11

    goto/16 :goto_31

    :pswitch_43
    move v8, v12

    goto/16 :goto_31

    :pswitch_44
    move v8, v13

    goto/16 :goto_34

    :pswitch_45
    const/16 v8, 0x63

    goto/16 :goto_34

    :pswitch_46
    move v8, v11

    goto/16 :goto_34

    :pswitch_47
    move v8, v12

    goto/16 :goto_34

    :pswitch_48
    move v8, v13

    goto/16 :goto_37

    :pswitch_49
    const/16 v8, 0x63

    goto/16 :goto_37

    :pswitch_4a
    move v8, v11

    goto/16 :goto_37

    :pswitch_4b
    move v8, v12

    goto/16 :goto_37

    :pswitch_4c
    move v8, v13

    goto/16 :goto_3a

    :pswitch_4d
    const/16 v8, 0x63

    goto/16 :goto_3a

    :pswitch_4e
    move v8, v11

    goto/16 :goto_3a

    :pswitch_4f
    move v8, v12

    goto/16 :goto_3a

    :pswitch_50
    move v8, v13

    goto/16 :goto_3d

    :pswitch_51
    const/16 v8, 0x63

    goto/16 :goto_3d

    :pswitch_52
    move v8, v11

    goto/16 :goto_3d

    :pswitch_53
    move v8, v12

    goto/16 :goto_3d

    :pswitch_54
    move v8, v13

    goto/16 :goto_40

    :pswitch_55
    const/16 v8, 0x63

    goto/16 :goto_40

    :pswitch_56
    move v8, v11

    goto/16 :goto_40

    :pswitch_57
    move v8, v12

    goto/16 :goto_40

    :pswitch_58
    move v8, v13

    goto/16 :goto_43

    :pswitch_59
    const/16 v8, 0x63

    goto/16 :goto_43

    :pswitch_5a
    move v8, v11

    goto/16 :goto_43

    :pswitch_5b
    move v8, v12

    goto/16 :goto_43

    :pswitch_5c
    move v8, v13

    goto/16 :goto_46

    :pswitch_5d
    const/16 v8, 0x63

    goto/16 :goto_46

    :pswitch_5e
    move v8, v11

    goto/16 :goto_46

    :pswitch_5f
    move v8, v12

    goto/16 :goto_46

    :pswitch_60
    move v8, v13

    goto/16 :goto_49

    :pswitch_61
    const/16 v8, 0x63

    goto/16 :goto_49

    :pswitch_62
    move v8, v11

    goto/16 :goto_49

    :pswitch_63
    move v8, v12

    goto/16 :goto_49

    :pswitch_64
    move v7, v13

    goto/16 :goto_4c

    :pswitch_65
    const/16 v7, 0x63

    goto/16 :goto_4c

    :pswitch_66
    move v7, v11

    goto/16 :goto_4c

    :pswitch_67
    move v7, v12

    goto/16 :goto_4c

    :pswitch_68
    move v8, v13

    goto/16 :goto_4f

    :pswitch_69
    const/16 v8, 0x63

    goto/16 :goto_4f

    :pswitch_6a
    move v8, v11

    goto/16 :goto_4f

    :pswitch_6b
    move v8, v12

    goto/16 :goto_4f

    :pswitch_6c
    move v8, v13

    goto/16 :goto_52

    :pswitch_6d
    const/16 v8, 0x63

    goto/16 :goto_52

    :pswitch_6e
    move v8, v11

    goto/16 :goto_52

    :pswitch_6f
    move v8, v12

    goto/16 :goto_52

    :pswitch_70
    move v8, v13

    goto/16 :goto_55

    :pswitch_71
    const/16 v8, 0x63

    goto/16 :goto_55

    :pswitch_72
    move v8, v11

    goto/16 :goto_55

    :pswitch_73
    move v8, v12

    goto/16 :goto_55

    :pswitch_74
    move v8, v13

    goto/16 :goto_58

    :pswitch_75
    const/16 v8, 0x63

    goto/16 :goto_58

    :pswitch_76
    move v8, v11

    goto/16 :goto_58

    :pswitch_77
    move v8, v12

    goto/16 :goto_58

    :pswitch_78
    move v8, v13

    goto/16 :goto_5b

    :pswitch_79
    const/16 v8, 0x63

    goto/16 :goto_5b

    :pswitch_7a
    move v8, v11

    goto/16 :goto_5b

    :pswitch_7b
    move v8, v12

    goto/16 :goto_5b

    :pswitch_7c
    move v8, v13

    goto/16 :goto_5e

    :pswitch_7d
    const/16 v8, 0x63

    goto/16 :goto_5e

    :pswitch_7e
    move v8, v11

    goto/16 :goto_5e

    :pswitch_7f
    move v8, v12

    goto/16 :goto_5e

    :pswitch_80
    move v8, v13

    goto/16 :goto_61

    :pswitch_81
    const/16 v8, 0x63

    goto/16 :goto_61

    :pswitch_82
    move v8, v11

    goto/16 :goto_61

    :pswitch_83
    move v8, v12

    goto/16 :goto_61

    :pswitch_84
    move v8, v13

    goto/16 :goto_64

    :pswitch_85
    const/16 v8, 0x63

    goto/16 :goto_64

    :pswitch_86
    move v8, v11

    goto/16 :goto_64

    :pswitch_87
    move v8, v12

    goto/16 :goto_64

    :pswitch_88
    move v8, v13

    goto/16 :goto_67

    :pswitch_89
    const/16 v8, 0x63

    goto/16 :goto_67

    :pswitch_8a
    move v8, v11

    goto/16 :goto_67

    :pswitch_8b
    move v8, v12

    goto/16 :goto_67

    :pswitch_8c
    move v8, v13

    goto/16 :goto_6a

    :pswitch_8d
    const/16 v8, 0x63

    goto/16 :goto_6a

    :pswitch_8e
    move v8, v11

    goto/16 :goto_6a

    :pswitch_8f
    move v8, v12

    goto/16 :goto_6a

    :pswitch_90
    move v8, v13

    goto/16 :goto_6d

    :pswitch_91
    const/16 v8, 0x63

    goto/16 :goto_6d

    :pswitch_92
    move v8, v11

    goto/16 :goto_6d

    :pswitch_93
    move v8, v12

    goto/16 :goto_6d

    :pswitch_94
    move v8, v13

    goto/16 :goto_70

    :pswitch_95
    const/16 v8, 0x63

    goto/16 :goto_70

    :pswitch_96
    move v8, v11

    goto/16 :goto_70

    :pswitch_97
    move v8, v12

    goto/16 :goto_70

    :pswitch_98
    move v8, v13

    goto/16 :goto_73

    :pswitch_99
    const/16 v8, 0x63

    goto/16 :goto_73

    :pswitch_9a
    move v8, v11

    goto/16 :goto_73

    :pswitch_9b
    move v8, v12

    goto/16 :goto_73

    :pswitch_9c
    move v8, v13

    goto/16 :goto_76

    :pswitch_9d
    const/16 v8, 0x63

    goto/16 :goto_76

    :pswitch_9e
    move v8, v11

    goto/16 :goto_76

    :pswitch_9f
    move v8, v12

    goto/16 :goto_76

    :pswitch_a0
    move v8, v13

    goto/16 :goto_79

    :pswitch_a1
    const/16 v8, 0x63

    goto/16 :goto_79

    :pswitch_a2
    move v8, v11

    goto/16 :goto_79

    :pswitch_a3
    move v8, v12

    goto/16 :goto_79

    :pswitch_a4
    move v8, v13

    goto/16 :goto_7c

    :pswitch_a5
    const/16 v8, 0x63

    goto/16 :goto_7c

    :pswitch_a6
    move v8, v11

    goto/16 :goto_7c

    :pswitch_a7
    move v8, v12

    goto/16 :goto_7c

    :pswitch_a8
    move v8, v13

    goto/16 :goto_7f

    :pswitch_a9
    const/16 v8, 0x63

    goto/16 :goto_7f

    :pswitch_aa
    move v8, v11

    goto/16 :goto_7f

    :pswitch_ab
    move v8, v12

    goto/16 :goto_7f

    :pswitch_ac
    move v8, v13

    goto/16 :goto_82

    :pswitch_ad
    const/16 v8, 0x63

    goto/16 :goto_82

    :pswitch_ae
    move v8, v11

    goto/16 :goto_82

    :pswitch_af
    move v8, v12

    goto/16 :goto_82

    :pswitch_b0
    move v8, v13

    goto/16 :goto_85

    :pswitch_b1
    const/16 v8, 0x63

    goto/16 :goto_85

    :pswitch_b2
    move v8, v11

    goto/16 :goto_85

    :pswitch_b3
    move v8, v12

    goto/16 :goto_85

    :cond_5b
    move v4, v9

    goto/16 :goto_86

    :cond_5c
    move v4, v9

    goto/16 :goto_83

    :cond_5d
    move v4, v9

    goto/16 :goto_80

    :cond_5e
    move v4, v9

    goto/16 :goto_7d

    :cond_5f
    move v4, v9

    goto/16 :goto_7a

    :cond_60
    move v4, v9

    goto/16 :goto_77

    :cond_61
    move v4, v9

    goto/16 :goto_74

    :cond_62
    move v4, v9

    goto/16 :goto_71

    :cond_63
    move v4, v9

    goto/16 :goto_6e

    :cond_64
    move v4, v9

    goto/16 :goto_6b

    :cond_65
    move v4, v9

    goto/16 :goto_68

    :cond_66
    move v4, v9

    goto/16 :goto_65

    :cond_67
    move v4, v9

    goto/16 :goto_62

    :cond_68
    move v4, v9

    goto/16 :goto_5f

    :cond_69
    move v4, v9

    goto/16 :goto_5c

    :cond_6a
    move v4, v9

    goto/16 :goto_59

    :cond_6b
    move v4, v9

    goto/16 :goto_56

    :cond_6c
    move v4, v9

    goto/16 :goto_53

    :cond_6d
    move v4, v9

    goto/16 :goto_50

    :cond_6e
    move v3, v9

    goto/16 :goto_4d

    :cond_6f
    move v4, v9

    goto/16 :goto_4a

    :cond_70
    move v4, v9

    goto/16 :goto_47

    :cond_71
    move v4, v9

    goto/16 :goto_44

    :cond_72
    move v4, v9

    goto/16 :goto_41

    :cond_73
    move v4, v9

    goto/16 :goto_3e

    :cond_74
    move v4, v9

    goto/16 :goto_3b

    :cond_75
    move v4, v9

    goto/16 :goto_38

    :cond_76
    move v4, v9

    goto/16 :goto_35

    :cond_77
    move v4, v9

    goto/16 :goto_32

    :cond_78
    move v4, v9

    goto/16 :goto_2f

    :cond_79
    move v4, v9

    goto/16 :goto_2c

    :cond_7a
    move v4, v9

    goto/16 :goto_29

    :cond_7b
    move v4, v9

    goto/16 :goto_26

    :cond_7c
    move v4, v9

    goto/16 :goto_23

    :cond_7d
    move v4, v9

    goto/16 :goto_20

    :cond_7e
    move v4, v9

    goto/16 :goto_1d

    :cond_7f
    move v4, v9

    goto/16 :goto_1a

    :cond_80
    move v4, v9

    goto/16 :goto_17

    :cond_81
    move v4, v9

    goto/16 :goto_14

    :cond_82
    move v4, v9

    goto/16 :goto_11

    :cond_83
    move v4, v9

    goto/16 :goto_e

    :cond_84
    move v4, v9

    goto/16 :goto_b

    :cond_85
    move v4, v9

    goto/16 :goto_8

    :cond_86
    move v3, v9

    goto/16 :goto_5

    :cond_87
    move v3, v9

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x0
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x0
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
    .end packed-switch

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
    .end packed-switch

    :pswitch_data_17
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
    .end packed-switch

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
    .end packed-switch

    :pswitch_data_19
    .packed-switch 0x0
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
    .end packed-switch

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
    .end packed-switch

    :pswitch_data_1b
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
    .end packed-switch

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
    .end packed-switch

    :pswitch_data_1d
    .packed-switch 0x0
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
    .end packed-switch

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
    .end packed-switch

    :pswitch_data_1f
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
    .end packed-switch

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
    .end packed-switch

    :pswitch_data_21
    .packed-switch 0x0
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
    .end packed-switch

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
    .end packed-switch

    :pswitch_data_23
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
    .end packed-switch

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
    .end packed-switch

    :pswitch_data_25
    .packed-switch 0x0
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
    .end packed-switch

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
    .end packed-switch

    :pswitch_data_27
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
    .end packed-switch

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
    .end packed-switch

    :pswitch_data_29
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
    .end packed-switch

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
    .end packed-switch

    :pswitch_data_2b
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
    .end packed-switch

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
    .end packed-switch
.end method

.method constructor <init>(Lcom/skyhookwireless/_sdko;JILcom/skyhookwireless/wps/_sdkkc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/skyhookwireless/wps/_sdko;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdko;->_sdkb:Lcom/skyhookwireless/_sdko;

    iput p4, p0, Lcom/skyhookwireless/wps/_sdko;->_sdkd:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdko;->_sdkh:Z

    new-instance v0, Lcom/skyhookwireless/_sdksc;

    invoke-direct {v0}, Lcom/skyhookwireless/_sdksc;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdko;->_sdkc:Lcom/skyhookwireless/_sdksc;

    iput-wide p2, p0, Lcom/skyhookwireless/wps/_sdko;->_sdke:J

    const-wide/16 v0, 0x4e20

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :goto_0
    iput-wide v0, p0, Lcom/skyhookwireless/wps/_sdko;->_sdkf:J

    iput-object p5, p0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    return-void

    :cond_0
    move-wide v0, p2

    goto :goto_0
.end method

.method private declared-synchronized _sdka()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdko;->_sdkh:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abort()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdko;->_sdkh:Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdko;->_sdkc:Lcom/skyhookwireless/_sdksc;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdksc;->_sdka()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    invoke-interface {v0}, Lcom/skyhookwireless/wps/_sdkkc;->abort()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 33

    sget v5, Lcom/skyhookwireless/wps/Location;->_sdki:I

    :try_start_0
    invoke-static {}, Lcom/skyhookwireless/_sdkmb;->_sdkd()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_1
    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v9

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkb:Lcom/skyhookwireless/_sdko;

    move-object v12, v0

    invoke-static {v12}, Lcom/skyhookwireless/_sdkpc;->_sdkb(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdkpc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1a

    move-result-object v4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkb:Lcom/skyhookwireless/_sdko;

    move-object v12, v0

    invoke-static {v12}, Lcom/skyhookwireless/_sdkgc;->_sdkb(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdkgc;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    :try_start_3
    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkb()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1d

    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkb:Lcom/skyhookwireless/_sdko;

    move-object v12, v0

    sget-object v13, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v14, 0x14

    aget-object v13, v13, v14

    invoke-static {v12, v13}, Lcom/skyhookwireless/_sdkkc;->_sdkb(Lcom/skyhookwireless/_sdko;Ljava/lang/String;)Lcom/skyhookwireless/_sdkkc;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Lcom/skyhookwireless/_sdki; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1c

    move-result-object v7

    :goto_2
    :try_start_5
    sget-object v12, Lcom/skyhookwireless/_sdkpc;->NULL_WIFI_ADAPTER:Lcom/skyhookwireless/_sdkpc;

    if-ne v4, v12, :cond_d

    sget-object v12, Lcom/skyhookwireless/_sdkgc;->NULL_GSM_ADAPTER:Lcom/skyhookwireless/_sdkgc;

    if-ne v6, v12, :cond_d

    sget-object v12, Lcom/skyhookwireless/_sdkkc;->NULL_LOCATION_PROVIDER:Lcom/skyhookwireless/_sdkkc;

    if-ne v7, v12, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v9, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v10, 0x18

    aget-object v9, v9, v10

    invoke-virtual {v5, v9}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v9, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v10, 0x1c

    aget-object v9, v9, v10

    invoke-virtual {v5, v9}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_17

    :goto_3
    return-void

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v6, v0

    sget-object v7, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v8, 0x1d

    aget-object v7, v7, v8

    invoke-virtual {v6, v7, v4}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v12

    move-object/from16 v31, v12

    move-object v12, v6

    move-object/from16 v6, v31

    :goto_4
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdko;->_sdka()Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1a

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1c

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_4
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    :goto_5
    invoke-virtual {v5, v6, v4}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v13, v0

    sget-object v14, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v15, 0x1b

    aget-object v14, v14, v15

    invoke-virtual {v13, v14, v6}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v6, Lcom/skyhookwireless/_sdkgc;->NULL_GSM_ADAPTER:Lcom/skyhookwireless/_sdkgc;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1b

    goto/16 :goto_1

    :catch_3
    move-exception v12

    :try_start_a
    sget-object v7, Lcom/skyhookwireless/_sdkkc;->NULL_LOCATION_PROVIDER:Lcom/skyhookwireless/_sdkkc;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1c

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v12, v0

    sget-object v13, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v14, 0x15

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v5

    move-object/from16 v31, v5

    move-object v5, v8

    move-object v8, v4

    move-object/from16 v4, v31

    move-object/from16 v32, v6

    move-object v6, v7

    move-object/from16 v7, v32

    :goto_6
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdko;->_sdka()Z

    move-result v9

    if-eqz v9, :cond_7c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v9, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v10, 0x1a

    aget-object v9, v9, v10

    invoke-virtual {v4, v9}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v9, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v10, 0x1c

    aget-object v9, v9, v10

    invoke-virtual {v4, v9}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_c
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :cond_d
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkb:Lcom/skyhookwireless/_sdko;

    move-object v12, v0

    invoke-static {v12}, Lcom/skyhookwireless/_sdknc;->_sdkb(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdknc;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    move-result-object v8

    :try_start_f
    new-instance v12, Lcom/skyhookwireless/_sdkyc;

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/skyhookwireless/_sdkad;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkc:Lcom/skyhookwireless/_sdksc;

    move-object v15, v0

    aput-object v15, v13, v14

    invoke-direct {v12, v13}, Lcom/skyhookwireless/_sdkyc;-><init>([Lcom/skyhookwireless/_sdkad;)V

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkb()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    const-wide/16 v13, 0x1f4

    :try_start_10
    invoke-virtual {v12, v13, v14}, Lcom/skyhookwireless/_sdkyc;->_sdka(J)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v12, v0

    sget-object v13, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v14, 0xa

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    :cond_e
    :goto_7
    :try_start_11
    invoke-direct/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdko;->_sdka()Z

    move-result v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v9, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v10, 0x1a

    aget-object v9, v9, v10

    invoke-virtual {v5, v9}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v9, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v10, 0x1c

    aget-object v9, v9, v10

    invoke-virtual {v5, v9}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_f
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_11
    if-eqz v8, :cond_12

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_12
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :catch_7
    move-exception v12

    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v13, v0

    sget-object v14, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v15, 0x26

    aget-object v14, v14, v15

    invoke-virtual {v13, v14, v12}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_8
    move-exception v5

    move-object/from16 v31, v5

    move-object v5, v8

    move-object v8, v4

    move-object/from16 v4, v31

    move-object/from16 v32, v6

    move-object v6, v7

    move-object/from16 v7, v32

    goto/16 :goto_6

    :cond_13
    new-instance v12, Lcom/skyhookwireless/_sdkyc;

    const/4 v13, 0x4

    new-array v13, v13, [Lcom/skyhookwireless/_sdkad;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    const/4 v14, 0x1

    aput-object v6, v13, v14

    const/4 v14, 0x2

    aput-object v7, v13, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkc:Lcom/skyhookwireless/_sdksc;

    move-object v15, v0

    aput-object v15, v13, v14

    invoke-direct {v12, v13}, Lcom/skyhookwireless/_sdkyc;-><init>([Lcom/skyhookwireless/_sdkad;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdke:J

    move-wide v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkd:I

    move v15, v0

    int-to-long v15, v15

    mul-long/2addr v13, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v17

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkd()Lcom/skyhookwireless/_sdkh;

    move-result-object v18

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkgc;->_sdka(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdke:J

    move-wide/from16 v20, v0

    invoke-interface/range {v19 .. v21}, Lcom/skyhookwireless/wps/_sdkkc;->isWifiNeeded(J)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    move-result v19

    move/from16 v31, v19

    move-object/from16 v19, v4

    move/from16 v4, v31

    :goto_9
    if-eqz v4, :cond_14

    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v20, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v21, 0xd

    aget-object v20, v20, v21

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    const/4 v4, 0x1

    if-nez v5, :cond_16

    if-eqz v5, :cond_17

    :cond_14
    sget-object v4, Lcom/skyhookwireless/_sdkh;->EXTERNAL:Lcom/skyhookwireless/_sdkh;

    move-object/from16 v0, v18

    move-object v1, v4

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v20, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v21, 0x17

    aget-object v20, v20, v21

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    const/4 v4, 0x1

    if-eqz v5, :cond_17

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v20, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v21, 0x5

    aget-object v20, v20, v21

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_16
    const/4 v4, 0x0

    :cond_17
    if-eqz v4, :cond_95

    sget-object v4, Lcom/skyhookwireless/_sdkpc;->NULL_WIFI_ADAPTER:Lcom/skyhookwireless/_sdkpc;

    move-object/from16 v0, v19

    move-object v1, v4

    if-eq v0, v1, :cond_18

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdkc()Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v20, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v21, 0x12

    aget-object v20, v20, v21

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_d

    :try_start_15
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdke:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Lcom/skyhookwireless/_sdkpc;->_sdka(J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    :cond_18
    :goto_a
    :try_start_16
    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdkc()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdkd()Z

    move-result v4

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkpc;->_sdka(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/skyhookwireless/_sdkcb;->_sdkc()Z

    move-result v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v23, 0x11

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdkf()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V

    :cond_19
    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdka()Z

    move-result v20

    if-eqz v5, :cond_94

    :cond_1a
    const/4 v4, 0x0

    const/16 v20, 0x0

    move/from16 v21, v4

    :goto_b
    if-eqz v17, :cond_1d

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v24, 0x28

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v24, 0x23

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v24, 0x23

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/skyhookwireless/_sdkh;->name()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkcb;->_sdkc()Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v24, 0x11

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkd()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V

    :cond_1e
    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdke()Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v22, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v23, 0x1f

    aget-object v22, v22, v23

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    :cond_1f
    sget-object v4, Lcom/skyhookwireless/_sdkh;->EXTERNAL:Lcom/skyhookwireless/_sdkh;

    move-object/from16 v0, v18

    move-object v1, v4

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkf:J

    move-wide/from16 v22, v0

    move-object v0, v7

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/skyhookwireless/_sdkkc;->_sdka(J)V

    :cond_20
    const-wide/16 v22, 0x1388

    const/4 v4, 0x0

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v31, v22

    move-wide/from16 v22, v10

    move-wide/from16 v10, v31

    :goto_c
    if-eqz v20, :cond_3f

    if-nez v5, :cond_93

    if-nez v4, :cond_3f

    const-wide/16 v25, 0x0

    cmp-long v25, v10, v25

    if-lez v25, :cond_3f

    if-eqz v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v27, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v28, 0x25

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_21
    invoke-virtual {v12, v10, v11}, Lcom/skyhookwireless/_sdkyc;->_sdka(J)Ljava/util/List;

    move-result-object v25

    invoke-direct/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdko;->_sdka()Z

    move-result v26

    if-eqz v26, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1a

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1c

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v19, :cond_22

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_22
    if-eqz v6, :cond_23

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_23
    if-eqz v7, :cond_24

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_24
    if-eqz v8, :cond_25

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_25
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_9

    goto/16 :goto_3

    :catch_9
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :catch_a
    move-exception v4

    :try_start_18
    invoke-direct/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdko;->_sdka()Z

    move-result v20

    if-eqz v20, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1a

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1c

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v19, :cond_26

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_26
    if-eqz v6, :cond_27

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_27
    if-eqz v7, :cond_28

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_28
    if-eqz v8, :cond_29

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_29
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_b

    goto/16 :goto_3

    :catch_b
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :cond_2a
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v20, v0

    sget-object v21, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v22, 0x2a

    aget-object v21, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v4, Lcom/skyhookwireless/_sdkpc;->NULL_WIFI_ADAPTER:Lcom/skyhookwireless/_sdkpc;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d

    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object/from16 v19, v0

    sget-object v20, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_WIFI_NOT_AVAILABLE:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-interface/range {v19 .. v20}, Lcom/skyhookwireless/wps/_sdkkc;->handleError(Lcom/skyhookwireless/wps/WPSReturnCode;)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v19

    sget-object v20, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v9, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v10, 0x2b

    aget-object v9, v9, v10

    invoke-virtual {v5, v9}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v9, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v10, 0x1c

    aget-object v9, v9, v10

    invoke-virtual {v5, v9}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_2b
    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_2c
    if-eqz v7, :cond_2d

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_2d
    if-eqz v8, :cond_2e

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_2e
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_c

    goto/16 :goto_3

    :catch_c
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :cond_2f
    if-eqz v5, :cond_30

    :goto_d
    :try_start_1d
    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkpc;->_sdkc()Z

    move-result v19

    if-eqz v19, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v19, v0

    sget-object v20, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v21, 0xc

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkpc;->_sdke()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_8

    :cond_30
    move-object/from16 v19, v4

    goto/16 :goto_a

    :cond_31
    :try_start_1e
    invoke-virtual {v9}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v26

    sub-long v22, v26, v22

    sub-long v10, v10, v22

    if-eqz v17, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v29, 0x20

    aget-object v28, v28, v29

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v29, 0x16

    aget-object v28, v28, v29

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_32
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move/from16 v23, v4

    :goto_e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/skyhookwireless/_sdkad;

    if-nez v5, :cond_91

    if-eqz v17, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v25, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v29, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v30, 0x29

    aget-object v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_33
    move-object v0, v4

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_34

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdkc()Z

    move-result v25

    if-eqz v25, :cond_3c

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkpc;->_sdka(Ljava/util/ArrayList;)V

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdkb()Z

    move-result v25

    if-nez v25, :cond_3c

    const/16 v23, 0x1

    if-eqz v5, :cond_3c

    :cond_34
    if-ne v4, v6, :cond_35

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkgc;->_sdka(Ljava/util/ArrayList;)V

    if-eqz v5, :cond_3c

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkc:Lcom/skyhookwireless/_sdksc;

    move-object/from16 v25, v0

    move-object v0, v4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_36

    sget-boolean v4, Lcom/skyhookwireless/wps/_sdko;->_sdki:Z

    if-nez v4, :cond_81

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :catch_d
    move-exception v4

    move-object v5, v8

    move-object/from16 v8, v19

    move-object/from16 v31, v6

    move-object v6, v7

    move-object/from16 v7, v31

    goto/16 :goto_6

    :cond_36
    if-ne v4, v7, :cond_3b

    move/from16 v4, v23

    :goto_f
    if-eqz v5, :cond_90

    :goto_10
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v22

    move/from16 v31, v22

    move/from16 v22, v4

    move/from16 v4, v31

    :goto_11
    if-nez v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkkc;->handleEvents(Ljava/util/List;Lcom/skyhookwireless/_sdkyc;)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v4

    sget-object v23, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    move-object v0, v4

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1c

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v19, :cond_37

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_37
    if-eqz v6, :cond_38

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_38
    if-eqz v7, :cond_39

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_39
    if-eqz v8, :cond_3a

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_3a
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_e

    goto/16 :goto_3

    :catch_e
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :cond_3b
    :try_start_20
    move-object/from16 v0, v24

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    move/from16 v4, v23

    goto :goto_f

    :cond_3d
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->clear()V

    :cond_3e
    if-eqz v5, :cond_8f

    move-wide/from16 v22, v26

    :cond_3f
    const-wide/16 v25, 0x1388

    sub-long v10, v25, v10

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkc()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v4

    if-eqz v4, :cond_48

    sget-boolean v20, Lcom/skyhookwireless/wps/_sdko;->_sdki:Z

    if-nez v20, :cond_45

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkdb;->hasLatitude()Z

    move-result v20

    if-eqz v20, :cond_40

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkdb;->hasLongitude()Z

    move-result v20

    if-nez v20, :cond_45

    :cond_40
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_d

    :catchall_0
    move-exception v4

    move-object v5, v8

    move-object/from16 v8, v19

    move-object/from16 v31, v6

    move-object v6, v7

    move-object/from16 v7, v31

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v9, v0

    sget-object v10, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v11, 0x1c

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v8, :cond_41

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_41
    if-eqz v7, :cond_42

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_42
    if-eqz v6, :cond_43

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_43
    if-eqz v5, :cond_44

    invoke-virtual {v5}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_44
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v5, v0

    invoke-interface {v5}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_16

    :goto_13
    throw v4

    :cond_45
    :try_start_22
    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkdb;->hasLatitude()Z

    move-result v20

    if-eqz v20, :cond_46

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkdb;->hasLongitude()Z

    move-result v20

    if-nez v20, :cond_48

    :cond_46
    if-eqz v17, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v20, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v27, 0xf

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_47
    const/4 v4, 0x0

    :cond_48
    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v17, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v20, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v27, 0x27

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v27, 0x23

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v20, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v27, 0x3

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v27, 0x23

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v20, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v27, 0x4

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_49
    sget-object v20, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkc(Ljava/lang/Iterable;Ljava/util/Comparator;)V

    sget-object v20, Lcom/skyhookwireless/_sdkv;->CELL_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkc(Ljava/lang/Iterable;Ljava/util/Comparator;)V

    if-eqz v17, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v20, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v27, 0x7

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v27, 0x23

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v20, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v26, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v27, 0x1e

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v27, 0x23

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_4a
    sget-boolean v20, Lcom/skyhookwireless/wps/_sdko;->_sdki:Z

    if-nez v20, :cond_4b

    sget-object v20, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v20

    if-nez v20, :cond_4b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_4b
    sget-boolean v20, Lcom/skyhookwireless/wps/_sdko;->_sdki:Z

    if-nez v20, :cond_4c

    sget-object v20, Lcom/skyhookwireless/_sdkr;->CELL_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v20

    if-nez v20, :cond_4c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_4c
    sget-boolean v20, Lcom/skyhookwireless/wps/_sdko;->_sdki:Z

    if-nez v20, :cond_4d

    sget-object v20, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v20

    if-nez v20, :cond_4d

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_4d
    sget-boolean v20, Lcom/skyhookwireless/wps/_sdko;->_sdki:Z

    if-nez v20, :cond_4e

    sget-object v20, Lcom/skyhookwireless/_sdkr;->CELL_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v20

    if-nez v20, :cond_4e

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object/from16 v20, v0

    new-instance v25, Lcom/skyhookwireless/wps/_sdkpb;

    move-object/from16 v0, v25

    move-object v1, v15

    move-object/from16 v2, v16

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/skyhookwireless/wps/_sdkpb;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkdb;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkkc;->handleScan(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/_sdkyc;)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v20

    sget-object v25, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x24

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1c

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v19, :cond_4f

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_4f
    if-eqz v6, :cond_50

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_50
    if-eqz v7, :cond_51

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_51
    if-eqz v8, :cond_52

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_52
    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_f

    goto/16 :goto_3

    :catch_f
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :cond_53
    :try_start_24
    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdka()Z

    move-result v20

    if-nez v20, :cond_57

    invoke-virtual {v9}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v25

    const-wide/16 v27, 0xbb8

    cmp-long v20, v25, v27

    if-gtz v20, :cond_54

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdke:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x4e20

    cmp-long v20, v25, v27

    if-lez v20, :cond_55

    :cond_54
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkf:J

    move-wide/from16 v25, v0

    move-object v0, v7

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/skyhookwireless/_sdkkc;->_sdka(J)V

    if-eqz v5, :cond_57

    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/skyhookwireless/wps/_sdkkc;->lastLocation()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v20

    if-eqz v20, :cond_56

    invoke-virtual/range {v20 .. v20}, Lcom/skyhookwireless/wps/_sdkdb;->isExtrapolated()Z

    move-result v20

    if-eqz v20, :cond_57

    :cond_56
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkf:J

    move-wide/from16 v25, v0

    move-object v0, v7

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/skyhookwireless/_sdkkc;->_sdka(J)V

    :cond_57
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v9}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v25

    sub-long v22, v25, v22

    if-eqz v17, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v29, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v30, 0xe

    aget-object v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v30, 0x8

    aget-object v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_58
    move-object/from16 v0, p0

    iget v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkd:I

    move/from16 v27, v0

    if-lez v27, :cond_5e

    if-eqz v17, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v29, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v30, 0x16

    aget-object v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v30, 0x10

    aget-object v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_d

    :cond_59
    cmp-long v27, v25, v13

    if-lez v27, :cond_5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1c

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v19, :cond_5a

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_5a
    if-eqz v6, :cond_5b

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_5b
    if-eqz v7, :cond_5c

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_5c
    if-eqz v8, :cond_5d

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_5d
    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_10

    goto/16 :goto_3

    :catch_10
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :cond_5e
    if-eqz v17, :cond_5f

    :try_start_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v29, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v30, 0x16

    aget-object v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v30, 0x21

    aget-object v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_5f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdke:J

    move-wide/from16 v27, v0

    sub-long v10, v27, v10

    sub-long v10, v10, v22

    move-wide/from16 v22, v25

    :goto_14
    const-wide/16 v25, 0x0

    cmp-long v25, v10, v25

    if-lez v25, :cond_97

    if-nez v5, :cond_96

    if-eqz v17, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v27, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v28, 0x13

    aget-object v27, v27, v28

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_60
    invoke-virtual {v12, v10, v11}, Lcom/skyhookwireless/_sdkyc;->_sdka(J)Ljava/util/List;

    move-result-object v25

    invoke-virtual {v9}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v26

    sub-long v22, v26, v22

    sub-long v10, v10, v22

    if-eqz v17, :cond_61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v29, 0x16

    aget-object v28, v28, v29

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_61
    invoke-direct/range {p0 .. p0}, Lcom/skyhookwireless/wps/_sdko;->_sdka()Z

    move-result v22

    if-eqz v22, :cond_66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1a

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1c

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v19, :cond_62

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_62
    if-eqz v6, :cond_63

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_63
    if-eqz v7, :cond_64

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_64
    if-eqz v8, :cond_65

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_65
    :try_start_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_11

    goto/16 :goto_3

    :catch_11
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :cond_66
    :try_start_28
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v23, v4

    :goto_15
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/skyhookwireless/_sdkad;

    if-nez v5, :cond_8d

    if-eqz v17, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v25, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v29, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v30, 0x29

    aget-object v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkc:Lcom/skyhookwireless/_sdksc;

    move-object/from16 v25, v0

    move-object v0, v4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_68

    sget-boolean v4, Lcom/skyhookwireless/wps/_sdko;->_sdki:Z

    if-nez v4, :cond_86

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_68
    move-object v0, v4

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v25, v0

    sget-object v28, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v29, 0x19

    aget-object v28, v28, v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdkc()Z

    move-result v25

    if-eqz v25, :cond_79

    if-nez v21, :cond_69

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdkd()Z

    move-result v25

    if-eqz v25, :cond_69

    const-wide/16 v10, 0x0

    if-eqz v5, :cond_79

    :cond_69
    if-eqz v20, :cond_79

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkpc;->_sdka(Ljava/util/ArrayList;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_79

    const-wide/16 v10, 0x0

    if-eqz v5, :cond_79

    :cond_6a
    if-ne v4, v7, :cond_73

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v25, v0

    sget-object v28, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v29, 0x9

    aget-object v28, v28, v29

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkc()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v25

    if-eqz v25, :cond_72

    if-eqz v23, :cond_6b

    invoke-virtual/range {v25 .. v25}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v28

    invoke-virtual/range {v23 .. v23}, Lcom/skyhookwireless/wps/_sdkdb;->getAge()Lcom/skyhookwireless/_sdkub;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/skyhookwireless/_sdkub;->_sdkb(Lcom/skyhookwireless/_sdkub;)I

    move-result v28

    if-gez v28, :cond_72

    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v23, v0

    sget-object v28, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v29, 0x22

    aget-object v28, v28, v29

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object/from16 v23, v0

    new-instance v28, Lcom/skyhookwireless/wps/_sdkpb;

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/skyhookwireless/wps/_sdkpb;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkdb;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkkc;->handleScan(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/_sdkyc;)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v23

    sget-object v28, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x24

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1c

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v19, :cond_6c

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_6c
    if-eqz v6, :cond_6d

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_6d
    if-eqz v7, :cond_6e

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_6e
    if-eqz v8, :cond_6f

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_6f
    :try_start_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_12

    goto/16 :goto_3

    :catch_12
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :cond_70
    :try_start_2a
    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkd()Lcom/skyhookwireless/_sdkh;

    move-result-object v23

    sget-object v28, Lcom/skyhookwireless/_sdkh;->EXTERNAL:Lcom/skyhookwireless/_sdkh;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_71

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdkc()Z

    move-result v23

    if-eqz v23, :cond_71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdke:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkkc;->isWifiNeeded(J)Z

    move-result v23

    if-nez v23, :cond_71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object/from16 v23, v0

    sget-object v28, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v29, 0x5

    aget-object v28, v28, v29

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_71
    move-object/from16 v23, v25

    :cond_72
    if-eqz v5, :cond_79

    :cond_73
    if-ne v4, v6, :cond_78

    move-object/from16 v4, v23

    :goto_16
    if-eqz v5, :cond_8c

    :goto_17
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v22

    move/from16 v31, v22

    move-object/from16 v22, v4

    move/from16 v4, v31

    :goto_18
    if-nez v4, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkkc;->handleEvents(Ljava/util/List;Lcom/skyhookwireless/_sdkyc;)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v4

    sget-object v23, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    move-object v0, v4

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_7a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1c

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v19, :cond_74

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_74
    if-eqz v6, :cond_75

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_75
    if-eqz v7, :cond_76

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_76
    if-eqz v8, :cond_77

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_77
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_13

    goto/16 :goto_3

    :catch_13
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :cond_78
    :try_start_2c
    move-object/from16 v0, v24

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_79
    move-object/from16 v4, v23

    goto :goto_16

    :cond_7a
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->clear()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_d

    :cond_7b
    if-eqz v5, :cond_8b

    move-wide/from16 v10, v26

    :goto_19
    move-object/from16 v4, v19

    goto/16 :goto_8

    :cond_7c
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v9, v0

    sget-object v10, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10, v4}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    :try_start_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    sget-object v9, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-interface {v4, v9}, Lcom/skyhookwireless/wps/_sdkkc;->handleError(Lcom/skyhookwireless/wps/WPSReturnCode;)Lcom/skyhookwireless/wps/WPSContinuation;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_15

    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v9, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v10, 0x1c

    aget-object v9, v9, v10

    invoke-virtual {v4, v9}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v8, :cond_7d

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_7d
    if-eqz v7, :cond_7e

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_7e
    if-eqz v6, :cond_7f

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_7f
    if-eqz v5, :cond_80

    invoke-virtual {v5}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_80
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_14

    goto/16 :goto_3

    :catch_14
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :catch_15
    move-exception v4

    :try_start_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v9, v0

    sget-object v10, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v11, 0xb

    aget-object v10, v10, v11

    invoke-virtual {v9, v10, v4}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    goto :goto_1a

    :catchall_1
    move-exception v4

    goto/16 :goto_12

    :catch_16
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v6, v0

    sget-object v7, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v8, 0x2c

    aget-object v7, v7, v8

    invoke-virtual {v6, v7, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :catch_17
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1c

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v19, :cond_82

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_82
    if-eqz v6, :cond_83

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_83
    if-eqz v7, :cond_84

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_84
    if-eqz v8, :cond_85

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_85
    :try_start_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_18

    goto/16 :goto_3

    :catch_18
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v4, v0

    sget-object v5, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v9, 0x1c

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v19, :cond_87

    invoke-virtual/range {v19 .. v19}, Lcom/skyhookwireless/_sdkpc;->_sdke()V

    :cond_87
    if-eqz v6, :cond_88

    invoke-virtual {v6}, Lcom/skyhookwireless/_sdkgc;->_sdkc()V

    :cond_88
    if-eqz v7, :cond_89

    invoke-virtual {v7}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_89
    if-eqz v8, :cond_8a

    invoke-virtual {v8}, Lcom/skyhookwireless/_sdknc;->_sdkc()V

    :cond_8a
    :try_start_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdkg:Lcom/skyhookwireless/wps/_sdkkc;

    move-object v4, v0

    invoke-interface {v4}, Lcom/skyhookwireless/wps/_sdkkc;->done()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_19

    goto/16 :goto_3

    :catch_19
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdko;->_sdka:Lcom/skyhookwireless/_sdkcb;

    move-object v5, v0

    sget-object v6, Lcom/skyhookwireless/wps/_sdko;->z:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    goto/16 :goto_5

    :catchall_2
    move-exception v5

    move-object/from16 v31, v5

    move-object v5, v8

    move-object v8, v4

    move-object/from16 v4, v31

    move-object/from16 v32, v6

    move-object v6, v7

    move-object/from16 v7, v32

    goto/16 :goto_12

    :catchall_3
    move-exception v5

    move-object/from16 v31, v5

    move-object v5, v8

    move-object v8, v4

    move-object/from16 v4, v31

    move-object/from16 v32, v6

    move-object v6, v7

    move-object/from16 v7, v32

    goto/16 :goto_12

    :catchall_4
    move-exception v5

    move-object/from16 v31, v5

    move-object v5, v8

    move-object v8, v4

    move-object/from16 v4, v31

    move-object/from16 v32, v6

    move-object v6, v7

    move-object/from16 v7, v32

    goto/16 :goto_12

    :catchall_5
    move-exception v5

    move-object v6, v7

    move-object v7, v12

    move-object/from16 v31, v5

    move-object v5, v8

    move-object v8, v4

    move-object/from16 v4, v31

    goto/16 :goto_12

    :catchall_6
    move-exception v5

    move-object/from16 v31, v5

    move-object v5, v8

    move-object v8, v4

    move-object/from16 v4, v31

    move-object/from16 v32, v6

    move-object v6, v7

    move-object/from16 v7, v32

    goto/16 :goto_12

    :catchall_7
    move-exception v5

    move-object/from16 v31, v5

    move-object v5, v8

    move-object v8, v4

    move-object/from16 v4, v31

    move-object/from16 v32, v6

    move-object v6, v7

    move-object/from16 v7, v32

    goto/16 :goto_12

    :catch_1a
    move-exception v5

    move-object/from16 v31, v5

    move-object v5, v8

    move-object v8, v4

    move-object/from16 v4, v31

    move-object/from16 v32, v6

    move-object v6, v7

    move-object/from16 v7, v32

    goto/16 :goto_6

    :catch_1b
    move-exception v5

    move-object v6, v7

    move-object v7, v12

    move-object/from16 v31, v5

    move-object v5, v8

    move-object v8, v4

    move-object/from16 v4, v31

    goto/16 :goto_6

    :catch_1c
    move-exception v5

    move-object/from16 v31, v5

    move-object v5, v8

    move-object v8, v4

    move-object/from16 v4, v31

    move-object/from16 v32, v6

    move-object v6, v7

    move-object/from16 v7, v32

    goto/16 :goto_6

    :catch_1d
    move-exception v12

    move-object/from16 v31, v12

    move-object v12, v6

    move-object/from16 v6, v31

    goto/16 :goto_4

    :cond_8b
    move-object/from16 v4, v22

    move-wide/from16 v22, v26

    goto/16 :goto_14

    :cond_8c
    move-object/from16 v23, v4

    goto/16 :goto_15

    :cond_8d
    move/from16 v4, v17

    move-object/from16 v22, v23

    goto/16 :goto_18

    :cond_8e
    move-object/from16 v4, v23

    goto/16 :goto_17

    :cond_8f
    move/from16 v4, v22

    move-wide/from16 v22, v26

    goto/16 :goto_c

    :cond_90
    move/from16 v23, v4

    goto/16 :goto_e

    :cond_91
    move/from16 v4, v17

    move/from16 v22, v23

    goto/16 :goto_11

    :cond_92
    move/from16 v4, v23

    goto/16 :goto_10

    :cond_93
    move-wide/from16 v10, v22

    goto/16 :goto_9

    :cond_94
    move/from16 v21, v4

    goto/16 :goto_b

    :cond_95
    move-object/from16 v4, v19

    goto/16 :goto_d

    :cond_96
    move/from16 v4, v17

    move-wide/from16 v10, v22

    goto/16 :goto_9

    :cond_97
    move-wide/from16 v10, v22

    goto/16 :goto_19
.end method
