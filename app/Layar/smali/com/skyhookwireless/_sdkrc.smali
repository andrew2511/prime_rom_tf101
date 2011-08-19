.class final Lcom/skyhookwireless/_sdkrc;
.super Lcom/skyhookwireless/_sdkpc;


# static fields
.field private static final _sdkd:Lcom/skyhookwireless/_sdkdc;

.field static final _sdkq:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdke:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkf:Landroid/content/Context;

.field private final _sdkg:Lcom/skyhookwireless/_sdkb;

.field private final _sdkh:Lcom/skyhookwireless/_sdkcc;

.field private _sdki:Landroid/net/wifi/WifiManager;

.field private _sdkj:Ljava/lang/reflect/Method;

.field private _sdkk:Lcom/skyhookwireless/_sdkbc;

.field private final _sdkl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;"
        }
    .end annotation
.end field

.field private _sdkm:Lcom/skyhookwireless/_sdkub;

.field private _sdkn:J

.field private _sdko:Z

.field private _sdkp:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x40

    const/16 v12, 0x2b

    const/16 v11, 0x9

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "j!53Ne\u0012>\u0015Eh\"75\u0003 "

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_8a

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

    move v7, v12

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

    const-string v1, "l.:2G`.<p\\`&2"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_89

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

    move v7, v12

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

    const-string v2, "l.:2Glhr"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_88

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

    move v8, v12

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

    const-string v2, "h)) Gh.>\u000fFf$>\u000fDg"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_87

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

    move v8, v12

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

    const-string v2, "h)) Gh.>pFf$>pJj42&N%`5?_)%51Ie)57\u000b~)=9"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_86

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

    move v8, v12

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

    const-string v2, "l2)?Y)55\"Nn)($N{)57\u000b{%85B\u007f%)"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_85

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

    move v8, v12

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

    const-string v2, "|.)5L`3/5Yl${\u0003hH\u000e\u0004\u0002nZ\u0015\u0017\u0004xV\u0001\r\u0011bE\u0001\u0019\u001cnV\u0001\u0018\u0004bF\u000e{\"Nj%2&N{"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_84

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

    move v8, v12

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

    const-string v2, "j,>1Y`.<pXj!5pYl3.<_z"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_83

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

    move v8, v12

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

    const-string v2, "z#35O|,>4\u000bl.:2Gl`2>\u000b"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_82

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

    move v8, v12

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

    const-string v1, "l.:2Gl`5?_)388Nm575O"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_81

    move v3, v9

    :cond_12
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_1b
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_9

    move v7, v12

    :goto_1c
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_13

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_1b

    :cond_13
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_1d
    if-gt v2, v3, :cond_12

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/16 v1, 0xa

    const-string v2, "j/.<Ogg/pXj(>4^e%{\"N$%51Ie)57\u000b~)=9"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_80

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

    move v8, v12

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

    const-string v2, "m)(1Ie)57\u000b~)=9"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7f

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

    move v8, v12

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

    const-string v2, "m)(1Ie%s"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7e

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

    move v8, v12

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

    const-string v2, "j/.<Ogg/pX}!)$\u000b^)\u001d9\u000bz#:>"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7d

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

    move v8, v12

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

    const-string v2, "j/5>Nj4>4\u000bH\u0010{6D|.?pBg`81Ha%?pXj!5pYl3.<_z"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7c

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

    move v8, v12

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

    const-string v2, "j/5>Nj4>4\u000bH\u0010{>D}`2>\u000b}(>pGh3/pXj!5pYl3.<_zl{\'Be,{#Hh."

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7b

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

    move v8, v12

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

    const-string v2, "^)\u001d9\u000bz#:>\u000bz4:\"_l$u~\u0005"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7a

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

    move v8, v12

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

    const-string v2, "~)=9\u000be/8;\u000bh,)5Jm9{8Ne$"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_79

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

    move v8, v12

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

    const-string v2, "~)=9\u000bk5()\u0005)\":3@`.<pDo&u"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_78

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

    move v8, v12

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

    const-string v2, "z5+ G`#:>_)\".#R\'`91Hb)57\u000bf&="

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_77

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

    move v8, v12

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

    const-string v2, "~)=9\u000bh$: _l2{1G{%:4R)381Eg)57"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_76

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

    move v8, v12

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

    const-string v2, "z4:\"_Z#:>jj42&N!i{9Eh#85Xz)9<N3`"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_75

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

    move v8, v12

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

    const-string v2, "j/.<Ogg/pX}!)$\u000bz#:>\u0005\'n{\"Ne%:#Bg\'{<Dj+u"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_74

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

    move v8, v12

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

    const-string v2, "z#:>\u000bh,)5Jm9{9E)0)?L{%(#\u000bo/)p"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_73

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

    move v8, v12

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

    const-string v2, "j/.<Ogg/pX}!)$\u000b^)\u001d9\u000bh#/9]l`(3Jg"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_72

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

    move v8, v12

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

    const/16 v1, 0x19

    const-string v2, ")h"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_71

    move v4, v9

    :cond_32
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_4b
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_19

    move v8, v12

    :goto_4c
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_33

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_4b

    :cond_33
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_4d
    if-gt v3, v4, :cond_32

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "~)=9\u000bz4:$N)}{"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_70

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

    move v8, v12

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

    const-string v2, "j/5>Nj4>4\u000b}/{1E)\u0001\u000bj\u000b"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6f

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

    move v8, v12

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

    const-string v2, " `81E.4{#_h2/pXj!5"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6e

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

    move v8, v12

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

    const-string v2, "~)=9\u000b`3{>D}`>>Jk,>4\u000b!"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6d

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

    move v8, v12

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

    const-string v2, "j!88Nm`(3Jg`)5X|,/#\u0011)"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6c

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

    move v8, v12

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

    const-string v2, "e!/5X}`(3Jg`)5X|,/#\u000bh2>pNd0/)"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6b

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

    move v8, v12

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

    const-string v2, "R\t\u0019\u0003xT"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6a

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

    move v8, v12

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

    const-string v2, "`\'5?Y`.<pJmm3?H)\u0001\u000bj\u000b"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_69

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

    move v8, v12

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

    const-string v2, "j/.<Ogg/p[h2(5\u000bD\u0001\u0018pJm$)5Xzz"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_68

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

    move v8, v12

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

    const-string v2, "z4:\"_Z#:>jj42&N!i{9Eh#85Xz)9<N"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_67

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

    move v8, v12

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

    const-string v2, "o/.>O)3/1Y}\u001381EH#/9]lhr"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_66

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

    move v8, v12

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

    const-string v2, "z4:\"_Z#:>jj42&N"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_65

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

    move v8, v12

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

    const-string v2, "j/.<O).4$\u000bn%/p\\`&2pFh.:7N{`(5Y\u007f)85"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_64

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

    move v8, v12

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

    const-string v2, "z4:\"_Z#:>jj42&N!i{>D}`=?^g$"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_63

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

    move v8, v12

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

    const-string v2, "{%<9X}%)9En`\u0008\u0013jG\u001f\t\u0015x\\\u000c\u000f\u0003tH\u0016\u001a\u0019gH\u0002\u0017\u0015tH\u0003\u000f\u0019dG`)5Hl)-5Y"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_62

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

    move v8, v12

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

    const-string v2, "h.?\"D`$u>N}n,9M`n\u0008\u0013jG\u001f\t\u0015x\\\u000c\u000f\u0003"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_61

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

    move v8, v12

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

    const-string v2, "~)=9\u000bh$: _l2{1G{%:4R)/+5E"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_60

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

    move v8, v12

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

    const-string v1, "h.?\"D`$u>N}n,9M`n\u000c\u0019m@\u001f\u0008\u0004j]\u0005\u0004\u0013cH\u000e\u001c\u0015o"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_5f

    move v3, v9

    :cond_56
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_81
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_2b

    move v7, v12

    :goto_82
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_57

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_81

    :cond_57
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_83
    if-gt v2, v3, :cond_56

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const/16 v1, 0x2c

    const-string v2, "h.?\"D`$\u00151_`6>j|`&2\u0011Oh0/5Y@-+<"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5e

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

    move v8, v12

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

    const/16 v1, 0x2d

    const-string v2, "`3\u001e>Jk,>4\u0003 `81Ge%?p\\a)75\u000bj,4#Nm"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5d

    move v4, v9

    :cond_5a
    move v5, v3

    move v6, v4

    move-object v3, v2

    move v14, v4

    move-object v4, v2

    move v2, v14

    :goto_87
    aget-char v7, v3, v2

    rem-int/lit8 v8, v6, 0x5

    packed-switch v8, :pswitch_data_2d

    move v8, v12

    :goto_88
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-nez v5, :cond_5b

    move-object v3, v4

    move v6, v2

    move v2, v5

    goto :goto_87

    :cond_5b
    move v3, v5

    move-object v14, v4

    move v4, v2

    move-object v2, v14

    :goto_89
    if-gt v3, v4, :cond_5a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/_sdkrc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_5c

    move v0, v10

    :goto_8a
    sput-boolean v0, Lcom/skyhookwireless/_sdkrc;->_sdkq:Z

    new-instance v0, Lcom/skyhookwireless/_sdkdc;

    invoke-direct {v0}, Lcom/skyhookwireless/_sdkdc;-><init>()V

    sput-object v0, Lcom/skyhookwireless/_sdkrc;->_sdkd:Lcom/skyhookwireless/_sdkdc;

    return-void

    :cond_5c
    move v0, v9

    goto :goto_8a

    :pswitch_0
    move v7, v11

    goto/16 :goto_1

    :pswitch_1
    move v7, v13

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x5b

    goto/16 :goto_1

    :pswitch_3
    const/16 v7, 0x50

    goto/16 :goto_1

    :pswitch_4
    move v7, v11

    goto/16 :goto_4

    :pswitch_5
    move v7, v13

    goto/16 :goto_4

    :pswitch_6
    const/16 v7, 0x5b

    goto/16 :goto_4

    :pswitch_7
    const/16 v7, 0x50

    goto/16 :goto_4

    :pswitch_8
    move v8, v11

    goto/16 :goto_7

    :pswitch_9
    move v8, v13

    goto/16 :goto_7

    :pswitch_a
    const/16 v8, 0x5b

    goto/16 :goto_7

    :pswitch_b
    const/16 v8, 0x50

    goto/16 :goto_7

    :pswitch_c
    move v8, v11

    goto/16 :goto_a

    :pswitch_d
    move v8, v13

    goto/16 :goto_a

    :pswitch_e
    const/16 v8, 0x5b

    goto/16 :goto_a

    :pswitch_f
    const/16 v8, 0x50

    goto/16 :goto_a

    :pswitch_10
    move v8, v11

    goto/16 :goto_d

    :pswitch_11
    move v8, v13

    goto/16 :goto_d

    :pswitch_12
    const/16 v8, 0x5b

    goto/16 :goto_d

    :pswitch_13
    const/16 v8, 0x50

    goto/16 :goto_d

    :pswitch_14
    move v8, v11

    goto/16 :goto_10

    :pswitch_15
    move v8, v13

    goto/16 :goto_10

    :pswitch_16
    const/16 v8, 0x5b

    goto/16 :goto_10

    :pswitch_17
    const/16 v8, 0x50

    goto/16 :goto_10

    :pswitch_18
    move v8, v11

    goto/16 :goto_13

    :pswitch_19
    move v8, v13

    goto/16 :goto_13

    :pswitch_1a
    const/16 v8, 0x5b

    goto/16 :goto_13

    :pswitch_1b
    const/16 v8, 0x50

    goto/16 :goto_13

    :pswitch_1c
    move v8, v11

    goto/16 :goto_16

    :pswitch_1d
    move v8, v13

    goto/16 :goto_16

    :pswitch_1e
    const/16 v8, 0x5b

    goto/16 :goto_16

    :pswitch_1f
    const/16 v8, 0x50

    goto/16 :goto_16

    :pswitch_20
    move v8, v11

    goto/16 :goto_19

    :pswitch_21
    move v8, v13

    goto/16 :goto_19

    :pswitch_22
    const/16 v8, 0x5b

    goto/16 :goto_19

    :pswitch_23
    const/16 v8, 0x50

    goto/16 :goto_19

    :pswitch_24
    move v7, v11

    goto/16 :goto_1c

    :pswitch_25
    move v7, v13

    goto/16 :goto_1c

    :pswitch_26
    const/16 v7, 0x5b

    goto/16 :goto_1c

    :pswitch_27
    const/16 v7, 0x50

    goto/16 :goto_1c

    :pswitch_28
    move v8, v11

    goto/16 :goto_1f

    :pswitch_29
    move v8, v13

    goto/16 :goto_1f

    :pswitch_2a
    const/16 v8, 0x5b

    goto/16 :goto_1f

    :pswitch_2b
    const/16 v8, 0x50

    goto/16 :goto_1f

    :pswitch_2c
    move v8, v11

    goto/16 :goto_22

    :pswitch_2d
    move v8, v13

    goto/16 :goto_22

    :pswitch_2e
    const/16 v8, 0x5b

    goto/16 :goto_22

    :pswitch_2f
    const/16 v8, 0x50

    goto/16 :goto_22

    :pswitch_30
    move v8, v11

    goto/16 :goto_25

    :pswitch_31
    move v8, v13

    goto/16 :goto_25

    :pswitch_32
    const/16 v8, 0x5b

    goto/16 :goto_25

    :pswitch_33
    const/16 v8, 0x50

    goto/16 :goto_25

    :pswitch_34
    move v8, v11

    goto/16 :goto_28

    :pswitch_35
    move v8, v13

    goto/16 :goto_28

    :pswitch_36
    const/16 v8, 0x5b

    goto/16 :goto_28

    :pswitch_37
    const/16 v8, 0x50

    goto/16 :goto_28

    :pswitch_38
    move v8, v11

    goto/16 :goto_2b

    :pswitch_39
    move v8, v13

    goto/16 :goto_2b

    :pswitch_3a
    const/16 v8, 0x5b

    goto/16 :goto_2b

    :pswitch_3b
    const/16 v8, 0x50

    goto/16 :goto_2b

    :pswitch_3c
    move v8, v11

    goto/16 :goto_2e

    :pswitch_3d
    move v8, v13

    goto/16 :goto_2e

    :pswitch_3e
    const/16 v8, 0x5b

    goto/16 :goto_2e

    :pswitch_3f
    const/16 v8, 0x50

    goto/16 :goto_2e

    :pswitch_40
    move v8, v11

    goto/16 :goto_31

    :pswitch_41
    move v8, v13

    goto/16 :goto_31

    :pswitch_42
    const/16 v8, 0x5b

    goto/16 :goto_31

    :pswitch_43
    const/16 v8, 0x50

    goto/16 :goto_31

    :pswitch_44
    move v8, v11

    goto/16 :goto_34

    :pswitch_45
    move v8, v13

    goto/16 :goto_34

    :pswitch_46
    const/16 v8, 0x5b

    goto/16 :goto_34

    :pswitch_47
    const/16 v8, 0x50

    goto/16 :goto_34

    :pswitch_48
    move v8, v11

    goto/16 :goto_37

    :pswitch_49
    move v8, v13

    goto/16 :goto_37

    :pswitch_4a
    const/16 v8, 0x5b

    goto/16 :goto_37

    :pswitch_4b
    const/16 v8, 0x50

    goto/16 :goto_37

    :pswitch_4c
    move v8, v11

    goto/16 :goto_3a

    :pswitch_4d
    move v8, v13

    goto/16 :goto_3a

    :pswitch_4e
    const/16 v8, 0x5b

    goto/16 :goto_3a

    :pswitch_4f
    const/16 v8, 0x50

    goto/16 :goto_3a

    :pswitch_50
    move v8, v11

    goto/16 :goto_3d

    :pswitch_51
    move v8, v13

    goto/16 :goto_3d

    :pswitch_52
    const/16 v8, 0x5b

    goto/16 :goto_3d

    :pswitch_53
    const/16 v8, 0x50

    goto/16 :goto_3d

    :pswitch_54
    move v8, v11

    goto/16 :goto_40

    :pswitch_55
    move v8, v13

    goto/16 :goto_40

    :pswitch_56
    const/16 v8, 0x5b

    goto/16 :goto_40

    :pswitch_57
    const/16 v8, 0x50

    goto/16 :goto_40

    :pswitch_58
    move v8, v11

    goto/16 :goto_43

    :pswitch_59
    move v8, v13

    goto/16 :goto_43

    :pswitch_5a
    const/16 v8, 0x5b

    goto/16 :goto_43

    :pswitch_5b
    const/16 v8, 0x50

    goto/16 :goto_43

    :pswitch_5c
    move v8, v11

    goto/16 :goto_46

    :pswitch_5d
    move v8, v13

    goto/16 :goto_46

    :pswitch_5e
    const/16 v8, 0x5b

    goto/16 :goto_46

    :pswitch_5f
    const/16 v8, 0x50

    goto/16 :goto_46

    :pswitch_60
    move v8, v11

    goto/16 :goto_49

    :pswitch_61
    move v8, v13

    goto/16 :goto_49

    :pswitch_62
    const/16 v8, 0x5b

    goto/16 :goto_49

    :pswitch_63
    const/16 v8, 0x50

    goto/16 :goto_49

    :pswitch_64
    move v8, v11

    goto/16 :goto_4c

    :pswitch_65
    move v8, v13

    goto/16 :goto_4c

    :pswitch_66
    const/16 v8, 0x5b

    goto/16 :goto_4c

    :pswitch_67
    const/16 v8, 0x50

    goto/16 :goto_4c

    :pswitch_68
    move v8, v11

    goto/16 :goto_4f

    :pswitch_69
    move v8, v13

    goto/16 :goto_4f

    :pswitch_6a
    const/16 v8, 0x5b

    goto/16 :goto_4f

    :pswitch_6b
    const/16 v8, 0x50

    goto/16 :goto_4f

    :pswitch_6c
    move v8, v11

    goto/16 :goto_52

    :pswitch_6d
    move v8, v13

    goto/16 :goto_52

    :pswitch_6e
    const/16 v8, 0x5b

    goto/16 :goto_52

    :pswitch_6f
    const/16 v8, 0x50

    goto/16 :goto_52

    :pswitch_70
    move v8, v11

    goto/16 :goto_55

    :pswitch_71
    move v8, v13

    goto/16 :goto_55

    :pswitch_72
    const/16 v8, 0x5b

    goto/16 :goto_55

    :pswitch_73
    const/16 v8, 0x50

    goto/16 :goto_55

    :pswitch_74
    move v8, v11

    goto/16 :goto_58

    :pswitch_75
    move v8, v13

    goto/16 :goto_58

    :pswitch_76
    const/16 v8, 0x5b

    goto/16 :goto_58

    :pswitch_77
    const/16 v8, 0x50

    goto/16 :goto_58

    :pswitch_78
    move v8, v11

    goto/16 :goto_5b

    :pswitch_79
    move v8, v13

    goto/16 :goto_5b

    :pswitch_7a
    const/16 v8, 0x5b

    goto/16 :goto_5b

    :pswitch_7b
    const/16 v8, 0x50

    goto/16 :goto_5b

    :pswitch_7c
    move v8, v11

    goto/16 :goto_5e

    :pswitch_7d
    move v8, v13

    goto/16 :goto_5e

    :pswitch_7e
    const/16 v8, 0x5b

    goto/16 :goto_5e

    :pswitch_7f
    const/16 v8, 0x50

    goto/16 :goto_5e

    :pswitch_80
    move v8, v11

    goto/16 :goto_61

    :pswitch_81
    move v8, v13

    goto/16 :goto_61

    :pswitch_82
    const/16 v8, 0x5b

    goto/16 :goto_61

    :pswitch_83
    const/16 v8, 0x50

    goto/16 :goto_61

    :pswitch_84
    move v8, v11

    goto/16 :goto_64

    :pswitch_85
    move v8, v13

    goto/16 :goto_64

    :pswitch_86
    const/16 v8, 0x5b

    goto/16 :goto_64

    :pswitch_87
    const/16 v8, 0x50

    goto/16 :goto_64

    :pswitch_88
    move v8, v11

    goto/16 :goto_67

    :pswitch_89
    move v8, v13

    goto/16 :goto_67

    :pswitch_8a
    const/16 v8, 0x5b

    goto/16 :goto_67

    :pswitch_8b
    const/16 v8, 0x50

    goto/16 :goto_67

    :pswitch_8c
    move v8, v11

    goto/16 :goto_6a

    :pswitch_8d
    move v8, v13

    goto/16 :goto_6a

    :pswitch_8e
    const/16 v8, 0x5b

    goto/16 :goto_6a

    :pswitch_8f
    const/16 v8, 0x50

    goto/16 :goto_6a

    :pswitch_90
    move v8, v11

    goto/16 :goto_6d

    :pswitch_91
    move v8, v13

    goto/16 :goto_6d

    :pswitch_92
    const/16 v8, 0x5b

    goto/16 :goto_6d

    :pswitch_93
    const/16 v8, 0x50

    goto/16 :goto_6d

    :pswitch_94
    move v8, v11

    goto/16 :goto_70

    :pswitch_95
    move v8, v13

    goto/16 :goto_70

    :pswitch_96
    const/16 v8, 0x5b

    goto/16 :goto_70

    :pswitch_97
    const/16 v8, 0x50

    goto/16 :goto_70

    :pswitch_98
    move v8, v11

    goto/16 :goto_73

    :pswitch_99
    move v8, v13

    goto/16 :goto_73

    :pswitch_9a
    const/16 v8, 0x5b

    goto/16 :goto_73

    :pswitch_9b
    const/16 v8, 0x50

    goto/16 :goto_73

    :pswitch_9c
    move v8, v11

    goto/16 :goto_76

    :pswitch_9d
    move v8, v13

    goto/16 :goto_76

    :pswitch_9e
    const/16 v8, 0x5b

    goto/16 :goto_76

    :pswitch_9f
    const/16 v8, 0x50

    goto/16 :goto_76

    :pswitch_a0
    move v8, v11

    goto/16 :goto_79

    :pswitch_a1
    move v8, v13

    goto/16 :goto_79

    :pswitch_a2
    const/16 v8, 0x5b

    goto/16 :goto_79

    :pswitch_a3
    const/16 v8, 0x50

    goto/16 :goto_79

    :pswitch_a4
    move v8, v11

    goto/16 :goto_7c

    :pswitch_a5
    move v8, v13

    goto/16 :goto_7c

    :pswitch_a6
    const/16 v8, 0x5b

    goto/16 :goto_7c

    :pswitch_a7
    const/16 v8, 0x50

    goto/16 :goto_7c

    :pswitch_a8
    move v8, v11

    goto/16 :goto_7f

    :pswitch_a9
    move v8, v13

    goto/16 :goto_7f

    :pswitch_aa
    const/16 v8, 0x5b

    goto/16 :goto_7f

    :pswitch_ab
    const/16 v8, 0x50

    goto/16 :goto_7f

    :pswitch_ac
    move v7, v11

    goto/16 :goto_82

    :pswitch_ad
    move v7, v13

    goto/16 :goto_82

    :pswitch_ae
    const/16 v7, 0x5b

    goto/16 :goto_82

    :pswitch_af
    const/16 v7, 0x50

    goto/16 :goto_82

    :pswitch_b0
    move v8, v11

    goto/16 :goto_85

    :pswitch_b1
    move v8, v13

    goto/16 :goto_85

    :pswitch_b2
    const/16 v8, 0x5b

    goto/16 :goto_85

    :pswitch_b3
    const/16 v8, 0x50

    goto/16 :goto_85

    :pswitch_b4
    move v8, v11

    goto/16 :goto_88

    :pswitch_b5
    move v8, v13

    goto/16 :goto_88

    :pswitch_b6
    const/16 v8, 0x5b

    goto/16 :goto_88

    :pswitch_b7
    const/16 v8, 0x50

    goto/16 :goto_88

    :cond_5d
    move v4, v9

    goto/16 :goto_89

    :cond_5e
    move v4, v9

    goto/16 :goto_86

    :cond_5f
    move v3, v9

    goto/16 :goto_83

    :cond_60
    move v4, v9

    goto/16 :goto_80

    :cond_61
    move v4, v9

    goto/16 :goto_7d

    :cond_62
    move v4, v9

    goto/16 :goto_7a

    :cond_63
    move v4, v9

    goto/16 :goto_77

    :cond_64
    move v4, v9

    goto/16 :goto_74

    :cond_65
    move v4, v9

    goto/16 :goto_71

    :cond_66
    move v4, v9

    goto/16 :goto_6e

    :cond_67
    move v4, v9

    goto/16 :goto_6b

    :cond_68
    move v4, v9

    goto/16 :goto_68

    :cond_69
    move v4, v9

    goto/16 :goto_65

    :cond_6a
    move v4, v9

    goto/16 :goto_62

    :cond_6b
    move v4, v9

    goto/16 :goto_5f

    :cond_6c
    move v4, v9

    goto/16 :goto_5c

    :cond_6d
    move v4, v9

    goto/16 :goto_59

    :cond_6e
    move v4, v9

    goto/16 :goto_56

    :cond_6f
    move v4, v9

    goto/16 :goto_53

    :cond_70
    move v4, v9

    goto/16 :goto_50

    :cond_71
    move v4, v9

    goto/16 :goto_4d

    :cond_72
    move v4, v9

    goto/16 :goto_4a

    :cond_73
    move v4, v9

    goto/16 :goto_47

    :cond_74
    move v4, v9

    goto/16 :goto_44

    :cond_75
    move v4, v9

    goto/16 :goto_41

    :cond_76
    move v4, v9

    goto/16 :goto_3e

    :cond_77
    move v4, v9

    goto/16 :goto_3b

    :cond_78
    move v4, v9

    goto/16 :goto_38

    :cond_79
    move v4, v9

    goto/16 :goto_35

    :cond_7a
    move v4, v9

    goto/16 :goto_32

    :cond_7b
    move v4, v9

    goto/16 :goto_2f

    :cond_7c
    move v4, v9

    goto/16 :goto_2c

    :cond_7d
    move v4, v9

    goto/16 :goto_29

    :cond_7e
    move v4, v9

    goto/16 :goto_26

    :cond_7f
    move v4, v9

    goto/16 :goto_23

    :cond_80
    move v4, v9

    goto/16 :goto_20

    :cond_81
    move v3, v9

    goto/16 :goto_1d

    :cond_82
    move v4, v9

    goto/16 :goto_1a

    :cond_83
    move v4, v9

    goto/16 :goto_17

    :cond_84
    move v4, v9

    goto/16 :goto_14

    :cond_85
    move v4, v9

    goto/16 :goto_11

    :cond_86
    move v4, v9

    goto/16 :goto_e

    :cond_87
    move v4, v9

    goto/16 :goto_b

    :cond_88
    move v4, v9

    goto/16 :goto_8

    :cond_89
    move v3, v9

    goto/16 :goto_5

    :cond_8a
    move v3, v9

    goto/16 :goto_2

    nop

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

    :pswitch_data_2d
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
    .end packed-switch
