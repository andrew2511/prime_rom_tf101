.class final Lcom/skyhookwireless/wps/_sdkn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/wps/_sdkkc;


# static fields
.field static final _sdkm:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkb:Lcom/skyhookwireless/wps/_sdkob;

.field private _sdkc:I

.field private _sdkd:Lcom/skyhookwireless/_sdkub;

.field private _sdke:Lcom/skyhookwireless/_sdkub;

.field private final _sdkf:Lcom/skyhookwireless/wps/WPSAuthentication;

.field private final _sdkg:Lcom/skyhookwireless/wps/WPSStreetAddressLookup;

.field private final _sdkh:J

.field private final _sdki:Lcom/skyhookwireless/wps/_sdknb;

.field private final _sdkj:Lcom/skyhookwireless/_sdkkc;

.field private _sdkk:Lcom/skyhookwireless/wps/_sdkdb;

.field private final _sdkl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;>;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final _sdkn:Lcom/skyhookwireless/wps/_sdkf;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x60

    const/16 v12, 0x3e

    const/16 v11, 0xf

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u001e\u001f|_\u0002\u0016\u001faY@\u001d\u0019`Y\u000c\u001fVcQ\u0003\u001b\u0002fQ\u000eZ\u0010nR\u000c\u0018\u0017lU"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_84

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

    move v7, v13

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

    const-string v1, "9\u0019zR\u0004\u0014Q{\u001e\u0004\u001f\u0002jL\r\u0013\u0018j\u001e\u000c\u0015\u0015nJ\t\u0015\u00185\u001e"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_83

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

    move v7, v13

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

    const-string v2, "4\u0019{\u001e\u0003\u001b\u001acW\u000e\u001dVzM\u0005\u0008Vm[\u0003\u001b\u0003|[@\u000e\u001ej\u001e\u000c\u0015\u0015nJ\t\u0015\u0018/W\u0013Z\u0010}Q\rZ\u0017a\u001e\u0005\u001b\u0004cW\u0005\u0008V`L@\t\u0017b[@\u0013\u0002jL\u0001\u000e\u001f`P@\u001b\u0005/J\u0008\u001fVc_\u0013\u000eV`P\u0005Z\u0004jN\u000f\u0008\u0002jZ@\u000e\u0019/J\u0008\u001fVzM\u0005\u0008"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_82

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

    move v8, v13

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

    const-string v2, "\u0008\u0013\u007fQ\u0012\u000e\u001faY@\u001d\u0019`Y\u000c\u001fVcQ\u0003\u001b\u0002fQ\u000eZ\u0017|\u001e\u0006\u001b\u001ac\\\u0001\u0019\u001d"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_81

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

    move v8, v13

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

    const-string v2, "\u001d\u0019`Y\u000c\u001fVcQ\u0003\u001b\u0002fQ\u000eZ\u001enM@\u0014\u0019/J\t\u0017\u0013/M\u0005\u000eZ/W\u0007\u0014\u0019}W\u000e\u001d"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_80

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

    move v8, v13

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

    const-string v2, "\u001d\u0019`Y\u000c\u001fVkQ\u0005\t\u0018(J@\u0012\u0017y[@\u001bVa[\u0017Z\u001a`]\u0001\u000e\u001f`P"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7f

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

    move v8, v13

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

    const-string v2, "\u001f\u0018n\\\u000c\u0013\u0018h\u001e\u0007\u0015\u0019hR\u0005Z\u001a`]\u0001\u000e\u001f`P@\u001c\u0017cR\u0002\u001b\u0015d"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7e

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

    move v8, v13

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

    const-string v2, "\u0016\u0019l_\u0014\u0013\u0019a\u0004@"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7d

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

    move v8, v13

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

    const-string v2, "4\u0019{\u001e\u0012\u001f\u0006`L\u0014\u0013\u0018h\u001e\u0005\u0008\u0004`L@\u000e\u0019/J\u0008\u001fVzM\u0005\u0008V|W\u000e\u0019\u0013/_@\n\u0013}W\u000f\u001eVg_\u0013\u0014Q{\u001e\u0005\u0002\u0006fL\u0005\u001eV|W\u000e\u0019\u0013/J\u0008\u001fVc_\u0013\u000eVl_\u000c\u0016"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7c

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

    move v8, v13

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

    const-string v2, "\t\u0002nL\u0014\u001f\u0012/_\u0013\u0003\u0018l\u001e\u0012\u001f\u001b`J\u0005Z\u001a`]\u0001\u000e\u001f`P@\u0008\u0013~K\u0005\t\u0002/X\u000f\u0008VfJ\u0005\u0008\u0017{W\u000f\u0014V"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7b

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

    move v8, v13

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

    const-string v2, "4\u0019{\u001e\u0013\u000e\u0017}J\t\u0014\u0011/_@\u0014\u0013x\u001e\u0012\u001f\u0007z[\u0013\u000eVm[\u0003\u001b\u0003|[@\r\u0013/N\u0012\u001f\u0000fQ\u0015\t\u001av\u001e\u0012\u001f\u0015jW\u0016\u001f\u0012/_@\u0008\u0013\u007fQ\u000e\t\u0013/Q\u0006Z\u0003a_\u0015\u000e\u001e`L\t\u0000\u0013k"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7a

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

    move v8, v13

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

    const-string v2, "\u0008\u0013|[\u0014\u000e\u001faY@\u000f\u0018nK\u0014\u0012\u0019}W\u001a\u001f\u0012/J\t\u0017\u0013}"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_79

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

    move v8, v13

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

    const-string v2, "4\u0019{\u001e\u0013\u000e\u0017}J\t\u0014\u0011/_@\u0014\u0013x\u001e\u0012\u001f\u0007z[\u0013\u000eVm[\u0003\u001b\u0003|[@\u000e\u001ejL\u0005Z\u0017}[@\u000e\u0019`\u001e\r\u001b\u0018v\u001e\u0010\u001f\u0018kW\u000e\u001dL/"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_78

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

    move v8, v13

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

    const-string v2, "VV"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_77

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

    move v8, v13

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

    const-string v2, "9\u0017a\u0019\u0014Z\u0012jJ\u0005\u0008\u001bfP\u0005Z\u001a`]\u0001\u000e\u001f`P@\u0008\u0013bQ\u0014\u001f\u001av\u001e\u0002\u001f\u0015nK\u0013\u001fVa[\u0014\r\u0019}U@\u0017\u0019k[@\u0013\u0005/P\u000f\u000eVjP\u0001\u0018\u001ajZ"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_76

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

    move v8, v13

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

    const-string v1, ".\u0004vW\u000e\u001dV{Q@\t\u0013aZ@\u001bV}[\r\u0015\u0002j\u001e\u0012\u001f\u0007z[\u0013\u000eX!\u0010"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_75

    move v3, v9

    :cond_1e
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v14, v3

    move-object v3, v1

    move v1, v14

    :goto_2d
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_f

    move v7, v13

    :goto_2e
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v1

    add-int/lit8 v1, v5, 0x1

    if-nez v4, :cond_1f

    move-object v2, v3

    move v5, v1

    move v1, v4

    goto :goto_2d

    :cond_1f
    move v2, v4

    move-object v14, v3

    move v3, v1

    move-object v1, v14

    :goto_2f
    if-gt v2, v3, :cond_1e

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const/16 v1, 0x10

    const-string v2, "4\u0019{\u001e\u0013\u000e\u0017}J\t\u0014\u0011/_@\u0014\u0013x\u001e\u0012\u001f\u0007z[\u0013\u000eVm[\u0003\u001b\u0003|[@\u000e\u001ejL\u0005Z\u001f|\u001e\u0001\u0014V`K\u0014\t\u0002nP\u0004\u0013\u0018h\u001e\u000f\u0014\u0013/I\t\u000e\u001e/J\u0008\u001fV|_\r\u001fV|[\u0014Z\u0019i\u001e!*\u0005 ]\u0005\u0016\u001a|"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_74

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

    move v8, v13

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

    const-string v2, "Z\u001fa\u001e\u0006\u0016\u001fhV\u0014"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_73

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

    move v8, v13

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

    const-string v2, "4\u0019{\u001e\u0013\u000e\u0017}J\t\u0014\u0011/_@\u0014\u0013x\u001e\u0012\u001f\u0007z[\u0013\u000eVm[\u0003\u001b\u0003|[@\u000e\u001ejL\u0005Z\u0017}[@\u0014\u0019/\u007f0\tYl[\u000c\u0016\u0005"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_72

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

    move v8, v13

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

    const-string v2, "W7_\u0011"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_71

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

    move v8, v13

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

    const-string v2, "4\u0019{\u001e\u0001\u001e\u0012fP\u0007Z\u001a`]\u0001\u000e\u001f`P@\u000e\u0019/]\u0001\u0019\u001ej\u001e\u0002\u001f\u0015nK\u0013\u001fV{V\u0005Z\u0005jJ@\u0015\u0010/\u007f0\tVfM@\u001f\u001b\u007fJ\u0019"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_70

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

    move v8, v13

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

    const-string v2, ";\u0012kW\u000e\u001dVaQM\u0016\u0019l_\u0014\u0013\u0019a\u001e\u0014\u0015Vl_\u0003\u0012\u0013/X\u0012\u0015\u001b/L\u0005\u0017\u0019{[@\u001b\u0005vP\u0003Z\u0013}L\u000f\u0008V}[\u0013\n\u0019aM\u0005"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6f

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

    move v8, v13

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

    const-string v2, ";\u0012kW\u000e\u001dVcQ\u0003\u001b\u0002fQ\u000eZ\u0002`\u001e\u0003\u001b\u0015g[@\u001c\u0004`S@\u0008\u0013bQ\u0014\u001fVnM\u0019\u0014\u0015/M\u0015\u0019\u0015jM\u0013\u001c\u0003c\u001e\u0012\u001f\u0005\u007fQ\u000e\t\u0013"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6e

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

    move v8, v13

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

    const-string v2, "4\u0019{\u001e\u0001\u001e\u0012fP\u0007Z\u001a`]\u0001\u000e\u001f`P@\u000e\u0019/]\u0001\u0019\u001ej\u001e\u0002\u001f\u0015nK\u0013\u001fV`X@\u001f\u0004}Q\u0012@V"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6d

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

    move v8, v13

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

    const-string v2, ".\u0004vW\u000e\u001dV{Q@\u001b\u0012k\u001e\u000c\u0015\u0015nJ\t\u0015\u0018/J\u000fZ\u0015n]\u0008\u001fVxV\t\u0019\u001e/M\u0003\u001b\u0018a[\u0004Z"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6c

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

    move v8, v13

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

    const-string v2, "W\u0015jR\u000c"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6b

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

    move v8, v13

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

    const-string v2, "4\u0019\"R\u000f\u0019\u0017{W\u000f\u0014ViQ\u0015\u0014\u0012/W\u000eZ\u0015n]\u0008\u001f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_6a

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

    move v8, v13

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

    const-string v2, "W\u0015jR\u000cZ\u001a`]\u0001\u000e\u001f`P@\u001c\u0019zP\u0004Z\u001fa\u001e\u0003\u001b\u0015g["

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_69

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

    move v8, v13

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

    const-string v2, "6\u0019l_\u0014\u0013\u0019a\u001e\u000e\u0015\u0002/X\u000f\u000f\u0018k\u001e\t\u0014Vl_\u0003\u0012\u0013"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_68

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

    move v8, v13

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

    const-string v2, "6\u0019`U\t\u0014\u0011/X\u000f\u0008Vn\u001e\u0010\u0008\u0013yW\u000f\u000f\u0005cG@\u0019\u0017lV\u0005\u001eVcQ\u0003\u001b\u0002fQ\u000eTX!"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_67

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

    move v8, v13

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

    const-string v2, "\u000e\u001fb[\u0004Z\u0019zJ@\u001d\u0013{J\t\u0014\u0011/L\u0005\t\u0006`P\u0013\u001f"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_66

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

    move v8, v13

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

    const-string v2, "\u0016\u0019l_\u0014\u0013\u0019a\u001e\u0012\u001f\u0007z[\u0013\u000eVi_\t\u0016\u0013k\u001e\u0017\u0013\u0002g\u001e\u0005\u0002\u0015jN\u0014\u0013\u0019a"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_65

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

    move v8, v13

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

    const-string v2, "6\u0019l_\u0014\u0013\u0019a\u001e\u0012\u001f\u0007z[\u0013\u000eV|K\u0003\u0019\u0013jZ\u0005\u001eVcQ\u0003\u001b\u001acGZZ\u0013wJ\u0012\u001b\u0006`R\u0001\u000e\u001faY]"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_64

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

    move v8, v13

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

    const-string v2, ")\u0013aZ\t\u0014\u0011/_@\u0008\u0013bQ\u0014\u001fV}[\u0011\u000f\u0013|J@\u0018\u0013l_\u0015\t\u0013/R\u000f\u0019\u0017c\u001e\u0001\u0016\u0011`L\t\u000e\u001eb\u001e\u0008\u001b\u0005/\\\u0005\u001f\u0018/[\u0018\u000e\u0004nN\u000f\u0016\u0017{W\u000e\u001dViQ\u0012Z\u0002`Q@\u0016\u0019aY"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_63

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

    move v8, v13

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

    const-string v2, ".\u0004vW\u000e\u001dV{Q@\u001e\u0013{[\u0012\u0017\u001fa[@\u0016\u0019l_\u0014\u0013\u0019a\u001e\u000c\u0015\u0015nR\u000c\u0003X!\u0010"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_62

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

    move v8, v13

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

    const-string v2, "9\u0019zR\u0004\u0014Q{\u001e\u0004\u001f\u0002jL\r\u0013\u0018j\u001e\u000c\u0015\u0015nJ\t\u0015\u0018/R\u000f\u0019\u0017cR\u0019@V"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_61

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

    move v8, v13

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

    const-string v2, "\u0019\u0019zR\u0004\u0014Q{\u001e\u0013\u000e\u0019\u007f\u001e\u0007\u0015\u0019hR\u0005Z\u001a`]\u0001\u000e\u001f`P@\n\u0004`H\t\u001e\u0013}\u001e\u0014\u0008\u0017lU\t\u0014\u0011"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_60

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

    move v8, v13

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

    const-string v2, "\t\u0002`N\u0010\u001f\u0012"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5f

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

    move v8, v13

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

    const-string v2, "(\u0013bQ\u0014\u001fVnM\u0019\u0014\u0015/L\u0005\t\u0006`P\u0013\u001fV}[\u0003\u001f\u001fy[\u0004@VlQ\u0004\u001fK"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5e

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

    move v8, v13

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

    const-string v2, ")\u0017yW\u000e\u001dV{V\u0001\u000eVx[@\u001b\u0004j\u001e\u0015\u0014\u0017zJ\u0008\u0015\u0004fD\u0005\u001e"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5d

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

    move v8, v13

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

    const-string v2, "Z\u001f{[\u0012\u001b\u0002fQ\u000eG"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5c

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

    move v8, v13

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

    const-string v2, "\t\u0002`N\u0010\u0013\u0018h"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5b

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

    move v8, v13

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

    const-string v2, "\u0014\u0013{I\u000f\u0008\u001d/R\u000f\u0019\u0017{W\u000f\u0014V\u007fL\u000f\u000c\u001fk[\u0012Z\u0018`J@\u001b\u0000nW\u000c\u001b\u0014c[@\u001c\u0019}\u001e\u0006\u001b\u001ac\\\u0001\u0019\u001d"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_5a

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

    move v8, v13

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

    const-string v2, "43[i/(="

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_59

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

    move v8, v13

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/wps/_sdkf;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_58

    move v0, v10

    :goto_84
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkn;->_sdkm:Z

    return-void

    :cond_58
    move v0, v9

    goto :goto_84

    :pswitch_0
    const/16 v7, 0x7a

    goto/16 :goto_1

    :pswitch_1
    const/16 v7, 0x76

    goto/16 :goto_1

    :pswitch_2
    move v7, v11

    goto/16 :goto_1

    :pswitch_3
    move v7, v12

    goto/16 :goto_1

    :pswitch_4
    const/16 v7, 0x7a

    goto/16 :goto_4

    :pswitch_5
    const/16 v7, 0x76

    goto/16 :goto_4

    :pswitch_6
    move v7, v11

    goto/16 :goto_4

    :pswitch_7
    move v7, v12

    goto/16 :goto_4

    :pswitch_8
    const/16 v8, 0x7a

    goto/16 :goto_7

    :pswitch_9
    const/16 v8, 0x76

    goto/16 :goto_7

    :pswitch_a
    move v8, v11

    goto/16 :goto_7

    :pswitch_b
    move v8, v12

    goto/16 :goto_7

    :pswitch_c
    const/16 v8, 0x7a

    goto/16 :goto_a

    :pswitch_d
    const/16 v8, 0x76

    goto/16 :goto_a

    :pswitch_e
    move v8, v11

    goto/16 :goto_a

    :pswitch_f
    move v8, v12

    goto/16 :goto_a

    :pswitch_10
    const/16 v8, 0x7a

    goto/16 :goto_d

    :pswitch_11
    const/16 v8, 0x76

    goto/16 :goto_d

    :pswitch_12
    move v8, v11

    goto/16 :goto_d

    :pswitch_13
    move v8, v12

    goto/16 :goto_d

    :pswitch_14
    const/16 v8, 0x7a

    goto/16 :goto_10

    :pswitch_15
    const/16 v8, 0x76

    goto/16 :goto_10

    :pswitch_16
    move v8, v11

    goto/16 :goto_10

    :pswitch_17
    move v8, v12

    goto/16 :goto_10

    :pswitch_18
    const/16 v8, 0x7a

    goto/16 :goto_13

    :pswitch_19
    const/16 v8, 0x76

    goto/16 :goto_13

    :pswitch_1a
    move v8, v11

    goto/16 :goto_13

    :pswitch_1b
    move v8, v12

    goto/16 :goto_13

    :pswitch_1c
    const/16 v8, 0x7a

    goto/16 :goto_16

    :pswitch_1d
    const/16 v8, 0x76

    goto/16 :goto_16

    :pswitch_1e
    move v8, v11

    goto/16 :goto_16

    :pswitch_1f
    move v8, v12

    goto/16 :goto_16

    :pswitch_20
    const/16 v8, 0x7a

    goto/16 :goto_19

    :pswitch_21
    const/16 v8, 0x76

    goto/16 :goto_19

    :pswitch_22
    move v8, v11

    goto/16 :goto_19

    :pswitch_23
    move v8, v12

    goto/16 :goto_19

    :pswitch_24
    const/16 v8, 0x7a

    goto/16 :goto_1c

    :pswitch_25
    const/16 v8, 0x76

    goto/16 :goto_1c

    :pswitch_26
    move v8, v11

    goto/16 :goto_1c

    :pswitch_27
    move v8, v12

    goto/16 :goto_1c

    :pswitch_28
    const/16 v8, 0x7a

    goto/16 :goto_1f

    :pswitch_29
    const/16 v8, 0x76

    goto/16 :goto_1f

    :pswitch_2a
    move v8, v11

    goto/16 :goto_1f

    :pswitch_2b
    move v8, v12

    goto/16 :goto_1f

    :pswitch_2c
    const/16 v8, 0x7a

    goto/16 :goto_22

    :pswitch_2d
    const/16 v8, 0x76

    goto/16 :goto_22

    :pswitch_2e
    move v8, v11

    goto/16 :goto_22

    :pswitch_2f
    move v8, v12

    goto/16 :goto_22

    :pswitch_30
    const/16 v8, 0x7a

    goto/16 :goto_25

    :pswitch_31
    const/16 v8, 0x76

    goto/16 :goto_25

    :pswitch_32
    move v8, v11

    goto/16 :goto_25

    :pswitch_33
    move v8, v12

    goto/16 :goto_25

    :pswitch_34
    const/16 v8, 0x7a

    goto/16 :goto_28

    :pswitch_35
    const/16 v8, 0x76

    goto/16 :goto_28

    :pswitch_36
    move v8, v11

    goto/16 :goto_28

    :pswitch_37
    move v8, v12

    goto/16 :goto_28

    :pswitch_38
    const/16 v8, 0x7a

    goto/16 :goto_2b

    :pswitch_39
    const/16 v8, 0x76

    goto/16 :goto_2b

    :pswitch_3a
    move v8, v11

    goto/16 :goto_2b

    :pswitch_3b
    move v8, v12

    goto/16 :goto_2b

    :pswitch_3c
    const/16 v7, 0x7a

    goto/16 :goto_2e

    :pswitch_3d
    const/16 v7, 0x76

    goto/16 :goto_2e

    :pswitch_3e
    move v7, v11

    goto/16 :goto_2e

    :pswitch_3f
    move v7, v12

    goto/16 :goto_2e

    :pswitch_40
    const/16 v8, 0x7a

    goto/16 :goto_31

    :pswitch_41
    const/16 v8, 0x76

    goto/16 :goto_31

    :pswitch_42
    move v8, v11

    goto/16 :goto_31

    :pswitch_43
    move v8, v12

    goto/16 :goto_31

    :pswitch_44
    const/16 v8, 0x7a

    goto/16 :goto_34

    :pswitch_45
    const/16 v8, 0x76

    goto/16 :goto_34

    :pswitch_46
    move v8, v11

    goto/16 :goto_34

    :pswitch_47
    move v8, v12

    goto/16 :goto_34

    :pswitch_48
    const/16 v8, 0x7a

    goto/16 :goto_37

    :pswitch_49
    const/16 v8, 0x76

    goto/16 :goto_37

    :pswitch_4a
    move v8, v11

    goto/16 :goto_37

    :pswitch_4b
    move v8, v12

    goto/16 :goto_37

    :pswitch_4c
    const/16 v8, 0x7a

    goto/16 :goto_3a

    :pswitch_4d
    const/16 v8, 0x76

    goto/16 :goto_3a

    :pswitch_4e
    move v8, v11

    goto/16 :goto_3a

    :pswitch_4f
    move v8, v12

    goto/16 :goto_3a

    :pswitch_50
    const/16 v8, 0x7a

    goto/16 :goto_3d

    :pswitch_51
    const/16 v8, 0x76

    goto/16 :goto_3d

    :pswitch_52
    move v8, v11

    goto/16 :goto_3d

    :pswitch_53
    move v8, v12

    goto/16 :goto_3d

    :pswitch_54
    const/16 v8, 0x7a

    goto/16 :goto_40

    :pswitch_55
    const/16 v8, 0x76

    goto/16 :goto_40

    :pswitch_56
    move v8, v11

    goto/16 :goto_40

    :pswitch_57
    move v8, v12

    goto/16 :goto_40

    :pswitch_58
    const/16 v8, 0x7a

    goto/16 :goto_43

    :pswitch_59
    const/16 v8, 0x76

    goto/16 :goto_43

    :pswitch_5a
    move v8, v11

    goto/16 :goto_43

    :pswitch_5b
    move v8, v12

    goto/16 :goto_43

    :pswitch_5c
    const/16 v8, 0x7a

    goto/16 :goto_46

    :pswitch_5d
    const/16 v8, 0x76

    goto/16 :goto_46

    :pswitch_5e
    move v8, v11

    goto/16 :goto_46

    :pswitch_5f
    move v8, v12

    goto/16 :goto_46

    :pswitch_60
    const/16 v8, 0x7a

    goto/16 :goto_49

    :pswitch_61
    const/16 v8, 0x76

    goto/16 :goto_49

    :pswitch_62
    move v8, v11

    goto/16 :goto_49

    :pswitch_63
    move v8, v12

    goto/16 :goto_49

    :pswitch_64
    const/16 v8, 0x7a

    goto/16 :goto_4c

    :pswitch_65
    const/16 v8, 0x76

    goto/16 :goto_4c

    :pswitch_66
    move v8, v11

    goto/16 :goto_4c

    :pswitch_67
    move v8, v12

    goto/16 :goto_4c

    :pswitch_68
    const/16 v8, 0x7a

    goto/16 :goto_4f

    :pswitch_69
    const/16 v8, 0x76

    goto/16 :goto_4f

    :pswitch_6a
    move v8, v11

    goto/16 :goto_4f

    :pswitch_6b
    move v8, v12

    goto/16 :goto_4f

    :pswitch_6c
    const/16 v8, 0x7a

    goto/16 :goto_52

    :pswitch_6d
    const/16 v8, 0x76

    goto/16 :goto_52

    :pswitch_6e
    move v8, v11

    goto/16 :goto_52

    :pswitch_6f
    move v8, v12

    goto/16 :goto_52

    :pswitch_70
    const/16 v8, 0x7a

    goto/16 :goto_55

    :pswitch_71
    const/16 v8, 0x76

    goto/16 :goto_55

    :pswitch_72
    move v8, v11

    goto/16 :goto_55

    :pswitch_73
    move v8, v12

    goto/16 :goto_55

    :pswitch_74
    const/16 v8, 0x7a

    goto/16 :goto_58

    :pswitch_75
    const/16 v8, 0x76

    goto/16 :goto_58

    :pswitch_76
    move v8, v11

    goto/16 :goto_58

    :pswitch_77
    move v8, v12

    goto/16 :goto_58

    :pswitch_78
    const/16 v8, 0x7a

    goto/16 :goto_5b

    :pswitch_79
    const/16 v8, 0x76

    goto/16 :goto_5b

    :pswitch_7a
    move v8, v11

    goto/16 :goto_5b

    :pswitch_7b
    move v8, v12

    goto/16 :goto_5b

    :pswitch_7c
    const/16 v8, 0x7a

    goto/16 :goto_5e

    :pswitch_7d
    const/16 v8, 0x76

    goto/16 :goto_5e

    :pswitch_7e
    move v8, v11

    goto/16 :goto_5e

    :pswitch_7f
    move v8, v12

    goto/16 :goto_5e

    :pswitch_80
    const/16 v8, 0x7a

    goto/16 :goto_61

    :pswitch_81
    const/16 v8, 0x76

    goto/16 :goto_61

    :pswitch_82
    move v8, v11

    goto/16 :goto_61

    :pswitch_83
    move v8, v12

    goto/16 :goto_61

    :pswitch_84
    const/16 v8, 0x7a

    goto/16 :goto_64

    :pswitch_85
    const/16 v8, 0x76

    goto/16 :goto_64

    :pswitch_86
    move v8, v11

    goto/16 :goto_64

    :pswitch_87
    move v8, v12

    goto/16 :goto_64

    :pswitch_88
    const/16 v8, 0x7a

    goto/16 :goto_67

    :pswitch_89
    const/16 v8, 0x76

    goto/16 :goto_67

    :pswitch_8a
    move v8, v11

    goto/16 :goto_67

    :pswitch_8b
    move v8, v12

    goto/16 :goto_67

    :pswitch_8c
    const/16 v8, 0x7a

    goto/16 :goto_6a

    :pswitch_8d
    const/16 v8, 0x76

    goto/16 :goto_6a

    :pswitch_8e
    move v8, v11

    goto/16 :goto_6a

    :pswitch_8f
    move v8, v12

    goto/16 :goto_6a

    :pswitch_90
    const/16 v8, 0x7a

    goto/16 :goto_6d

    :pswitch_91
    const/16 v8, 0x76

    goto/16 :goto_6d

    :pswitch_92
    move v8, v11

    goto/16 :goto_6d

    :pswitch_93
    move v8, v12

    goto/16 :goto_6d

    :pswitch_94
    const/16 v8, 0x7a

    goto/16 :goto_70

    :pswitch_95
    const/16 v8, 0x76

    goto/16 :goto_70

    :pswitch_96
    move v8, v11

    goto/16 :goto_70

    :pswitch_97
    move v8, v12

    goto/16 :goto_70

    :pswitch_98
    const/16 v8, 0x7a

    goto/16 :goto_73

    :pswitch_99
    const/16 v8, 0x76

    goto/16 :goto_73

    :pswitch_9a
    move v8, v11

    goto/16 :goto_73

    :pswitch_9b
    move v8, v12

    goto/16 :goto_73

    :pswitch_9c
    const/16 v8, 0x7a

    goto/16 :goto_76

    :pswitch_9d
    const/16 v8, 0x76

    goto/16 :goto_76

    :pswitch_9e
    move v8, v11

    goto/16 :goto_76

    :pswitch_9f
    move v8, v12

    goto/16 :goto_76

    :pswitch_a0
    const/16 v8, 0x7a

    goto/16 :goto_79

    :pswitch_a1
    const/16 v8, 0x76

    goto/16 :goto_79

    :pswitch_a2
    move v8, v11

    goto/16 :goto_79

    :pswitch_a3
    move v8, v12

    goto/16 :goto_79

    :pswitch_a4
    const/16 v8, 0x7a

    goto/16 :goto_7c

    :pswitch_a5
    const/16 v8, 0x76

    goto/16 :goto_7c

    :pswitch_a6
    move v8, v11

    goto/16 :goto_7c

    :pswitch_a7
    move v8, v12

    goto/16 :goto_7c

    :pswitch_a8
    const/16 v8, 0x7a

    goto/16 :goto_7f

    :pswitch_a9
    const/16 v8, 0x76

    goto/16 :goto_7f

    :pswitch_aa
    move v8, v11

    goto/16 :goto_7f

    :pswitch_ab
    move v8, v12

    goto/16 :goto_7f

    :pswitch_ac
    const/16 v8, 0x7a

    goto/16 :goto_82

    :pswitch_ad
    const/16 v8, 0x76

    goto/16 :goto_82

    :pswitch_ae
    move v8, v11

    goto/16 :goto_82

    :pswitch_af
    move v8, v12

    goto/16 :goto_82

    :cond_59
    move v4, v9

    goto/16 :goto_83

    :cond_5a
    move v4, v9

    goto/16 :goto_80

    :cond_5b
    move v4, v9

    goto/16 :goto_7d

    :cond_5c
    move v4, v9

    goto/16 :goto_7a

    :cond_5d
    move v4, v9

    goto/16 :goto_77

    :cond_5e
    move v4, v9

    goto/16 :goto_74

    :cond_5f
    move v4, v9

    goto/16 :goto_71

    :cond_60
    move v4, v9

    goto/16 :goto_6e

    :cond_61
    move v4, v9

    goto/16 :goto_6b

    :cond_62
    move v4, v9

    goto/16 :goto_68

    :cond_63
    move v4, v9

    goto/16 :goto_65

    :cond_64
    move v4, v9

    goto/16 :goto_62

    :cond_65
    move v4, v9

    goto/16 :goto_5f

    :cond_66
    move v4, v9

    goto/16 :goto_5c

    :cond_67
    move v4, v9

    goto/16 :goto_59

    :cond_68
    move v4, v9

    goto/16 :goto_56

    :cond_69
    move v4, v9

    goto/16 :goto_53

    :cond_6a
    move v4, v9

    goto/16 :goto_50

    :cond_6b
    move v4, v9

    goto/16 :goto_4d

    :cond_6c
    move v4, v9

    goto/16 :goto_4a

    :cond_6d
    move v4, v9

    goto/16 :goto_47

    :cond_6e
    move v4, v9

    goto/16 :goto_44

    :cond_6f
    move v4, v9

    goto/16 :goto_41

    :cond_70
    move v4, v9

    goto/16 :goto_3e

    :cond_71
    move v4, v9

    goto/16 :goto_3b

    :cond_72
    move v4, v9

    goto/16 :goto_38

    :cond_73
    move v4, v9

    goto/16 :goto_35

    :cond_74
    move v4, v9

    goto/16 :goto_32

    :cond_75
    move v3, v9

    goto/16 :goto_2f

    :cond_76
    move v4, v9

    goto/16 :goto_2c

    :cond_77
    move v4, v9

    goto/16 :goto_29

    :cond_78
    move v4, v9

    goto/16 :goto_26

    :cond_79
    move v4, v9

    goto/16 :goto_23

    :cond_7a
    move v4, v9

    goto/16 :goto_20

    :cond_7b
    move v4, v9

    goto/16 :goto_1d

    :cond_7c
    move v4, v9

    goto/16 :goto_1a

    :cond_7d
    move v4, v9

    goto/16 :goto_17

    :cond_7e
    move v4, v9

    goto/16 :goto_14

    :cond_7f
    move v4, v9

    goto/16 :goto_11

    :cond_80
    move v4, v9

    goto/16 :goto_e

    :cond_81
    move v4, v9

    goto/16 :goto_b

    :cond_82
    move v4, v9

    goto/16 :goto_8

    :cond_83
    move v3, v9

    goto/16 :goto_5

    :cond_84
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
.end method

.method constructor <init>(Lcom/skyhookwireless/wps/_sdkf;Lcom/skyhookwireless/_sdko;Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;JLcom/skyhookwireless/wps/WPSPeriodicLocationCallback;)V
    .locals 3

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/skyhookwireless/wps/_sdkn;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkob;

    invoke-direct {v0}, Lcom/skyhookwireless/wps/_sdkob;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkb:Lcom/skyhookwireless/wps/_sdkob;

    const/4 v0, 0x0

    iput v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkc:I

    iput-object p3, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkf:Lcom/skyhookwireless/wps/WPSAuthentication;

    iput-object p4, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkg:Lcom/skyhookwireless/wps/WPSStreetAddressLookup;

    iput-wide p5, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkh:J

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdke:Lcom/skyhookwireless/_sdkub;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkd:Lcom/skyhookwireless/_sdkub;

    new-instance v0, Lcom/skyhookwireless/wps/_sdknb;

    sget-object v1, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    invoke-direct {v0, p7, v1}, Lcom/skyhookwireless/wps/_sdknb;-><init>(Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;Lcom/skyhookwireless/wps/WPSContinuation;)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdki:Lcom/skyhookwireless/wps/_sdknb;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkl:Ljava/util/Map;

    :try_start_0
    sget-object v0, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v1, 0x2b

    aget-object v0, v0, v1

    invoke-static {p2, v0}, Lcom/skyhookwireless/_sdkkc;->_sdkb(Lcom/skyhookwireless/_sdko;Ljava/lang/String;)Lcom/skyhookwireless/_sdkkc;
    :try_end_0
    .catch Lcom/skyhookwireless/_sdki; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkj:Lcom/skyhookwireless/_sdkkc;

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget-object v0, Lcom/skyhookwireless/_sdkkc;->NULL_LOCATION_PROVIDER:Lcom/skyhookwireless/_sdkkc;

    goto :goto_0
.end method

.method private _sdka(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/_sdkyc;)Lcom/skyhookwireless/_sdked;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            "Lcom/skyhookwireless/_sdkyc;",
            ")",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkf;->_sdkd:Lcom/skyhookwireless/wps/_sdkib;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdki:Lcom/skyhookwireless/wps/_sdknb;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdknb;->_sdke()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/skyhookwireless/wps/_sdkib;->_sdka(Lcom/skyhookwireless/wps/Location;Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/_sdked;

    move-result-object v1

    iget-object v0, v1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    sget-object v2, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v4, 0x23

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, v1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast v0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->isExtrapolated()Z

    move-result v0

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v5, 0x20

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_2
    if-nez v0, :cond_3

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdke:Lcom/skyhookwireless/_sdkub;

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdke:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/_sdkn;->_sdka(Lcom/skyhookwireless/wps/_sdkpb;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/skyhookwireless/wps/_sdkn;->_sdkc(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/_sdkyc;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private _sdka(Ljava/util/List;)Lcom/skyhookwireless/_sdked;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/_sdkad;",
            ">;)",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    sget v2, Lcom/skyhookwireless/wps/Location;->_sdki:I

    const/high16 v0, -0x8000

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    move-object v5, v10

    move-object v6, v10

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdkad;

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-direct {p0, v0}, Lcom/skyhookwireless/wps/_sdkn;->_sdka(Ljava/util/concurrent/Future;)Ljava/util/Map$Entry;

    move-result-object v7

    if-nez v2, :cond_4

    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkn;->_sdkm:Z

    if-nez v1, :cond_1

    if-nez v7, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v1, Lcom/skyhookwireless/wps/_sdkn;->_sdkm:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const-wide/16 v8, 0x0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v8, v9, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdked;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/skyhookwireless/_sdked;

    iget-object v1, v1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v4, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/skyhookwireless/_sdked;

    iget-object v1, v1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, v0, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    check-cast v1, Lcom/skyhookwireless/wps/WPSReturnCode;

    sget-object v5, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne v1, v5, :cond_3

    iget-object v0, v0, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast v0, Lcom/skyhookwireless/wps/_sdkdb;

    move-object v5, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkpb;

    iput-object v0, v5, Lcom/skyhookwireless/wps/_sdkdb;->_sdkp:Lcom/skyhookwireless/wps/_sdkpb;

    if-eqz v2, :cond_7

    move v0, v4

    move-object v2, v1

    move-object v1, v5

    :goto_2
    if-nez v2, :cond_5

    move-object v0, v10

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v7, 0x1e

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkd(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v7, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v8, 0x1f

    aget-object v7, v7, v8

    invoke-virtual {v1, v7, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkn;->_sdkm:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Lcom/skyhookwireless/wps/_sdkdb;

    invoke-direct {v0}, Lcom/skyhookwireless/wps/_sdkdb;-><init>()V

    move-object v5, v0

    goto :goto_1

    :cond_4
    move v0, v4

    move-object v1, v5

    move-object v2, v6

    :cond_5
    invoke-static {v2, v1}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :cond_6
    move v0, v4

    move-object v1, v5

    move-object v2, v6

    goto :goto_2

    :cond_7
    move-object v6, v1

    goto/16 :goto_0
.end method

.method private _sdka(Lcom/skyhookwireless/_sdked;Lcom/skyhookwireless/wps/WPSReturnCode;I)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "I)",
            "Lcom/skyhookwireless/wps/WPSContinuation;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdki:Lcom/skyhookwireless/wps/_sdknb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdknb;->_sdkd()I

    move-result v0

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkj:Lcom/skyhookwireless/_sdkkc;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkc;->_sdka()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_LOCATION_CANNOT_BE_DETERMINED:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkj:Lcom/skyhookwireless/_sdkkc;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkc;->_sdka()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkj:Lcom/skyhookwireless/_sdkkc;

    iget-wide v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkh:J

    invoke-virtual {v0, v1, v2}, Lcom/skyhookwireless/_sdkkc;->_sdka(J)V

    :cond_3
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkj:Lcom/skyhookwireless/_sdkkc;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkc;->_sdkc()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->hasTime()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget v1, Lcom/skyhookwireless/wps/Location;->_sdki:I

    if-eqz v1, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkk:Lcom/skyhookwireless/wps/_sdkdb;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkk:Lcom/skyhookwireless/wps/_sdkdb;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdkdb;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkk:Lcom/skyhookwireless/wps/_sdkdb;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdki:Lcom/skyhookwireless/wps/_sdknb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/wps/_sdknb;->handleWPSPeriodicLocation(Lcom/skyhookwireless/wps/WPSLocation;)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdki:Lcom/skyhookwireless/wps/_sdknb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdknb;->_sdka()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkh:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdki:Lcom/skyhookwireless/wps/_sdknb;

    iget-object p0, p1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    check-cast p0, Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-virtual {v0, p0}, Lcom/skyhookwireless/wps/_sdknb;->handleError(Lcom/skyhookwireless/wps/WPSReturnCode;)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkc()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkc(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkj:Lcom/skyhookwireless/_sdkkc;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkc;->_sdka()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkj:Lcom/skyhookwireless/_sdkkc;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V

    :cond_a
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdki:Lcom/skyhookwireless/wps/_sdknb;

    iget-object v0, p1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast v0, Lcom/skyhookwireless/wps/WPSLocation;

    invoke-virtual {v1, v0, p3}, Lcom/skyhookwireless/wps/_sdknb;->handleWPSPeriodicLocationTrack(Lcom/skyhookwireless/wps/WPSLocation;I)Lcom/skyhookwireless/wps/WPSContinuation;

    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkn;->_sdka()V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdki:Lcom/skyhookwireless/wps/_sdknb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdknb;->_sdkc()Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private _sdka(Lcom/skyhookwireless/wps/WPSReturnCode;Lcom/skyhookwireless/wps/_sdkdb;I)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 4

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p2, Lcom/skyhookwireless/wps/_sdkdb;->_sdkp:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-direct {p0, p1, p2, v0}, Lcom/skyhookwireless/wps/_sdkn;->_sdka(Lcom/skyhookwireless/wps/WPSReturnCode;Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkpb;)V

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkn;->_sdkm:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkl:Ljava/util/Map;

    iget-object v1, p2, Lcom/skyhookwireless/wps/_sdkdb;->_sdkp:Lcom/skyhookwireless/wps/_sdkpb;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_UNAUTHORIZED:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0x27

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    invoke-static {}, Lcom/skyhookwireless/_sdkub;->_sdkc()Lcom/skyhookwireless/_sdkub;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkd:Lcom/skyhookwireless/_sdkub;

    :cond_2
    invoke-static {p1, p2}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    invoke-direct {p0, v0, p1, p3}, Lcom/skyhookwireless/wps/_sdkn;->_sdka(Lcom/skyhookwireless/_sdked;Lcom/skyhookwireless/wps/WPSReturnCode;I)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    return-object v0
.end method

.method private _sdka(Ljava/util/concurrent/Future;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;>;)",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;>;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    sget v1, Lcom/skyhookwireless/wps/Location;->_sdki:I

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdked;

    iget-object v0, v0, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _sdka()V
    .locals 3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdki:Lcom/skyhookwireless/wps/_sdknb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdknb;->_sdkc()Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_STOP:Lcom/skyhookwireless/wps/WPSContinuation;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkf;->_sdkd:Lcom/skyhookwireless/wps/_sdkib;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkib;->_sdka()V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0x29

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdki:Lcom/skyhookwireless/wps/_sdknb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdknb;->_sdkb()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkf;->_sdkd:Lcom/skyhookwireless/wps/_sdkib;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkib;->_sdka()V

    goto :goto_0
.end method

.method private _sdka(Lcom/skyhookwireless/wps/WPSReturnCode;Lcom/skyhookwireless/wps/_sdkdb;Lcom/skyhookwireless/wps/_sdkpb;)V
    .locals 4

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Lcom/skyhookwireless/wps/_sdkpb;->hasBeacons()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkf;)Lcom/skyhookwireless/wps/_sdklb;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/skyhookwireless/wps/_sdklb;->add(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/wps/_sdkdb;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_LOCATION_CANNOT_BE_DETERMINED:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkf;)Lcom/skyhookwireless/wps/_sdklb;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/skyhookwireless/wps/_sdklb;->add(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/wps/_sdkdb;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _sdka(Lcom/skyhookwireless/wps/_sdkpb;)Z
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkf;)Lcom/skyhookwireless/wps/_sdklb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdklb;->get(Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _sdkb(Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/_sdked;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            ")",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkf;->_sdka(Lcom/skyhookwireless/wps/_sdkf;)Lcom/skyhookwireless/wps/_sdklb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdklb;->get(Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->getNAP()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->getNCell()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget-object v0, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_LOCATION_CANNOT_BE_DETERMINED:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-static {v0, v3}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->getNAP()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v4, 0x13

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->getNCell()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v4, 0x1b

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdkdb;->clone()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    iget-object p0, v0, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast p0, Lcom/skyhookwireless/wps/_sdkdb;

    iput-object p1, p0, Lcom/skyhookwireless/wps/_sdkdb;->_sdkp:Lcom/skyhookwireless/wps/_sdkpb;

    goto :goto_0
.end method

.method private _sdkb(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/_sdkyc;)Lcom/skyhookwireless/_sdked;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            "Lcom/skyhookwireless/_sdkyc;",
            ")",
            "Lcom/skyhookwireless/_sdked",
            "<",
            "Lcom/skyhookwireless/wps/WPSReturnCode;",
            "Lcom/skyhookwireless/wps/_sdkdb;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/_sdkn;->_sdkb(Lcom/skyhookwireless/wps/_sdkpb;)Lcom/skyhookwireless/_sdked;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    sget-object v2, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    sget-object v2, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_ERROR_LOCATION_CANNOT_BE_DETERMINED:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/skyhookwireless/wps/_sdkn;->_sdkc(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/_sdkyc;)V

    :cond_1
    return-object v0
.end method

.method private _sdkb()V
    .locals 4

    sget v1, Lcom/skyhookwireless/wps/Location;->_sdki:I

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/_sdked;

    iget-object v0, v0, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    if-nez v1, :cond_2

    if-eqz v1, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    return-void
.end method

.method private _sdkc(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/_sdkyc;)V
    .locals 4

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkd:Lcom/skyhookwireless/_sdkub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkd:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkub;->_sdka()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkd:Lcom/skyhookwireless/_sdkub;

    :cond_2
    invoke-static {}, Lcom/skyhookwireless/_sdkmb;->_sdkf()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkl:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkn;->_sdkm:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkn;->_sdkm:Z

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkr;->CELL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkn;->_sdkm:Z

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkn;->_sdkm:Z

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkr;->CELL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdktc;->_sdkb(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkl:Ljava/util/Map;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkb:Lcom/skyhookwireless/wps/_sdkob;

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkf:Lcom/skyhookwireless/wps/WPSAuthentication;

    iget-object v3, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkg:Lcom/skyhookwireless/wps/WPSStreetAddressLookup;

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/skyhookwireless/wps/_sdkob;->_sdka(Lcom/skyhookwireless/wps/WPSAuthentication;Lcom/skyhookwireless/wps/WPSStreetAddressLookup;Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/_sdkyc;)Ljava/util/concurrent/Future;

    move-result-object v1

    iget v2, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/skyhookwireless/_sdked;->_sdka(Ljava/lang/Object;Ljava/lang/Object;)Lcom/skyhookwireless/_sdked;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkl:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 0

    return-void
.end method

.method public done()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkj:Lcom/skyhookwireless/_sdkkc;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkkc;->_sdkb()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/skyhookwireless/wps/_sdkn;->_sdkb()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdki:Lcom/skyhookwireless/wps/_sdknb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdknb;->done()V

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v2, 0x25

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdka:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/wps/_sdkn;->z:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdki:Lcom/skyhookwireless/wps/_sdknb;

    invoke-virtual {v1}, Lcom/skyhookwireless/wps/_sdknb;->done()V

    throw v0
.end method

.method public handleError(Lcom/skyhookwireless/wps/WPSReturnCode;)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdki:Lcom/skyhookwireless/wps/_sdknb;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdknb;->handleError(Lcom/skyhookwireless/wps/WPSReturnCode;)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    return-object v0
.end method

.method public handleEvents(Ljava/util/List;Lcom/skyhookwireless/_sdkyc;)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 3
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

    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/_sdkn;->_sdka(Ljava/util/List;)Lcom/skyhookwireless/_sdked;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v2, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    check-cast v0, Lcom/skyhookwireless/_sdked;

    iget-object v0, v0, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    check-cast v0, Lcom/skyhookwireless/wps/WPSReturnCode;

    iget-object v1, v2, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    check-cast v1, Lcom/skyhookwireless/_sdked;

    iget-object v1, v1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast v1, Lcom/skyhookwireless/wps/_sdkdb;

    iget-object v2, v2, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/skyhookwireless/wps/_sdkn;->_sdka(Lcom/skyhookwireless/wps/WPSReturnCode;Lcom/skyhookwireless/wps/_sdkdb;I)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    goto :goto_0
.end method

.method public handleScan(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/_sdkyc;)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 5

    const/4 v3, 0x0

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkc:I

    invoke-direct {p0, p1, p2}, Lcom/skyhookwireless/wps/_sdkn;->_sdka(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/_sdkyc;)Lcom/skyhookwireless/_sdked;

    move-result-object v1

    iget-object v0, v1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    sget-object v2, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkc:I

    invoke-direct {p0, v1, v3, v0}, Lcom/skyhookwireless/wps/_sdkn;->_sdka(Lcom/skyhookwireless/_sdked;Lcom/skyhookwireless/wps/WPSReturnCode;I)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/skyhookwireless/wps/_sdkn;->_sdkb(Lcom/skyhookwireless/wps/_sdkpb;Lcom/skyhookwireless/_sdkyc;)Lcom/skyhookwireless/_sdked;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    check-cast v0, Lcom/skyhookwireless/wps/WPSReturnCode;

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    sget-object v4, Lcom/skyhookwireless/wps/WPSReturnCode;->WPS_OK:Lcom/skyhookwireless/wps/WPSReturnCode;

    if-ne v3, v4, :cond_2

    iget v1, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkc:I

    invoke-direct {p0, v2, v0, v1}, Lcom/skyhookwireless/wps/_sdkn;->_sdka(Lcom/skyhookwireless/_sdked;Lcom/skyhookwireless/wps/WPSReturnCode;I)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkc:I

    invoke-direct {p0, v1, v0, v2}, Lcom/skyhookwireless/wps/_sdkn;->_sdka(Lcom/skyhookwireless/_sdked;Lcom/skyhookwireless/wps/WPSReturnCode;I)Lcom/skyhookwireless/wps/WPSContinuation;

    move-result-object v0

    goto :goto_0
.end method

.method public isWifiNeeded(J)Z
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdkn:Lcom/skyhookwireless/wps/_sdkf;

    iget-object v0, v0, Lcom/skyhookwireless/wps/_sdkf;->_sdkd:Lcom/skyhookwireless/wps/_sdkib;

    invoke-virtual {v0, p1, p2}, Lcom/skyhookwireless/wps/_sdkib;->_sdka(J)Z

    move-result v0

    return v0
.end method

.method public lastLocation()Lcom/skyhookwireless/wps/_sdkdb;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkn;->_sdki:Lcom/skyhookwireless/wps/_sdknb;

    invoke-virtual {v0}, Lcom/skyhookwireless/wps/_sdknb;->_sdke()Lcom/skyhookwireless/wps/_sdkdb;

    move-result-object v0

    return-object v0
.end method
