.class Lcom/skyhookwireless/wps/_sdkm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/wps/_sdkkc;


# static fields
.field static final _sdkm:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkb:Lcom/skyhookwireless/wps/_sdkob;

.field private final _sdkc:Lcom/skyhookwireless/wps/WPSAuthentication;

.field private final _sdkd:Lcom/skyhookwireless/_sdkub;

.field private final _sdke:Lcom/skyhookwireless/wps/WPSLocationCallback;

.field private final _sdkf:Lcom/skyhookwireless/wps/WPSStreetAddressLookup;

.field private final _sdkg:Lcom/skyhookwireless/wps/_sdkpb;

.field private _sdkh:Lcom/skyhookwireless/wps/_sdkdb;

.field private _sdki:Z

.field private _sdkj:Lcom/skyhookwireless/wps/WPSReturnCode;

.field private _sdkk:I

.field private _sdkl:I

.field final _sdkn:Lcom/skyhookwireless/wps/_sdkf;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x75

    const/16 v12, 0x5d

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "e\u0019\u00003\u0018#\u001a\u001a>\u001dw\u001f\u001a3\\j\u0018U>\u001d`\u001e\u0010}\u000bj\u0002\u001d}\u0012b\u0006U`\\"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_2a

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

    const/16 v7, 0x7c

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

    const-string v1, "o\u0019\u0016<\u0008j\u0019\u001b}\u000ef\u0007\u00008\u000fwV\u0006(\u001f`\u0013\u00109\u0019gV\u00078\u0011l\u0002\u00101\u00059V"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_29

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

    const/16 v7, 0x7c

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

    const-string v2, "p\u0015\u00143\u0012f\u0012U"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_28

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

    const/16 v8, 0x7c

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

    const-string v1, "o\u0019\u0016<\u0008j\u0019\u001b}\u000ef\u0007\u00008\u000fwV\u0006(\u001f`\u0013\u00109\u0019gV\u00192\u001fb\u001a\u0019$F#"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_27

    move v3, v9

    :cond_6
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_9
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_3

    const/16 v7, 0x7c

    :goto_a
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_7

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_9

    :cond_7
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_b
    if-gt v2, v3, :cond_6

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/4 v1, 0x4

    const-string v2, "o\u0019\u0016<\u0008j\u0019\u001b}To\u0019\u0016<\u0010*LU"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_26

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

    const/16 v8, 0x7c

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

    const-string v2, "#7%.\\p\u0019U;\u001dq^"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_25

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

    const/16 v8, 0x7c

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

    const-string v2, "p\u0013\u0007+\u0019qV\u00078\u001av\u0005\u00109\\q\u0013\u0004(\u0019p\u0002"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_24

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

    const/16 v8, 0x7c

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

    const-string v2, "p\u0013\u0007+\u0019qV\u0016<\u0012$\u0002U9\u0019w\u0013\u00070\u0015m\u0013U1\u0013`\u0017\u00014\u0013m"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_23

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

    const/16 v8, 0x7c

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

    const-string v2, "m\u0013\u0002}=S\u0005U.\u0015m\u0015\u0010}\u0010b\u0005\u0001}\u000ef\u001b\u001a)\u0019#\u001a\u001a>\u001dw\u001f\u001a3\\q\u0013\u0004(\u0019p\u0002O}"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_22

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

    const/16 v8, 0x7c

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

    const-string v2, "o\u0019\u0016<\u0008j\u0019\u001b}Tq\u0013\u00182\u0008f_O}"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_21

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

    const/16 v8, 0x7c

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

    const-string v2, "b\u0014\u001a(\u0008#\u0002\u001a}\u0010l\u0019\u001e}\u001al\u0004U1\u0013`\u0017\u00014\u0013mV\u001c3\\`\u0017\u00165\u0019#^\u00101\u001ds\u0005\u00109\\w\u001f\u00188F#"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_20

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

    const/16 v8, 0x7c

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

    const-string v2, "m\u0013\u0002}\u001ff\u001a\u0019.\\p\u001f\u001b>\u0019#\u001a\u0014.\u0008#\u0004\u00100\u0013w\u0013U1\u0013`\u0017\u00014\u0013mV\u00078\rv\u0013\u0006)F#"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1f

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

    const/16 v8, 0x7c

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

    const-string v2, "m\u0019X1\u0013`\u0017\u00014\u0013mV\u00132\tm\u0012U4\u0012#\u0015\u0014>\u0014f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1e

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

    const/16 v8, 0x7c

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

    const-string v2, "e\u0017\u001c1\u0019gV\u00012\\d\u0013\u0001}\u0010l\u0015\u0014)\u0015l\u0018U;\u000el\u001bU.\u0019q\u0000\u0010/F#"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_1d

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

    const/16 v8, 0x7c

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/wps/_sdkf;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v10

    :goto_2a
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkm;->_sdkm:Z

    return-void

    :cond_1c
    move v0, v9

    goto :goto_2a

    :pswitch_0
    move v7, v11

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x76

    goto/16 :goto_1

    :pswitch_2
    move v7, v13

    goto/16 :goto_1

    :pswitch_3
    move v7, v12

    goto/16 :goto_1

    :pswitch_4
    move v7, v11

    goto/16 :goto_4

    :pswitch_5
    const/16 v7, 0x76

    goto/16 :goto_4

    :pswitch_6
    move v7, v13

    goto/16 :goto_4

    :pswitch_7
    move v7, v12

    goto/16 :goto_4

    :pswitch_8
    move v8, v11

    goto/16 :goto_7

    :pswitch_9
    const/16 v8, 0x76

    goto/16 :goto_7

    :pswitch_a
    move v8, v13

    goto/16 :goto_7

    :pswitch_b
    move v8, v12

    goto/16 :goto_7

    :pswitch_c
    move v7, v11

    goto/16 :goto_a

    :pswitch_d
    const/16 v7, 0x76

    goto/16 :goto_a

    :pswitch_e
    move v7, v13

    goto/16 :goto_a

    :pswitch_f
    move v7, v12

    goto/16 :goto_a

    :pswitch_10
    move v8, v11

    goto/16 :goto_d

    :pswitch_11
    const/16 v8, 0x76

    goto/16 :goto_d

    :pswitch_12
    move v8, v13

    goto/16 :goto_d

    :pswitch_13
    move v8, v12

    goto/16 :goto_d

    :pswitch_14
    move v8, v11

    goto/16 :goto_10

    :pswitch_15
    const/16 v8, 0x76

    goto/16 :goto_10

    :pswitch_16
    move v8, v13

    goto/16 :goto_10

    :pswitch_17
    move v8, v12

    goto/16 :goto_10

    :pswitch_18
    move v8, v11

    goto/16 :goto_13

    :pswitch_19
    const/16 v8, 0x76

    goto/16 :goto_13

    :pswitch_1a
    move v8, v13

    goto/16 :goto_13

    :pswitch_1b
    move v8, v12

    goto/16 :goto_13

    :pswitch_1c
    move v8, v11

    goto/16 :goto_16

    :pswitch_1d
    const/16 v8, 0x76

    goto/16 :goto_16

    :pswitch_1e
    move v8, v13

    goto/16 :goto_16

    :pswitch_1f
    move v8, v12

    goto/16 :goto_16

    :pswitch_20
    move v8, v11

    goto/16 :goto_19

    :pswitch_21
    const/16 v8, 0x76

    goto/16 :goto_19

    :pswitch_22
    move v8, v13

    goto/16 :goto_19

    :pswitch_23
    move v8, v12

    goto/16 :goto_19

    :pswitch_24
    move v8, v11

    goto/16 :goto_1c

    :pswitch_25
    const/16 v8, 0x76

    goto/16 :goto_1c

    :pswitch_26
    move v8, v13

    goto/16 :goto_1c

    :pswitch_27
    move v8, v12

    goto/16 :goto_1c

    :pswitch_28
    move v8, v11

    goto/16 :goto_1f

    :pswitch_29
    const/16 v8, 0x76

    goto/16 :goto_1f

    :pswitch_2a
    move v8, v13

    goto/16 :goto_1f

    :pswitch_2b
    move v8, v12

    goto/16 :goto_1f

    :pswitch_2c
    move v8, v11

    goto/16 :goto_22

    :pswitch_2d
    const/16 v8, 0x76

    goto/16 :goto_22

    :pswitch_2e
    move v8, v13

    goto/16 :goto_22

    :pswitch_2f
    move v8, v12

    goto/16 :goto_22

    :pswitch_30
    move v8, v11

    goto/16 :goto_25

    :pswitch_31
    const/16 v8, 0x76

    goto/16 :goto_25

    :pswitch_32
    move v8, v13

    goto/16 :goto_25

    :pswitch_33
    move v8, v12

    goto/16 :goto_25

    :pswitch_34
    move v8, v11

    goto/16 :goto_28

    :pswitch_35
    const/16 v8, 0x76

    goto/16 :goto_28

    :pswitch_36
    move v8, v13

    goto/16 :goto_28

    :pswitch_37
    move v8, v12

    goto/16 :goto_28

    :cond_1d
    move v4, v9

    goto/16 :goto_29

    :cond_1e
    move v4, v9

    goto/16 :goto_26

    :cond_1f
    move v4, v9

    goto/16 :goto_23

    :cond_20
    move v4, v9

    goto/16 :goto_20

    :cond_21
    move v4, v9

    goto/16 :goto_1d

    :cond_22
    move v4, v9

    goto/16 :goto_1a

    :cond_23
    move v4, v9

    goto/16 :goto_17

    :cond_24
    move v4, v9

    goto/16 :goto_14

    :cond_25
    move v4, v9

    goto/16 :goto_11

    :cond_26
    move v4, v9

    goto/16 :goto_e

    :cond_27
    move v3, v9

    goto/16 :goto_b

    :cond_28
    move v4, v9

    goto/16 :goto_8

    :cond_29
    move v3, v9

    goto/16 :goto_5

    :cond_2a
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
.end method

