.class public Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;
.super Lorg/mozilla/universalchardet/prober/statemachine/SMModel;


# static fields
.field private static utf8CharLenTable:[I

.field private static utf8ClassTable:[I

.field private static utf8StateTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v14, 0x2

    const/4 v13, 0x4

    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v0, 0x1

    const/16 v1, 0x20

    new-array v9, v1, [I

    const/4 v8, 0x0

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

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

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

    aput v1, v9, v14

    const/4 v8, 0x3

    const/4 v3, 0x0

    move v1, v0

    move v2, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v8

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

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v12

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

    const/16 v8, 0x8

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

    const/16 v8, 0x9

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

    const/16 v8, 0xa

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

    const/16 v8, 0xb

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

    const/16 v8, 0xc

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

    const/16 v8, 0xd

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

    const/16 v8, 0xe

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

    const/16 v8, 0xf

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

    const/16 v10, 0x10

    const/4 v5, 0x3

    const/4 v6, 0x3

    const/4 v7, 0x3

    const/4 v8, 0x3

    move v1, v14

    move v2, v14

    move v3, v14

    move v4, v14

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x11

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

    const/16 v10, 0x12

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

    const/16 v10, 0x13

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

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v12

    move v4, v12

    move v5, v12

    move v6, v12

    move v7, v12

    move v8, v12

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x19

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

    const/16 v10, 0x1a

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

    const/16 v10, 0x1b

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

    const/16 v10, 0x1c

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x8

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x1d

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/16 v8, 0x8

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x1e

    const/16 v1, 0xa

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xb

    const/16 v5, 0xb

    const/16 v6, 0xb

    const/16 v7, 0xb

    const/16 v8, 0xb

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    const/16 v10, 0x1f

    const/16 v1, 0xc

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xd

    const/16 v5, 0xe

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v10

    sput-object v9, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8ClassTable:[I

    const/16 v1, 0x1a

    new-array v9, v1, [I

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/16 v6, 0xc

    const/16 v7, 0xa

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v8

    const/16 v1, 0x9

    const/16 v2, 0xb

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v8, 0x3

    move v5, v12

    move v6, v11

    move v7, v13

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

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

    aput v1, v9, v14

    const/4 v8, 0x3

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

    move v1, v14

    move v2, v14

    move v3, v14

    move v4, v14

    move v5, v14

    move v6, v14

    move v7, v14

    move v8, v14

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v13

    move v1, v14

    move v2, v14

    move v3, v14

    move v4, v14

    move v5, v14

    move v6, v14

    move v7, v14

    move v8, v14

    invoke-static/range {v1 .. v8}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v11

    move v1, v0

    move v2, v11

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v12

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

    const/16 v8, 0x8

    move v1, v0

    move v2, v0

    move v3, v11

    move v4, v11

    move v5, v11

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v8

    const/16 v8, 0x9

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

    const/16 v8, 0xa

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    const/4 v5, 0x7

    move v1, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v8

    const/16 v8, 0xb

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

    const/16 v8, 0xc

    const/4 v4, 0x7

    const/4 v5, 0x7

    move v1, v0

    move v2, v0

    move v3, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v8

    const/16 v8, 0xd

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

    const/16 v8, 0xe

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    const/16 v5, 0x9

    move v1, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v8

    const/16 v8, 0xf

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

    const/16 v8, 0x10

    const/16 v5, 0x9

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v8

    const/16 v8, 0x11

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

    const/16 v8, 0x12

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xc

    const/16 v5, 0xc

    move v1, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v8

    const/16 v8, 0x13

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

    const/16 v8, 0x14

    const/16 v5, 0xc

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v8

    const/16 v8, 0x15

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

    const/16 v8, 0x16

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xc

    move v1, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v8

    const/16 v8, 0x17

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

    const/16 v8, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v1

    aput v1, v9, v8

    const/16 v8, 0x19

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack4bits(IIIIIIII)I

    move-result v0

    aput v0, v9, v8

    sput-object v9, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8StateTable:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8CharLenTable:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 12

    const/16 v4, 0xf

    const/4 v2, 0x7

    const/4 v1, 0x3

    const/4 v3, 0x2

    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    sget-object v5, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8ClassTable:[I

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>(IIII[I)V

    const/16 v11, 0x10

    new-instance v5, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;

    sget-object v10, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8StateTable:[I

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;-><init>(IIII[I)V

    sget-object v6, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;->utf8CharLenTable:[I

    sget-object v7, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    move-object v2, p0

    move-object v3, v0

    move v4, v11

    invoke-direct/range {v2 .. v7}, Lorg/mozilla/universalchardet/prober/statemachine/SMModel;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;ILorg/mozilla/universalchardet/prober/statemachine/PkgInt;[ILjava/lang/String;)V

    return-void
.end method
