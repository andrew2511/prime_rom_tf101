.class public Lorg/mozilla/universalchardet/prober/statemachine/SJISSMModel;
.super Lorg/mozilla/universalchardet/prober/statemachine/SMModel;


# static fields
.field private static sjisCharLenTable:[I

.field private static sjisClassTable:[I

.field private static sjisStateTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v14, 0x0

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v0, 0x1

    const/4 v11, 0x2

    const/16 v1, 0x20

    new-array v9, v1, [I

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v14

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v14

    move v7, v14

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v0

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v11

    move v1, v0

    move v2, v0

    move v3, v14

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v12

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v13

    const/4 v8, 0x5

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v8

    const/4 v8, 0x6

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v8

    const/4 v8, 0x7

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v8

    const/16 v10, 0x8

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x9

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0xa

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0xb

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0xc

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0xd

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0xe

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0xf

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v0

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x10

    move v1, v12

    move v2, v12

    move v3, v12

    move v4, v12

    move v5, v12

    move v6, v12

    move v7, v12

    move v8, v12

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x11

    move v1, v12

    move v2, v12

    move v3, v12

    move v4, v12

    move v5, v12

    move v6, v12

    move v7, v12

    move v8, v12

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x12

    move v1, v12

    move v2, v12

    move v3, v12

    move v4, v12

    move v5, v12

    move v6, v12

    move v7, v12

    move v8, v12

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x13

    move v1, v12

    move v2, v12

    move v3, v12

    move v4, v12

    move v5, v12

    move v6, v12

    move v7, v12

    move v8, v12

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x14

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x15

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x16

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x17

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x18

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x19

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x1a

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x1b

    move v1, v11

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    move v8, v11

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x1c

    move v1, v12

    move v2, v12

    move v3, v12

    move v4, v12

    move v5, v12

    move v6, v12

    move v7, v12

    move v8, v12

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x1d

    move v1, v12

    move v2, v12

    move v3, v12

    move v4, v12

    move v5, v12

    move v6, v13

    move v7, v13

    move v8, v13

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x1e

    move v1, v13

    move v2, v13

    move v3, v13

    move v4, v13

    move v5, v13

    move v6, v13

    move v7, v13

    move v8, v13

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x1f

    move v1, v13

    move v2, v13

    move v3, v13

    move v4, v13

    move v5, v13

    move v6, v14

    move v7, v14

    move v8, v14

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    sput-object v9, Lorg/mozilla/universalchardet/prober/statemachine/SJISSMModel;->sjisClassTable:[I

    new-array v9, v12, [I

    move v1, v14

    move v2, v14

    move v3, v12

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v14

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v11

    move v5, v11

    move v6, v11

    move v7, v11

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v0

    move v1, v11

    move v2, v11

    move v3, v0

    move v4, v0

    move v5, v14

    move v6, v14

    move v7, v14

    move v8, v14

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v0

    aput v0, v9, v11

    sput-object v9, Lorg/mozilla/universalchardet/prober/statemachine/SJISSMModel;->sjisStateTable:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/universalchardet/prober/statemachine/SJISSMModel;->sjisCharLenTable:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 12

    const/16 v4, 0xf

    const/4 v2, 0x7

    const/4 v1, 0x3

    const/4 v3, 0x2

    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    sget-object v5, Lorg/mozilla/universalchardet/prober/statemachine/SJISSMModel;->sjisClassTable:[I

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>(IIII[I)V

    const/4 v11, 0x6

    new-instance v5, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    sget-object v10, Lorg/mozilla/universalchardet/prober/statemachine/SJISSMModel;->sjisStateTable:[I

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>(IIII[I)V

    sget-object v6, Lorg/mozilla/universalchardet/prober/statemachine/SJISSMModel;->sjisCharLenTable:[I

    sget-object v7, Lorg/mozilla/universalchardet/Constants;->CHARSET_SHIFT_JIS:Ljava/lang/String;

    move-object v2, p0

    move-object v3, v0

    move v4, v11

    invoke-direct/range {v2 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V

    return-void
.end method