.method private constructor <init>(Lcom/skyhookwireless/wps/_sdkf;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/WPSLocationCallback;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/skyhookwireless/wps/_sdkn;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkob;

    invoke-direct {v0}, Lcom/skyhookwireless/wps/_sdkob;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkb:Lcom/skyhookwireless/wps/_sdkob;

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkd:Lcom/skyhookwireless/_sdkub;

    iput-object p2, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkc:Lcom/skyhookwireless/wps/WPSAuthentication;

    iput-object p3, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkf:Lcom/skyhookwireless/wps/WPSStreetAddressLookup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    iput-object p4, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdke:Lcom/skyhookwireless/wps/WPSLocationCallback;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkpb;

    invoke-direct {v0}, Lcom/skyhookwireless/wps/_sdkpb;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkg:Lcom/skyhookwireless/wps/_sdkpb;

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_NO_WIFI_IN_RANGE:Lcom/skyhookwireless/wps/WPSReturnCode;

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkj:Lcom/skyhookwireless/wps/WPSReturnCode;

    iput v1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkk:I

    iput v1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkl:I

    return-void
.end method

.method constructor <init>(Lcom/skyhookwireless/wps/_sdkf;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/WPSLocationCallback;Lcom/skyhookwireless/wps/_sdkh;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/skyhookwireless/wps/_sdkm;-><init>(Lcom/skyhookwireless/wps/_sdkf;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/WPSLocationCallback;)V

    return-void
.end method

.method private declared-synchronized _sdka()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdki:Z
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

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkb:Lcom/skyhookwireless/wps/_sdkob;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkob;->_sdka()V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdki:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public done()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkj:Lcom/skyhookwireless/wps/WPSReturnCode;

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkm;->_sdkm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdki:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    iget-object v1, v1, Lcom/skyhookwireless/wps/_sdkf;->_sdkd:Lcom/skyhookwireless/wps/_sdkib;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkib;->_sdka()V

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdke:Lcom/skyhookwireless/wps/WPSLocationCallback;

    invoke-interface {v1}, Lcom/skyhookwireless/wps/WPSLocationCallback;->done()V

    throw v0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkf;)Lcom/skyhookwireless/wps/_sdklb;

    move-result-object v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkg:Lcom/skyhookwireless/wps/_sdkpb;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {v0, v1, v2}, Lcom/skyhookwireless/wps/_sdklb;->add(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/wps/_sdkdb;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkg:Lcom/skyhookwireless/wps/_sdkpb;

    iput-object v1, v0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkp:Lcom/skyhookwireless/wps/_sdkpb;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdke:Lcom/skyhookwireless/wps/WPSLocationCallback;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/skyhookwireless/wps/WPSLocationCallback;->handleWPSLocation(Lcom/skyhookwireless/wps/WPSLocation;)V

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkm;->_sdka()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdke:Lcom/skyhookwireless/wps/WPSLocationCallback;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkj:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-interface {v0, v1}, Lcom/skyhookwireless/wps/WPSLocationCallback;->handleError(Lcom/skyhookwireless/wps/WPSReturnCode;)Lcom/skyhookwireless/wps/WPSContinuation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdki:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkf;->_sdkd:Lcom/skyhookwireless/wps/_sdkib;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkib;->_sdka()V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdke:Lcom/skyhookwireless/wps/WPSLocationCallback;

    invoke-interface {v0}, Lcom/skyhookwireless/wps/WPSLocationCallback;->done()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public handleError(Lcom/skyhookwireless/wps/WPSReturnCode;)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 1

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkm;->_sdka()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_WIFI_NOT_AVAILABLE:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdke:Lcom/skyhookwireless/wps/WPSLocationCallback;

    invoke-interface {v0, p1}, Lcom/skyhookwireless/wps/WPSLocationCallback;->handleError(Lcom/skyhookwireless/wps/WPSReturnCode;)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkj:Lcom/skyhookwireless/wps/WPSReturnCode;

    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    goto :goto_0
.end method

.method public handleEvents(Ljava/util/List;Lcom/skyhookwireless/_sdkyc;)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/_sdkad;",
            ">;",
            "Lcom/skyhookwireless/_sdkyc;",
            ")",
            "Lcom/skyhookwireless/wps/WPSContinuation;"
        }
    .end annotation

    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    return-object v0
.end method

.method public handleScan(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/_sdkyc;)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 12

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkdb;->getNAP()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkd:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v2

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkg:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {v4, p1}, Lcom/skyhookwireless/wps/_sdkpb;->merge(Lcom/skyhookwireless/wps/_sdkpb;)V

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkg:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {v4}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkg:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {v5}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkf:Lcom/skyhookwireless/wps/WPSStreetAddressLookup;

    sget-object v7, Lcom/skyhookwireless/wps/WPSStreetAddressLookup;->WPS_NO_STREET_ADDRESS_LOOKUP:Lcom/skyhookwireless/wps/WPSStreetAddressLookup;

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    iget-object v6, v6, Lcom/skyhookwireless/wps/_sdkf;->_sdkd:Lcom/skyhookwireless/wps/_sdkib;

    iget-object v7, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    iget-object v8, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkg:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {v6, v7, v8}, Lcom/skyhookwireless/wps/_sdkib;->_sdka(Lcom/skyhookwireless/wps/Location;Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/_sdked;

    move-result-object v6

    iget-object v7, v6, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    sget-object v8, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne v7, v8, :cond_5

    iget-object p1, v6, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    check-cast p1, Lcom/skyhookwireless/wps/WPSReturnCode;

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkj:Lcom/skyhookwireless/wps/WPSReturnCode;

    iget-object p1, v6, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast p1, Lcom/skyhookwireless/wps/_sdkdb;

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkdb;->getNAP()I

    move-result v1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, v6, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast p0, Lcom/skyhookwireless/wps/WPSLocation;

    invoke-static {p0, v2, v3}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/WPSLocation;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    :goto_1
    return-object v0

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkc()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, v6, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast p0, Lcom/skyhookwireless/wps/WPSLocation;

    invoke-static {p0, v2, v3}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/WPSLocation;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/skyhookwireless/_sdkmb;->_sdkf()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object p1, v6, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    check-cast p1, Lcom/skyhookwireless/wps/WPSReturnCode;

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkj:Lcom/skyhookwireless/wps/WPSReturnCode;

    :cond_6
    invoke-static {}, Lcom/skyhookwireless/_sdkmb;->_sdkf()Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    goto :goto_1

    :cond_7
    iget v6, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkk:I

    sub-int v6, v4, v6

    iget v7, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkl:I

    sub-int v7, v5, v7

    if-eqz v0, :cond_8

    iget-object v8, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/16 v11, 0x8

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/16 v11, 0xb

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_8
    add-int v8, v6, v1

    const/4 v9, 0x3

    if-ge v8, v9, :cond_9

    add-int v8, v6, v7

    if-lez v8, :cond_11

    if-nez v1, :cond_11

    const-wide/16 v8, 0xbb8

    cmp-long v8, v2, v8

    if-ltz v8, :cond_11

    :cond_9
    iget-object v8, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkj:Lcom/skyhookwireless/wps/WPSReturnCode;

    sget-object v9, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_UNAUTHORIZED:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-eq v8, v9, :cond_11

    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkm;->_sdkm:Z

    if-nez v1, :cond_a

    add-int v1, v6, v7

    if-gtz v1, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkb:Lcom/skyhookwireless/wps/_sdkob;

    iget-object v6, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkc:Lcom/skyhookwireless/wps/WPSAuthentication;

    iget-object v7, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkf:Lcom/skyhookwireless/wps/WPSStreetAddressLookup;

    iget-object v8, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkg:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {v1, v6, v7, v8}, Lcom/skyhookwireless/wps/_sdkob;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/_sdked;

    move-result-object v1

    iget-object p1, v1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    check-cast p1, Lcom/skyhookwireless/wps/WPSReturnCode;

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkj:Lcom/skyhookwireless/wps/WPSReturnCode;

    iput v4, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkk:I

    iput v5, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkl:I

    iget-object v4, v1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    sget-object v5, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne v4, v5, :cond_e

    iget-object p1, v1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast p1, Lcom/skyhookwireless/wps/_sdkdb;

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkdb;->getNAP()I

    move-result v1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_c

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    invoke-static {v4, v2, v3}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/WPSLocation;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_b
    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkc()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    invoke-static {v4, v2, v3}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/WPSLocation;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V

    :cond_d
    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    goto/16 :goto_1

    :cond_e
    iget-object v0, v1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    sget-object v2, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_LOCATION_CANNOT_BE_DETERMINED:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    goto/16 :goto_1

    :cond_f
    iget-object v0, v1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    sget-object v2, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_UNAUTHORIZED:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne v0, v2, :cond_10

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    goto/16 :goto_1

    :cond_11
    if-lez v6, :cond_14

    const-wide/16 v5, 0x7d0

    cmp-long v5, v2, v5

    if-ltz v5, :cond_14

    iget-object v5, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/16 v8, 0xa

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    invoke-static {v2}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkf;)Lcom/skyhookwireless/wps/_sdklb;

    move-result-object v2

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkg:Lcom/skyhookwireless/wps/_sdkpb;

    const v5, 0x3f4ccccd

    invoke-virtual {v2, v3, v5}, Lcom/skyhookwireless/wps/_sdklb;->get(Lcom/skyhookwireless/wps/_sdkpb;F)Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v2

    if-nez v2, :cond_12

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v5, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/16 v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget v3, Lcom/skyhookwireless/wps/Location;->_sdki:I

    if-eqz v3, :cond_14

    :cond_12
    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->getNAP()I

    move-result v3

    if-le v3, v1, :cond_14

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkm;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/skyhookwireless/wps/_sdkdb;->getNAP()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_13
    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkj:Lcom/skyhookwireless/wps/WPSReturnCode;

    iput-object v2, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    iput v4, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkk:I

    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    goto/16 :goto_1

    :cond_14
    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    goto/16 :goto_1
.end method

.method public isWifiNeeded(J)Z
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkf;->_sdkd:Lcom/skyhookwireless/wps/_sdkib;

    invoke-virtual {v0, p1, p2}, Lcom/skyhookwireless/wps/_sdkib;->_sdka(J)Z

    move-result v0

    return v0
.end method

.method public lastLocation()Lcom/skyhookwireless/wps/_sdkdb;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkm;->_sdkh:Lcom/skyhookwireless/wps/_sdkdb;

    return-object v0
.end method