.end method

.method public constructor <init>(Lcom/skyhookwireless/_sdko;)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/skyhookwireless/_sdkyb;->_sdkc:I

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkpc;-><init>()V

    const-class v1, Lcom/skyhookwireless/_sdkrc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    iput-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    check-cast p1, Lcom/skyhookwireless/_sdkm;

    invoke-virtual {p1}, Lcom/skyhookwireless/_sdkm;->_sdka()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkf:Landroid/content/Context;

    new-instance v1, Lcom/skyhookwireless/_sdkb;

    invoke-direct {v1, p0, v2}, Lcom/skyhookwireless/_sdkb;-><init>(Lcom/skyhookwireless/_sdkrc;Lcom/skyhookwireless/_sdkac;)V

    iput-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkg:Lcom/skyhookwireless/_sdkb;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkl:Ljava/util/ArrayList;

    new-instance v1, Lcom/skyhookwireless/_sdkcc;

    invoke-direct {v1, p0, v2}, Lcom/skyhookwireless/_sdkcc;-><init>(Lcom/skyhookwireless/_sdkrc;Lcom/skyhookwireless/_sdkac;)V

    iput-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkh:Lcom/skyhookwireless/_sdkcc;

    iput-object v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdkj:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdko:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    :cond_0
    return-void
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkcb;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    return-object v0
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkrc;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdkub;
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;

    return-object p1
