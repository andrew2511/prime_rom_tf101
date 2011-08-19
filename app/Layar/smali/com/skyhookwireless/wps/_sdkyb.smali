.class public final Lcom/skyhookwireless/wps/_sdkyb;
.super Ljava/lang/Object;


# static fields
.field static final _sdko:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/wps/_sdkec;

.field private final _sdkb:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkc:Lcom/skyhookwireless/wps/_sdkbc;

.field private final _sdkd:Lcom/skyhookwireless/wps/_sdkwb;

.field private final _sdke:Lcom/skyhookwireless/wps/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/skyhookwireless/wps/Cache",
            "<",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _sdkf:Lcom/skyhookwireless/wps/_sdkvb;

.field private _sdkg:Ljava/lang/String;

.field private final _sdkh:Lcom/skyhookwireless/wps/TilingListener;

.field private _sdki:Ljava/lang/String;

.field private _sdkj:Z

.field private _sdkk:Z

.field private _sdkl:Z

.field private _sdkm:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkxb;",
            ">;"
        }
    .end annotation
.end field

.field private _sdkn:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x45

    const/16 v12, 0xb

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u000eq%)"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_78

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

    const-string v1, "He<1c\u0005j=,h\u0001p *eL$9$y\u0001i:i+\u0010e;$f\u0013*. \u007f0e=-#I-ix+H"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_77

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

    const-string v2, "@,"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_76

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

    const-string v2, "\u0003k<)o\u000e#=eo\u000fs\')d\u0001`i1b\u000cai"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_75

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

    const-string v1, "\u000ea>e\u007f\th,eh\u000fj=$b\u000ewi1c\u0005$*$h\u0008a-e\u007f\th,i+\tpi&j\u000e$+ +\u0004k>+g\u000fe- o"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_74

    move v3, v9

    :cond_8
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_c
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_4

    move v7, v12

    :goto_d
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_9

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_c

    :cond_9
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_e
    if-gt v2, v3, :cond_8

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x5

    const-string v2, "7T\u001a\u001a_\th +l#e%)i\u0001g\"ey\u0005p<7e\u0005`i\u0012[3[\u001a\u0011D0"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_73

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

    const-string v2, "\u0004k>+g\u000fe-,e\u0007$=,g\u0005$"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_72

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

    const-string v2, "I$()y\u0005e-<+\tji&j\u0003l,i+"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_71

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

    const-string v2, "\u0014m% +\tj= y\u0013a*1b\u000eci"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_70

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

    const/16 v1, 0x9

    const-string v2, "\u0014m% +\tji&j\u0003l,eb\u0013$=*d@k%!\'@s,eh\u0001ji7n\u0010h(&n@m="

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6f

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

    move v8, v12

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

    const-string v2, "\u0013o 5{\tj.eo\u000fs\')d\u0001`i*m@p )n@"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6e

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

    const-string v1, "7T\u001a\u001a_\th +l#e%)i\u0001g\"ey\u0005p<7e\u0005`i\u0012[3[\n\nE4M\u0007\u0010N@b&7+\u0014m% +"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_6d

    move v3, v9

    :cond_16
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_21
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_b

    move v7, v12

    :goto_22
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_17

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_21

    :cond_17
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_23
    if-gt v2, v3, :cond_16

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const/16 v1, 0xc

    const-string v2, "I*gk"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6c

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

    const-string v2, "\u000eki(d\u0012ai1b\u000ca:e\u007f\u000f$-*|\u000eh&$o"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6b

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

    const-string v2, "\u0013g(++\u0003e*-n\u0013$,=h\u0005a- o@a:1b\re= o@P )b\u000ec\u001b\u0014+\u0013m3 +H6|s;P$+<\u007f\u0005w`"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6a

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

    const-string v2, "\u0003e\'b\u007f@`,1n\u0012i +n@h&&j\u0014m&++\u0006v&(+\u0014l,eh\u0015v; e\u0014$=,g\u0005w"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_69

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

    const-string v2, "@,$$b\u000e$=,g\u0005$ 6+"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_68

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

    const-string v2, "\u000eki\u0004[\u0013$&7+\u0003a%)x@w*$e\u000ea-"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_67

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

    const-string v2, "\u0015j\"+d\u0017j"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_66

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

    const-string v2, "\u0001j&1c\u0005vi1b\u000cm\'\"+\u0013a:6b\u000fji,x@e%7n\u0001`0eb\u000e$97d\u0007v,6x"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_65

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

    const-string v2, "\u0014l,ef\u0001m\'e\u007f\th,ec\u0001w\'b\u007f@f, e@`&2e\u000ck(!n\u0004$0 \u007f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_64

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

    const-string v2, "\u0014m%,e\u0007$-,x\u0001f% o"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_63

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

    const-string v2, "\rk? o@k<1+\u000fbi(j\tji1b\u000ca"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_62

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

    const-string v2, "\rk:1+\re*6+\u0017a; +\u0006k<+o@m\'e\u007f\th,e"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_61

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

    const-string v2, "\u0015j(\'g\u0005$=*+\u0010k:1+\u0014m%,e\u0007$; z\u0015a:1"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_60

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

    const-string v2, "\u000eki\u0011b\u000cm\'\"Y1$9 e\u0004m\'\""

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5f

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

    const-string v2, "\u0013a;3n\u0012$()y\u0005e-<+\u0012a=0y\u000ea-ee\u000f$=,g\u0005wi#d\u0012$=-b\u0013$: \u007f@k/ej\u0010weee\u000f$\' n\u0004$=*+\u0012ad,x\u0013q,e_\th +l2U"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5e

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

    const-string v2, "\u0001pi)n\u0001w=ed\u000eai${@m:ey\u0005u<,y\u0005`i1d@w,+o@P )b\u000ec\u001b\u0014"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5d

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

    const-string v2, "N`(1"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5c

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

    const-string v2, "@w<&h\u0005w:#~\u000ch0ex\u0001r,!+\u0001wi"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5b

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

    const-string v2, "\u0014m% +"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5a

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

    const-string v2, "\twi+d\u0014$(em\th,z*"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_59

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

    const-string v2, "\u000ck&.b\u000eci#d\u0012$,=b\u0013p +l@p )n\u0013$ ++"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_58

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

    const-string v2, "N*g"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_57

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

    const-string v2, "H*clTH*clWN`(1"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_56

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

    const-string v2, "@`& x@j&1+\u0005| 6\u007f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_55

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

    const-string v2, "\u0006e )n\u0004$=*+\u0005j<(n\u0012e= +\u0006m% x@m\'e"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_54

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

    const-string v2, "\u0006k<+o@p )n@"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_53

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

    const-string v2, "@m:ee\u000fpi$+\u0004m; h\u0014k;<"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_52

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

    const-string v2, "(e\'!g\tj.em\u0001m%0y\u0005"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_51

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/wps/_sdkyb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_50

    move v0, v10

    :goto_78
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkyb;->_sdko:Z

    return-void

    :cond_50
    move v0, v9

    goto :goto_78

    :pswitch_0
    const/16 v7, 0x60

    goto/16 :goto_1

    :pswitch_1
    move v7, v11

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x49

    goto/16 :goto_1

    :pswitch_3
    move v7, v13

    goto/16 :goto_1

    :pswitch_4
    const/16 v7, 0x60

    goto/16 :goto_4

    :pswitch_5
    move v7, v11

    goto/16 :goto_4

    :pswitch_6
    const/16 v7, 0x49

    goto/16 :goto_4

    :pswitch_7
    move v7, v13

    goto/16 :goto_4

    :pswitch_8
    const/16 v8, 0x60

    goto/16 :goto_7

    :pswitch_9
    move v8, v11

    goto/16 :goto_7

    :pswitch_a
    const/16 v8, 0x49

    goto/16 :goto_7

    :pswitch_b
    move v8, v13

    goto/16 :goto_7

    :pswitch_c
    const/16 v8, 0x60

    goto/16 :goto_a

    :pswitch_d
    move v8, v11

    goto/16 :goto_a

    :pswitch_e
    const/16 v8, 0x49

    goto/16 :goto_a

    :pswitch_f
    move v8, v13

    goto/16 :goto_a

    :pswitch_10
    const/16 v7, 0x60

    goto/16 :goto_d

    :pswitch_11
    move v7, v11

    goto/16 :goto_d

    :pswitch_12
    const/16 v7, 0x49

    goto/16 :goto_d

    :pswitch_13
    move v7, v13

    goto/16 :goto_d

    :pswitch_14
    const/16 v8, 0x60

    goto/16 :goto_10

    :pswitch_15
    move v8, v11

    goto/16 :goto_10

    :pswitch_16
    const/16 v8, 0x49

    goto/16 :goto_10

    :pswitch_17
    move v8, v13

    goto/16 :goto_10

    :pswitch_18
    const/16 v8, 0x60

    goto/16 :goto_13

    :pswitch_19
    move v8, v11

    goto/16 :goto_13

    :pswitch_1a
    const/16 v8, 0x49

    goto/16 :goto_13

    :pswitch_1b
    move v8, v13

    goto/16 :goto_13

    :pswitch_1c
    const/16 v8, 0x60

    goto/16 :goto_16

    :pswitch_1d
    move v8, v11

    goto/16 :goto_16

    :pswitch_1e
    const/16 v8, 0x49

    goto/16 :goto_16

    :pswitch_1f
    move v8, v13

    goto/16 :goto_16

    :pswitch_20
    const/16 v8, 0x60

    goto/16 :goto_19

    :pswitch_21
    move v8, v11

    goto/16 :goto_19

    :pswitch_22
    const/16 v8, 0x49

    goto/16 :goto_19

    :pswitch_23
    move v8, v13

    goto/16 :goto_19

    :pswitch_24
    const/16 v8, 0x60

    goto/16 :goto_1c

    :pswitch_25
    move v8, v11

    goto/16 :goto_1c

    :pswitch_26
    const/16 v8, 0x49

    goto/16 :goto_1c

    :pswitch_27
    move v8, v13

    goto/16 :goto_1c

    :pswitch_28
    const/16 v8, 0x60

    goto/16 :goto_1f

    :pswitch_29
    move v8, v11

    goto/16 :goto_1f

    :pswitch_2a
    const/16 v8, 0x49

    goto/16 :goto_1f

    :pswitch_2b
    move v8, v13

    goto/16 :goto_1f

    :pswitch_2c
    const/16 v7, 0x60

    goto/16 :goto_22

    :pswitch_2d
    move v7, v11

    goto/16 :goto_22

    :pswitch_2e
    const/16 v7, 0x49

    goto/16 :goto_22

    :pswitch_2f
    move v7, v13

    goto/16 :goto_22

    :pswitch_30
    const/16 v8, 0x60

    goto/16 :goto_25

    :pswitch_31
    move v8, v11

    goto/16 :goto_25

    :pswitch_32
    const/16 v8, 0x49

    goto/16 :goto_25

    :pswitch_33
    move v8, v13

    goto/16 :goto_25

    :pswitch_34
    const/16 v8, 0x60

    goto/16 :goto_28

    :pswitch_35
    move v8, v11

    goto/16 :goto_28

    :pswitch_36
    const/16 v8, 0x49

    goto/16 :goto_28

    :pswitch_37
    move v8, v13

    goto/16 :goto_28

    :pswitch_38
    const/16 v8, 0x60

    goto/16 :goto_2b

    :pswitch_39
    move v8, v11

    goto/16 :goto_2b

    :pswitch_3a
    const/16 v8, 0x49

    goto/16 :goto_2b

    :pswitch_3b
    move v8, v13

    goto/16 :goto_2b

    :pswitch_3c
    const/16 v8, 0x60

    goto/16 :goto_2e

    :pswitch_3d
    move v8, v11

    goto/16 :goto_2e

    :pswitch_3e
    const/16 v8, 0x49

    goto/16 :goto_2e

    :pswitch_3f
    move v8, v13

    goto/16 :goto_2e

    :pswitch_40
    const/16 v8, 0x60

    goto/16 :goto_31

    :pswitch_41
    move v8, v11

    goto/16 :goto_31

    :pswitch_42
    const/16 v8, 0x49

    goto/16 :goto_31

    :pswitch_43
    move v8, v13

    goto/16 :goto_31

    :pswitch_44
    const/16 v8, 0x60

    goto/16 :goto_34

    :pswitch_45
    move v8, v11

    goto/16 :goto_34

    :pswitch_46
    const/16 v8, 0x49

    goto/16 :goto_34

    :pswitch_47
    move v8, v13

    goto/16 :goto_34

    :pswitch_48
    const/16 v8, 0x60

    goto/16 :goto_37

    :pswitch_49
    move v8, v11

    goto/16 :goto_37

    :pswitch_4a
    const/16 v8, 0x49

    goto/16 :goto_37

    :pswitch_4b
    move v8, v13

    goto/16 :goto_37

    :pswitch_4c
    const/16 v8, 0x60

    goto/16 :goto_3a

    :pswitch_4d
    move v8, v11

    goto/16 :goto_3a

    :pswitch_4e
    const/16 v8, 0x49

    goto/16 :goto_3a

    :pswitch_4f
    move v8, v13

    goto/16 :goto_3a

    :pswitch_50
    const/16 v8, 0x60

    goto/16 :goto_3d

    :pswitch_51
    move v8, v11

    goto/16 :goto_3d

    :pswitch_52
    const/16 v8, 0x49

    goto/16 :goto_3d

    :pswitch_53
    move v8, v13

    goto/16 :goto_3d

    :pswitch_54
    const/16 v8, 0x60

    goto/16 :goto_40

    :pswitch_55
    move v8, v11

    goto/16 :goto_40

    :pswitch_56
    const/16 v8, 0x49

    goto/16 :goto_40

    :pswitch_57
    move v8, v13

    goto/16 :goto_40

    :pswitch_58
    const/16 v8, 0x60

    goto/16 :goto_43

    :pswitch_59
    move v8, v11

    goto/16 :goto_43

    :pswitch_5a
    const/16 v8, 0x49

    goto/16 :goto_43

    :pswitch_5b
    move v8, v13

    goto/16 :goto_43

    :pswitch_5c
    const/16 v8, 0x60

    goto/16 :goto_46

    :pswitch_5d
    move v8, v11

    goto/16 :goto_46

    :pswitch_5e
    const/16 v8, 0x49

    goto/16 :goto_46

    :pswitch_5f
    move v8, v13

    goto/16 :goto_46

    :pswitch_60
    const/16 v8, 0x60

    goto/16 :goto_49

    :pswitch_61
    move v8, v11

    goto/16 :goto_49

    :pswitch_62
    const/16 v8, 0x49

    goto/16 :goto_49

    :pswitch_63
    move v8, v13

    goto/16 :goto_49

    :pswitch_64
    const/16 v8, 0x60

    goto/16 :goto_4c

    :pswitch_65
    move v8, v11

    goto/16 :goto_4c

    :pswitch_66
    const/16 v8, 0x49

    goto/16 :goto_4c

    :pswitch_67
    move v8, v13

    goto/16 :goto_4c

    :pswitch_68
    const/16 v8, 0x60

    goto/16 :goto_4f

    :pswitch_69
    move v8, v11

    goto/16 :goto_4f

    :pswitch_6a
    const/16 v8, 0x49

    goto/16 :goto_4f

    :pswitch_6b
    move v8, v13

    goto/16 :goto_4f

    :pswitch_6c
    const/16 v8, 0x60

    goto/16 :goto_52

    :pswitch_6d
    move v8, v11

    goto/16 :goto_52

    :pswitch_6e
    const/16 v8, 0x49

    goto/16 :goto_52

    :pswitch_6f
    move v8, v13

    goto/16 :goto_52

    :pswitch_70
    const/16 v8, 0x60

    goto/16 :goto_55

    :pswitch_71
    move v8, v11

    goto/16 :goto_55

    :pswitch_72
    const/16 v8, 0x49

    goto/16 :goto_55

    :pswitch_73
    move v8, v13

    goto/16 :goto_55

    :pswitch_74
    const/16 v8, 0x60

    goto/16 :goto_58

    :pswitch_75
    move v8, v11

    goto/16 :goto_58

    :pswitch_76
    const/16 v8, 0x49

    goto/16 :goto_58

    :pswitch_77
    move v8, v13

    goto/16 :goto_58

    :pswitch_78
    const/16 v8, 0x60

    goto/16 :goto_5b

    :pswitch_79
    move v8, v11

    goto/16 :goto_5b

    :pswitch_7a
    const/16 v8, 0x49

    goto/16 :goto_5b

    :pswitch_7b
    move v8, v13

    goto/16 :goto_5b

    :pswitch_7c
    const/16 v8, 0x60

    goto/16 :goto_5e

    :pswitch_7d
    move v8, v11

    goto/16 :goto_5e

    :pswitch_7e
    const/16 v8, 0x49

    goto/16 :goto_5e

    :pswitch_7f
    move v8, v13

    goto/16 :goto_5e

    :pswitch_80
    const/16 v8, 0x60

    goto/16 :goto_61

    :pswitch_81
    move v8, v11

    goto/16 :goto_61

    :pswitch_82
    const/16 v8, 0x49

    goto/16 :goto_61

    :pswitch_83
    move v8, v13

    goto/16 :goto_61

    :pswitch_84
    const/16 v8, 0x60

    goto/16 :goto_64

    :pswitch_85
    move v8, v11

    goto/16 :goto_64

    :pswitch_86
    const/16 v8, 0x49

    goto/16 :goto_64

    :pswitch_87
    move v8, v13

    goto/16 :goto_64

    :pswitch_88
    const/16 v8, 0x60

    goto/16 :goto_67

    :pswitch_89
    move v8, v11

    goto/16 :goto_67

    :pswitch_8a
    const/16 v8, 0x49

    goto/16 :goto_67

    :pswitch_8b
    move v8, v13

    goto/16 :goto_67

    :pswitch_8c
    const/16 v8, 0x60

    goto/16 :goto_6a

    :pswitch_8d
    move v8, v11

    goto/16 :goto_6a

    :pswitch_8e
    const/16 v8, 0x49

    goto/16 :goto_6a

    :pswitch_8f
    move v8, v13

    goto/16 :goto_6a

    :pswitch_90
    const/16 v8, 0x60

    goto/16 :goto_6d

    :pswitch_91
    move v8, v11

    goto/16 :goto_6d

    :pswitch_92
    const/16 v8, 0x49

    goto/16 :goto_6d

    :pswitch_93
    move v8, v13

    goto/16 :goto_6d

    :pswitch_94
    const/16 v8, 0x60

    goto/16 :goto_70

    :pswitch_95
    move v8, v11

    goto/16 :goto_70

    :pswitch_96
    const/16 v8, 0x49

    goto/16 :goto_70

    :pswitch_97
    move v8, v13

    goto/16 :goto_70

    :pswitch_98
    const/16 v8, 0x60

    goto/16 :goto_73

    :pswitch_99
    move v8, v11

    goto/16 :goto_73

    :pswitch_9a
    const/16 v8, 0x49

    goto/16 :goto_73

    :pswitch_9b
    move v8, v13

    goto/16 :goto_73

    :pswitch_9c
    const/16 v8, 0x60

    goto/16 :goto_76

    :pswitch_9d
    move v8, v11

    goto/16 :goto_76

    :pswitch_9e
    const/16 v8, 0x49

    goto/16 :goto_76

    :pswitch_9f
    move v8, v13

    goto/16 :goto_76

    :cond_51
    move v4, v9

    goto/16 :goto_77

    :cond_52
    move v4, v9

    goto/16 :goto_74

    :cond_53
    move v4, v9

    goto/16 :goto_71

    :cond_54
    move v4, v9

    goto/16 :goto_6e

    :cond_55
    move v4, v9

    goto/16 :goto_6b

    :cond_56
    move v4, v9

    goto/16 :goto_68

    :cond_57
    move v4, v9

    goto/16 :goto_65

    :cond_58
    move v4, v9

    goto/16 :goto_62

    :cond_59
    move v4, v9

    goto/16 :goto_5f

    :cond_5a
    move v4, v9

    goto/16 :goto_5c

    :cond_5b
    move v4, v9

    goto/16 :goto_59

    :cond_5c
    move v4, v9

    goto/16 :goto_56

    :cond_5d
    move v4, v9

    goto/16 :goto_53

    :cond_5e
    move v4, v9

    goto/16 :goto_50

    :cond_5f
    move v4, v9

    goto/16 :goto_4d

    :cond_60
    move v4, v9

    goto/16 :goto_4a

    :cond_61
    move v4, v9

    goto/16 :goto_47

    :cond_62
    move v4, v9

    goto/16 :goto_44

    :cond_63
    move v4, v9

    goto/16 :goto_41

    :cond_64
    move v4, v9

    goto/16 :goto_3e

    :cond_65
    move v4, v9

    goto/16 :goto_3b

    :cond_66
    move v4, v9

    goto/16 :goto_38

    :cond_67
    move v4, v9

    goto/16 :goto_35

    :cond_68
    move v4, v9

    goto/16 :goto_32

    :cond_69
    move v4, v9

    goto/16 :goto_2f

    :cond_6a
    move v4, v9

    goto/16 :goto_2c

    :cond_6b
    move v4, v9

    goto/16 :goto_29

    :cond_6c
    move v4, v9

    goto/16 :goto_26

    :cond_6d
    move v3, v9

    goto/16 :goto_23

    :cond_6e
    move v4, v9

    goto/16 :goto_20

    :cond_6f
    move v4, v9

    goto/16 :goto_1d

    :cond_70
    move v4, v9

    goto/16 :goto_1a

    :cond_71
    move v4, v9

    goto/16 :goto_17

    :cond_72
    move v4, v9

    goto/16 :goto_14

    :cond_73
    move v4, v9

    goto/16 :goto_11

    :cond_74
    move v3, v9

    goto/16 :goto_e

    :cond_75
    move v4, v9

    goto/16 :goto_b

    :cond_76
    move v4, v9

    goto/16 :goto_8

    :cond_77
    move v3, v9

    goto/16 :goto_5

    :cond_78
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
.end method