.end method

.method private _sdka(Landroid/net/wifi/WifiInfo;JLcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdkzb;
    .locals 6

    invoke-static {p1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/skyhookwireless/_sdkzb;

    new-instance v1, Lcom/skyhookwireless/_sdkyb;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/skyhookwireless/_sdkyb;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/skyhookwireless/_sdkzb;-><init>(Lcom/skyhookwireless/_sdkyb;IJLcom/skyhookwireless/_sdkub;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkrc;Landroid/net/wifi/WifiInfo;JLcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdkzb;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/skyhookwireless/_sdkrc;->_sdka(Landroid/net/wifi/WifiInfo;JLcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdkzb;

    move-result-object v0

    return-object v0
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkrc;Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkp:Ljava/util/concurrent/FutureTask;

    return-object p1
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkrc;Ljava/util/List;JLcom/skyhookwireless/_sdkub;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/skyhookwireless/_sdkrc;->_sdka(Ljava/util/List;JLcom/skyhookwireless/_sdkub;Ljava/util/ArrayList;)V

    return-void
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkrc;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/skyhookwireless/_sdkrc;->_sdka(Z)V

    return-void
.end method

.method private _sdka(Ljava/util/List;JLcom/skyhookwireless/_sdkub;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;J",
            "Lcom/skyhookwireless/_sdkub;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;)V"
        }
    .end annotation

    sget v7, Lcom/skyhookwireless/_sdkyb;->_sdkc:I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/net/wifi/ScanResult;

    move-object v3, v0

    if-eqz v3, :cond_0

    iget-object v1, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Lcom/skyhookwireless/_sdkyb;

    iget-object v1, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/skyhookwireless/_sdkyb;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    sget-object v4, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v5, 0x20

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v6, 0x21

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v7, :cond_0

    :cond_1
    new-instance v1, Lcom/skyhookwireless/_sdkzb;

    iget v3, v3, Landroid/net/wifi/ScanResult;->level:I

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/skyhookwireless/_sdkzb;-><init>(Lcom/skyhookwireless/_sdkyb;IJLcom/skyhookwireless/_sdkub;)V

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_0

    :cond_2
    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v6, 0x22

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private _sdka(Z)V
    .locals 10

    const-wide/16 v8, 0x2710

    const/4 v7, 0x1

    sget v0, Lcom/skyhookwireless/_sdkyb;->_sdkc:I

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkrc;->_sdkc()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdko:Z

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkrc;->_sdkc()V

    sget-boolean v1, Lcom/skyhookwireless/_sdkrc;->_sdkq:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;

    if-eqz v2, :cond_7

    iget-wide v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdkn:J

    iget-object v4, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v4}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v2, v8

    :goto_0
    if-eqz p1, :cond_2

    const-wide/32 v4, 0xea60

    cmp-long v4, v2, v4

    if-lez v4, :cond_8

    :cond_2
    if-eqz p1, :cond_5

    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lcom/skyhookwireless/_sdkac;

    invoke-direct {v5, p0}, Lcom/skyhookwireless/_sdkac;-><init>(Lcom/skyhookwireless/_sdkrc;)V

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {v4, v2, v3}, Lcom/skyhookwireless/_sdkn;->_sdka(Ljava/lang/Runnable;J)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v4, p0, Lcom/skyhookwireless/_sdkrc;->_sdkp:Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_9

    move v1, v7

    :cond_4
    iget-object v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_8

    :cond_5
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    move v0, v7

    :goto_2
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget-object v0, Lcom/skyhookwireless/_sdkrc;->_sdkd:Lcom/skyhookwireless/_sdkdc;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkdc;->_sdkb(Landroid/net/wifi/WifiManager;)V

    iput-boolean v7, p0, Lcom/skyhookwireless/_sdkrc;->_sdko:Z

    :cond_6
    return-void

    :cond_7
    iget-wide v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdkn:J

    sub-long/2addr v2, v8

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    move v1, v7

    goto :goto_1
.end method

.method static _sdka(Landroid/net/wifi/WifiInfo;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkrc;Ljava/util/List;Lcom/skyhookwireless/_sdkzb;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/skyhookwireless/_sdkrc;->_sdka(Ljava/util/List;Lcom/skyhookwireless/_sdkzb;)Z

    move-result v0

    return v0
.end method

.method private _sdka(Ljava/util/List;Lcom/skyhookwireless/_sdkzb;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;",
            "Lcom/skyhookwireless/_sdkzb;",
            ")Z"
        }
    .end annotation

    sget v0, Lcom/skyhookwireless/_sdkyb;->_sdkc:I

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkzb;->_sdka()Lcom/skyhookwireless/_sdkyb;

    move-result-object v2

    invoke-virtual {p2}, Lcom/skyhookwireless/_sdkzb;->_sdka()Lcom/skyhookwireless/_sdkyb;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/skyhookwireless/_sdkyb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private _sdkb()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkrc;->_sdkc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdko:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkrc;->_sdkc()V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget-object v0, Lcom/skyhookwireless/_sdkrc;->_sdkd:Lcom/skyhookwireless/_sdkdc;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkdc;->_sdka(Landroid/net/wifi/WifiManager;)V

    iput-boolean v3, p0, Lcom/skyhookwireless/_sdkrc;->_sdko:Z

    goto :goto_1
.end method

.method static _sdkb(Lcom/skyhookwireless/_sdkrc;)V
    .locals 0

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkrc;->_sdkb()V

    return-void
.end method

.method static _sdkc(Lcom/skyhookwireless/_sdkrc;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private _sdkc()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkp:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkp:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkp:Ljava/util/concurrent/FutureTask;

    :cond_0
    return-void
.end method

.method static _sdkd(Lcom/skyhookwireless/_sdkrc;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkl:Ljava/util/ArrayList;

    return-object v0
.end method

.method static _sdke(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkbc;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkk:Lcom/skyhookwireless/_sdkbc;

    return-object v0
.end method

.method static _sdkf(Lcom/skyhookwireless/_sdkrc;)Lcom/skyhookwireless/_sdkub;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;

    return-object v0
.end method

.method static _sdkg(Lcom/skyhookwireless/_sdkrc;)V
    .locals 0

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkrc;->_sdka()V

    return-void
.end method

.method static _sdkh(Lcom/skyhookwireless/_sdkrc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkf:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected _sdka(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdkpc;
    .locals 1

    new-instance v0, Lcom/skyhookwireless/_sdkrc;

    invoke-direct {v0, p1}, Lcom/skyhookwireless/_sdkrc;-><init>(Lcom/skyhookwireless/_sdko;)V

    return-object v0
.end method

.method public declared-synchronized _sdka(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/skyhookwireless/_sdkj;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkn:J

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkrc;->_sdkc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkh:Lcom/skyhookwireless/_sdkcc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkn;->_sdka(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_1

    :try_start_2
    new-instance v0, Lcom/skyhookwireless/_sdkj;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/skyhookwireless/_sdkj;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/skyhookwireless/_sdkj;

    sget-object v2, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-direct {v1, v2, v0}, Lcom/skyhookwireless/_sdkj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/skyhookwireless/_sdkbc;

    invoke-direct {v1, p0, v0}, Lcom/skyhookwireless/_sdkbc;-><init>(Lcom/skyhookwireless/_sdkrc;Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkk:Lcom/skyhookwireless/_sdkbc;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkl:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v3, 0x29

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v4, 0x28

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdkf:Landroid/content/Context;

    iget-object v3, p0, Lcom/skyhookwireless/_sdkrc;->_sdkg:Lcom/skyhookwireless/_sdkb;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkrc;->_sdkb()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0x25

    aget-object v1, v1, v2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkj:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkj:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkj:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_2
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0x24

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0x27

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkj:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0x23

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized _sdka(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkl:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized _sdka()Z
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    monitor-enter p0

    :try_start_0
    sget v6, Lcom/skyhookwireless/_sdkyb;->_sdkc:I

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v7

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkrc;->_sdkc()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v12

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/skyhookwireless/_sdkrc;->_sdkb()V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    move v0, v12

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    sget-boolean v0, Lcom/skyhookwireless/_sdkrc;->_sdkq:Z

    if-nez v0, :cond_3

    if-nez v8, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v4

    invoke-direct {p0, v8, v2, v3, v4}, Lcom/skyhookwireless/_sdkrc;->_sdka(Landroid/net/wifi/WifiInfo;JLcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdkzb;

    move-result-object v9

    if-eqz v9, :cond_7

    move v10, v13

    :goto_1
    if-eqz v10, :cond_9

    if-eqz v7, :cond_4

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v11, 0x1b

    aget-object v5, v5, v11

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v5, p0, Lcom/skyhookwireless/_sdkrc;->_sdkl:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/skyhookwireless/_sdkrc;->_sdka(Ljava/util/List;JLcom/skyhookwireless/_sdkub;Ljava/util/ArrayList;)V

    if-eqz v7, :cond_6

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdkl:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v6, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkl:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v9}, Lcom/skyhookwireless/_sdkrc;->_sdka(Ljava/util/List;Lcom/skyhookwireless/_sdkzb;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/skyhookwireless/_sdkrc;->_sdka(Z)V

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkrc;->_sdka()V

    move v0, v13

    goto/16 :goto_0

    :cond_7
    move v10, v12

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isValidState(Landroid/net/wifi/SupplicantState;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-eqz v7, :cond_a

    iget-object v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v5, 0x1a

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v5, 0x19

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_a
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_b

    iget-object v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-gez v2, :cond_b

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    move v0, v13

    goto/16 :goto_0

    :cond_b
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_c

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_c

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_d

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    move v0, v12

    goto/16 :goto_0

    :cond_d
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_e

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_e

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    move v0, v12

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkrc;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v0

    if-eqz v7, :cond_10

    iget-object v2, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v5, 0x17

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_10
    move v0, v13

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkk:Lcom/skyhookwireless/_sdkbc;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkbc;->_sdkc()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkk:Lcom/skyhookwireless/_sdkbc;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkbc;->_sdka()V

    if-eqz v6, :cond_13

    :cond_12
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkj:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_14

    if-nez v10, :cond_14

    :try_start_3
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkj:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v0

    move v1, v0

    move v0, v12

    :goto_2
    if-eqz v0, :cond_17

    :try_start_4
    sget-boolean v0, Lcom/skyhookwireless/_sdkrc;->_sdkq:Z

    if-nez v0, :cond_15

    if-eqz v1, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkj:Ljava/lang/reflect/Method;

    move v0, v13

    move v1, v12

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkj:Ljava/lang/reflect/Method;

    move v0, v13

    move v1, v12

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    move v0, v13

    move v1, v12

    goto :goto_2

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    move v0, v13

    move v1, v12

    goto :goto_2

    :catch_4
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_14
    move v0, v13

    move v1, v12

    goto :goto_2

    :cond_15
    :try_start_5
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result v0

    :goto_3
    if-eqz v0, :cond_16

    :try_start_6
    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v1

    iput-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v6, :cond_0

    :cond_16
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkk:Lcom/skyhookwireless/_sdkbc;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkbc;->_sdkb()V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v12

    goto :goto_3

    :cond_17
    move v0, v1

    goto :goto_3
.end method

.method public declared-synchronized _sdkb()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkub;->_sdka()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public _sdkc()Z
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized _sdkd()Z
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkrc;->_sdkc()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v2, 0x2d

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized _sdke()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkrc;->_sdkc()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/skyhookwireless/_sdkrc;->_sdkc()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/skyhookwireless/_sdkrc;->_sdka(Z)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkk:Lcom/skyhookwireless/_sdkbc;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkbc;->_sdkb()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkk:Lcom/skyhookwireless/_sdkbc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkf:Landroid/content/Context;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkg:Lcom/skyhookwireless/_sdkb;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdke:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdki:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkl:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/skyhookwireless/_sdkrc;->_sdkm:Lcom/skyhookwireless/_sdkub;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public _sdkf()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/skyhookwireless/_sdkrc;->z:[Ljava/lang/String;

    const/16 v1, 0x2c

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkrc;->_sdkf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