.method public constructor <init>(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/_sdkfc;)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkfc;->_sdke:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/skyhookwireless/wps/_sdkzb;

    invoke-direct {v1, p0}, Lcom/skyhookwireless/wps/_sdkzb;-><init>(Lcom/skyhookwireless/wps/_sdkyb;)V

    iput-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdka:Lcom/skyhookwireless/wps/_sdkec;

    new-instance v1, Lcom/skyhookwireless/wps/Cache;

    invoke-direct {v1}, Lcom/skyhookwireless/wps/Cache;-><init>()V

    iput-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdke:Lcom/skyhookwireless/wps/Cache;

    new-instance v1, Lcom/skyhookwireless/wps/_sdkvb;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Lcom/skyhookwireless/wps/_sdkvb;-><init>(I)V

    iput-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkf:Lcom/skyhookwireless/wps/_sdkvb;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkg:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdki:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkj:Z

    iput-boolean v4, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkk:Z

    iput-boolean v4, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkl:Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkm:Ljava/util/LinkedList;

    iput v4, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkn:I

    const-class v1, Lcom/skyhookwireless/wps/_sdkyb;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    iput-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkfc;->_sdka()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkfc;->_sdka()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v2, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkfc;->_sdka()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkfc;->_sdka()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkg:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget v0, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    :cond_3
    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkfc;->_sdka()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkg:Ljava/lang/String;

    :cond_4
    new-instance v0, Lcom/skyhookwireless/wps/_sdkwb;

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkfc;->_sdkc()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lcom/skyhookwireless/wps/_sdkwb;-><init>(Lcom/skyhookwireless/wps/WPSAuthentication;J)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkd:Lcom/skyhookwireless/wps/_sdkwb;

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkfc;->_sdkd()Lcom/skyhookwireless/wps/TilingListener;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkh:Lcom/skyhookwireless/wps/TilingListener;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkbc;

    invoke-virtual {p2}, Lcom/skyhookwireless/wps/_sdkfc;->_sdkb()J

    move-result-wide v1

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdka:Lcom/skyhookwireless/wps/_sdkec;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/skyhookwireless/wps/_sdkbc;-><init>(Lcom/skyhookwireless/wps/WPSAuthentication;JLcom/skyhookwireless/wps/_sdkec;)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkc:Lcom/skyhookwireless/wps/_sdkbc;

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkd()V

    return-void
.end method

.method static _sdka(Lcom/skyhookwireless/wps/_sdkyb;I)I
    .locals 0

    iput p1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkn:I

    return p1
.end method

.method static _sdka(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/_sdkcb;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    return-object v0
.end method

.method static _sdka(Lcom/skyhookwireless/wps/_sdkyb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdki:Ljava/lang/String;

    return-object p1
.end method

.method static _sdka(Lcom/skyhookwireless/wps/_sdkyb;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkm:Ljava/util/LinkedList;

    return-object p1
.end method

.method private _sdka(Lcom/skyhookwireless/wps/_sdkxb;Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkfc;->_sdke:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :cond_0
    invoke-virtual {p2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    if-nez v0, :cond_2

    if-eqz v0, :cond_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v4, 0x1e

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v4, 0x1d

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkd:Lcom/skyhookwireless/wps/_sdkwb;

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdka()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb()I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/skyhookwireless/wps/_sdkxb;->_sdka(Ljava/lang/String;ILjava/lang/String;)Lcom/skyhookwireless/wps/_sdkxb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/wps/_sdkwb;->_sdka(Lcom/skyhookwireless/wps/_sdkxb;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static _sdka(Lcom/skyhookwireless/wps/_sdkyb;Lcom/skyhookwireless/wps/_sdkxb;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/skyhookwireless/wps/_sdkyb;->_sdka(Lcom/skyhookwireless/wps/_sdkxb;Ljava/io/InputStream;)V

    return-void
.end method

.method static _sdka(Lcom/skyhookwireless/wps/_sdkyb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkj:Z

    return p1
.end method

.method static _sdkb(Lcom/skyhookwireless/wps/_sdkyb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkj:Z

    return v0
.end method

.method static _sdkb(Lcom/skyhookwireless/wps/_sdkyb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkk:Z

    return p1
.end method

.method static _sdkc(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/wps/_sdkvb;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkf:Lcom/skyhookwireless/wps/_sdkvb;

    return-object v0
.end method

.method private _sdkc()V
    .locals 1

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkyb;->_sdko:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkj:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkl:Z

    return-void
.end method

.method static _sdkd(Lcom/skyhookwireless/wps/_sdkyb;)Lcom/skyhookwireless/wps/Cache;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdke:Lcom/skyhookwireless/wps/Cache;

    return-object v0
.end method

.method private _sdkd()V
    .locals 12

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkfc;->_sdke:Z

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkg:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v5, 0x20

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v5, 0x21

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    array-length v3, v1

    const/4 v4, 0x0

    :cond_5
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    if-eqz v0, :cond_5

    goto/16 :goto_0

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v11, 0x1e

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v11, 0x1f

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    :cond_8
    iget-object v8, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v11, 0x25

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkd:Lcom/skyhookwireless/wps/_sdkwb;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v8, v6, v7}, Lcom/skyhookwireless/wps/_sdkxb;->_sdka(Ljava/lang/String;ILjava/lang/String;)Lcom/skyhookwireless/wps/_sdkxb;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/skyhookwireless/wps/_sdkwb;->_sdka(Lcom/skyhookwireless/wps/_sdkxb;)V

    goto/16 :goto_1
.end method

.method static _sdke(Lcom/skyhookwireless/wps/_sdkyb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdki:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized _sdke()V
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkfc;->_sdke:Z

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkxb;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkd:Lcom/skyhookwireless/wps/_sdkwb;

    invoke-virtual {v2, v0}, Lcom/skyhookwireless/wps/_sdkwb;->_sdkb(Lcom/skyhookwireless/wps/_sdkxb;)Lcom/skyhookwireless/wps/_sdkxb;

    move-result-object v2

    iget v3, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkn:I

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkf()I

    move-result v4

    iget-object v5, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkm:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v8, 0x8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb(Lcom/skyhookwireless/wps/_sdkxb;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb()I

    move-result v5

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb()I

    move-result v6

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v6, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb()I

    move-result v5

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkxb;->_sdkb()I

    move-result v2

    sub-int v2, v5, v2

    int-to-long v5, v2

    const-wide/32 v7, 0x127500

    cmp-long v2, v5, v7

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v5, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v7, 0xa

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-nez v1, :cond_8

    if-eqz v1, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkh:Lcom/skyhookwireless/wps/TilingListener;

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/skyhookwireless/wps/_sdkyb;->_sdko:Z

    if-nez v2, :cond_5

    if-lt v4, v3, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkh:Lcom/skyhookwireless/wps/TilingListener;

    invoke-interface {v2, v4, v3}, Lcom/skyhookwireless/wps/TilingListener;->tilingCallback(II)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v2

    sget-object v5, Lcom/skyhookwireless/wps/_sdkac;->_sdka:[I

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/WPSContinuation;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_0

    :cond_6
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkc:Lcom/skyhookwireless/wps/_sdkbc;

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/wps/_sdkbc;->_sdka(Lcom/skyhookwireless/wps/_sdkxb;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkk:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_2
    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v7, 0xb

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    :pswitch_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkk:Z

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkk:Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private _sdkf()I
    .locals 2

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkn:I

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkm:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static _sdkf(Lcom/skyhookwireless/wps/_sdkyb;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkm:Ljava/util/LinkedList;

    return-object v0
.end method

.method static _sdkg(Lcom/skyhookwireless/wps/_sdkyb;)I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkn:I

    return v0
.end method

.method private _sdkg()V
    .locals 3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v2, 0x27

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkyb;->_sdko:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkj:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkj:Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkf:Lcom/skyhookwireless/wps/_sdkvb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkvb;->_sdkf()V

    return-void
.end method

.method static _sdkh(Lcom/skyhookwireless/wps/_sdkyb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkk:Z

    return v0
.end method

.method static _sdki(Lcom/skyhookwireless/wps/_sdkyb;)V
    .locals 0

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdke()V

    return-void
.end method

.method static _sdkj(Lcom/skyhookwireless/wps/_sdkyb;)V
    .locals 0

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkg()V

    return-void
.end method


# virtual methods
.method public _sdka()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkc:Lcom/skyhookwireless/wps/_sdkbc;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkbc;->_sdka()V

    return-void
.end method

.method public declared-synchronized _sdka(Lcom/skyhookwireless/wps/_sdkpb;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/wps/_sdkcb;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkl:Z

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->hasBeacons()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkd:Lcom/skyhookwireless/wps/_sdkwb;

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/skyhookwireless/wps/_sdkwb;->_sdka(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkf:Lcom/skyhookwireless/wps/_sdkvb;

    invoke-virtual {v1, p1}, Lcom/skyhookwireless/wps/_sdkvb;->_sdka(Lcom/skyhookwireless/wps/_sdkpb;)V

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v4, 0x17

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v4, 0x10

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdki:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_3
    iget-boolean v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkj:Z

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object v3, v0

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdki:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-boolean v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkk:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkf()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_7

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkc()V

    goto/16 :goto_0

    :cond_8
    move v1, v5

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdki:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkc()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkf:Lcom/skyhookwireless/wps/_sdkvb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkvb;->_sdkb()Lcom/skyhookwireless/wps/ScanHistory;

    move-result-object v0

    invoke-static {v0}, Lcom/skyhookwireless/wps/Protocol;->rqSize(Lcom/skyhookwireless/wps/ScanHistory;)I

    move-result v0

    const/16 v1, 0x6400

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_b
    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized _sdkb()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkl:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkl:Z

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkyb;->_sdko:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkj:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkf:Lcom/skyhookwireless/wps/_sdkvb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkvb;->_sdkb()Lcom/skyhookwireless/wps/ScanHistory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/ScanHistory;->numAPs()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkyb;->_sdko:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkf:Lcom/skyhookwireless/wps/_sdkvb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkvb;->_sdkb()Lcom/skyhookwireless/wps/ScanHistory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/ScanHistory;->getLastScan()Lcom/skyhookwireless/wps/_sdkpb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkyb;->_sdko:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkf:Lcom/skyhookwireless/wps/_sdkvb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkvb;->_sdkb()Lcom/skyhookwireless/wps/ScanHistory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/ScanHistory;->getLastScan()Lcom/skyhookwireless/wps/_sdkpb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdke:Lcom/skyhookwireless/wps/Cache;

    new-instance v1, Lcom/skyhookwireless/wps/_sdkpb;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkf:Lcom/skyhookwireless/wps/_sdkvb;

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkvb;->_sdkb()Lcom/skyhookwireless/wps/ScanHistory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/ScanHistory;->getLastScan()Lcom/skyhookwireless/wps/_sdkpb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/skyhookwireless/wps/_sdkpb;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/skyhookwireless/wps/_sdkdb;)V

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/wps/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkj:Z

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkc:Lcom/skyhookwireless/wps/_sdkbc;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkf:Lcom/skyhookwireless/wps/_sdkvb;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkvb;->_sdkd()Lcom/skyhookwireless/wps/ScanHistory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/wps/_sdkbc;->_sdka(Lcom/skyhookwireless/wps/ScanHistory;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkyb;->_sdkb:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkyb;->z:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkyb;->_sdkg()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
