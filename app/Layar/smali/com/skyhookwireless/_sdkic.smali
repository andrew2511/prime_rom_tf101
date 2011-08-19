.class final Lcom/skyhookwireless/_sdkic;
.super Lcom/skyhookwireless/_sdkgc;


# static fields
.field private static _sdke:Ljava/lang/reflect/Method;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdkd:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _sdkf:Lcom/skyhookwireless/_sdkcb;

.field private final _sdkg:Landroid/content/Context;

.field private final _sdkh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkv;",
            ">;"
        }
    .end annotation
.end field

.field private _sdki:Landroid/telephony/PhoneStateListener;

.field private _sdkj:Landroid/telephony/TelephonyManager;

.field private _sdkk:Lcom/skyhookwireless/_sdkq;

.field private _sdkl:Lcom/skyhookwireless/_sdkub;

.field private _sdkm:Ljava/lang/Integer;

.field private _sdkn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/_sdkv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rUi\u000b\u000b\u007f\u001dhG\u0006\u007fLs\u000c\n1]y\u0013!tS{\u000f\r~H_\u0002\u0003}I4N"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pTx\u0015\u0000x^R\u0006\u001bxLy](Bw]\u0003\u000eaNy\u0015&|Jp"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tT}\u0005\u0003tvs\u0004\u000eeSs\t:a^}\u0013\nb"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "rUi\u000b\u000b\u007f\u001dhG\n\u007f[~\u000b\n1Vs\u0004\u000eeSs\tOdJx\u0006\u001btI&G"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pTx\u0015\u0000x^2\u0017\ncWu\u0014\u001cxUrI,^tH5 ]eP(,PnU(!NoL#.E\u007fO"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u007fUhG\u000e}Vs\u0010\nu\u001ah\u0008OtT}\u0005\u0003t\u0015x\u000e\u001cpXp\u0002O}U\u007f\u0006\u001bxUrG\u001aa^}\u0013\nb"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "e_p\u0002\u001fyUr\u001eO|[r\u0006\u0008tH<\t\u001a}V0G\u000c}Uo\u0002G8\u001al\u0015\u0000s[~\u000b\u00161M}\u0014Or[p\u000b\nu\u001au\tOpTs\u0013\u0007tH<\u0013\u0007c_}\u0003"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "}U\u007f\u0006\u001bxUrG\u001aa^}\u0013\nb\u001ay\t\u000esVy\u0003"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rUi\u000b\u000b1Ts\u0013Ov_hG\u001fyUr\u0002ObNi\u0001\t"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "r[\u007f\u000f\nu\u001al\u0015\ngSs\u0012\u001c1Yy\u000b\u0003b\u0016<\u0004\u000erRyG\u0006b\u001ar\u0008\u0018+\u001a"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u007fU<\u0017\u001dtLu\u0008\u001ab\u001ao\u0004\u000e\u007fTy\u0003Or_p\u000b\u001c1NsG\u000cpYt\u0002"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NIx\u000c\u000e"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "|[u\tOr_p\u000bO|Y\u007f]O"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "1Wr\u0004U1"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rUi\u000b\u000b\u007f\u001dhG\u001fpHo\u0002O|Y\u007fH\u0002\u007fY"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dT}\u0005\u0003t\u001ah\u0008Oa[n\u0014\n1]y\u0013!tNk\u0008\u001dzul\u0002\u001dpNs\u0015G8\u001an\u0002\u001cdVh]"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "}Uo\u0013Ob_n\u0011\u0006\u007f]<\u0004\n}V"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "uSo\u0006\r}_P\u0008\u000cpNu\u0008\u0001DJx\u0006\u001btI"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "r[r@\u001b1^u\u0014\u000esVyG\u0003~Y}\u0013\u0006~T<\u0012\u001fu[h\u0002\u001c+\u001a"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/skyhookwireless/_sdkic;->_sdke:Ljava/lang/reflect/Method;

    const-class v0, Lcom/skyhookwireless/_sdkic;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v0

    :try_start_0
    const-string v1, "rUqI\u001czCt\u0008\u0000zMu\u0015\n}_o\u0014ANIx\u000c\u001a"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v1

    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->_sdka(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/skyhookwireless/_sdkic;->_sdke:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    sget-object v1, Lcom/skyhookwireless/_sdkic;->_sdke:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    :try_start_2
    const-string v1, "rUqI\u001czCt\u0008\u0000zMu\u0015\n}_o\u0014ANIx\u000c\u001b"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v1

    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v1

    :try_start_3
    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->_sdka(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/skyhookwireless/_sdkic;->_sdke:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_1
    sget-object v1, Lcom/skyhookwireless/_sdkic;->_sdke:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    const-string v1, "rUi\u000b\u000b\u007f\u001dhG\u0008tN<\u0000\nety\u000e\u0008yXs\u0015,tVp\u0014G8"

    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v1

    invoke-static {v1}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :goto_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dIu\t\u00081"

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z(Ljava/lang/String;)[C

    move-result-object v2

    invoke-static {v2}, Lcom/skyhookwireless/_sdkic;->z([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkic;->_sdke:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public constructor <init>(Lcom/skyhookwireless/_sdko;)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/skyhookwireless/_sdkv;->_sdkf:I

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkgc;-><init>()V

    new-instance v1, Lcom/skyhookwireless/_sdkp;

    invoke-direct {v1, p0}, Lcom/skyhookwireless/_sdkp;-><init>(Lcom/skyhookwireless/_sdkic;)V

    iput-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkd:Ljava/util/concurrent/Callable;

    iput-object v2, p0, Lcom/skyhookwireless/_sdkic;->_sdkj:Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/skyhookwireless/_sdkic;->_sdkk:Lcom/skyhookwireless/_sdkq;

    iput-object v2, p0, Lcom/skyhookwireless/_sdkic;->_sdkl:Lcom/skyhookwireless/_sdkub;

    iput-object v2, p0, Lcom/skyhookwireless/_sdkic;->_sdkm:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/skyhookwireless/_sdkic;->_sdkn:Ljava/util/List;

    const-class v1, Lcom/skyhookwireless/_sdkic;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;

    move-result-object v1

    iput-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    check-cast p1, Lcom/skyhookwireless/_sdkm;

    invoke-virtual {p1}, Lcom/skyhookwireless/_sdkm;->_sdka()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkg:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkh:Ljava/util/ArrayList;

    sget v1, Lcom/skyhookwireless/_sdkcb;->_sdkd:I

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/skyhookwireless/_sdkv;->_sdkf:I

    :cond_0
    return-void
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkic;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkic;->_sdki:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkic;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkic;->_sdkj:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkcb;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    return-object v0
.end method

.method private _sdka(Landroid/telephony/gsm/GsmCellLocation;)Lcom/skyhookwireless/_sdkq;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkj:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_0
    move-object v0, v5

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    iget-object v2, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v2}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/16 v5, 0xd

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    :cond_2
    new-instance v2, Lcom/skyhookwireless/_sdkq;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/skyhookwireless/_sdkq;-><init>(IIII)V

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    sget-object v2, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    goto :goto_0
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkic;Landroid/telephony/gsm/GsmCellLocation;)Lcom/skyhookwireless/_sdkq;
    .locals 1

    invoke-direct {p0, p1}, Lcom/skyhookwireless/_sdkic;->_sdka(Landroid/telephony/gsm/GsmCellLocation;)Lcom/skyhookwireless/_sdkq;

    move-result-object v0

    return-object v0
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkic;Lcom/skyhookwireless/_sdkq;)Lcom/skyhookwireless/_sdkq;
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkic;->_sdkk:Lcom/skyhookwireless/_sdkq;

    return-object p1
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkic;Lcom/skyhookwireless/_sdkub;)Lcom/skyhookwireless/_sdkub;
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkic;->_sdkl:Lcom/skyhookwireless/_sdkub;

    return-object p1
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkic;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkic;->_sdkm:Ljava/lang/Integer;

    return-object p1
.end method

.method private static _sdka(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/telephony/TelephonyManager;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/skyhookwireless/_sdkcb;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/skyhookwireless/_sdkq;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static _sdka(Lcom/skyhookwireless/_sdkic;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkic;->_sdkn:Ljava/util/List;

    return-object p1
.end method

.method private _sdka(Lcom/skyhookwireless/_sdkq;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/_sdkq;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/_sdkv;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    sget-object v1, Lcom/skyhookwireless/_sdkic;->_sdke:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/skyhookwireless/_sdkic;->_sdke:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/skyhookwireless/_sdkic;->_sdkj:Landroid/telephony/TelephonyManager;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object p0, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    sget-object v3, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3, v1}, Lcom/skyhookwireless/_sdkcb;->_sdke(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method static _sdkb(Lcom/skyhookwireless/_sdkic;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkj:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static _sdkb(Lcom/skyhookwireless/_sdkic;Lcom/skyhookwireless/_sdkq;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/skyhookwireless/_sdkic;->_sdka(Lcom/skyhookwireless/_sdkq;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized _sdkb(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkv;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkk:Lcom/skyhookwireless/_sdkq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkm:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkl:Lcom/skyhookwireless/_sdkub;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/skyhookwireless/_sdkv;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkk:Lcom/skyhookwireless/_sdkq;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/skyhookwireless/_sdkic;->_sdkm:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/skyhookwireless/_sdkic;->_sdkl:Lcom/skyhookwireless/_sdkub;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/skyhookwireless/_sdkv;-><init>(Lcom/skyhookwireless/_sdkq;IILcom/skyhookwireless/_sdkub;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkn:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkn:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static _sdkc(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkq;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkk:Lcom/skyhookwireless/_sdkq;

    return-object v0
.end method

.method static _sdkd(Lcom/skyhookwireless/_sdkic;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkm:Ljava/lang/Integer;

    return-object v0
.end method

.method private declared-synchronized _sdkd()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkk:Lcom/skyhookwireless/_sdkq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkm:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkl:Lcom/skyhookwireless/_sdkub;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Lcom/skyhookwireless/_sdkv;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkk:Lcom/skyhookwireless/_sdkq;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/skyhookwireless/_sdkic;->_sdkm:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/skyhookwireless/_sdkic;->_sdkl:Lcom/skyhookwireless/_sdkub;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/skyhookwireless/_sdkv;-><init>(Lcom/skyhookwireless/_sdkq;IILcom/skyhookwireless/_sdkub;)V

    iget-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkh:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkn:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkh:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkn:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkn:Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkic;->_sdkh:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static _sdke(Lcom/skyhookwireless/_sdkic;)Lcom/skyhookwireless/_sdkub;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkl:Lcom/skyhookwireless/_sdkub;

    return-object v0
.end method

.method private _sdke()V
    .locals 3

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/skyhookwireless/_sdkic;->_sdkd()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkk:Lcom/skyhookwireless/_sdkq;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkm:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkl:Lcom/skyhookwireless/_sdkub;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkn:Ljava/util/List;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static _sdkf(Lcom/skyhookwireless/_sdkic;)V
    .locals 0

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkic;->_sdkd()V

    return-void
.end method

.method static _sdkg(Lcom/skyhookwireless/_sdkic;)V
    .locals 0

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkic;->_sdke()V

    return-void
.end method

.method static _sdkh(Lcom/skyhookwireless/_sdkic;)V
    .locals 0

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkic;->_sdka()V

    return-void
.end method

.method static _sdki(Lcom/skyhookwireless/_sdkic;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkg:Landroid/content/Context;

    return-object v0
.end method

.method private static z([C)Ljava/lang/String;
    .locals 8

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    move v2, v1

    move v1, v0

    move-object v0, p0

    :cond_0
    move v3, v1

    move v4, v2

    move-object v1, v0

    move v7, v2

    move-object v2, v0

    move v0, v7

    :goto_0
    aget-char v5, v1, v0

    rem-int/lit8 v6, v4, 0x5

    packed-switch v6, :pswitch_data_0

    const/16 v6, 0x6f

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    if-nez v3, :cond_1

    move-object v1, v2

    move v4, v0

    move v0, v3

    goto :goto_0

    :pswitch_0
    const/16 v6, 0x11

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x3a

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x1c

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x67

    goto :goto_1

    :cond_1
    move v1, v3

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    :goto_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v2, v1

    move v1, v0

    move-object v0, p0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static z(Ljava/lang/String;)[C
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v1, v0

    :goto_0
    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-char v2, v1, v0

    xor-int/lit8 v2, v2, 0x6f

    int-to-char v2, v2

    aput-char v2, v1, v0

    :cond_0
    move-object v0, v1

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected _sdka(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdkgc;
    .locals 1

    new-instance v0, Lcom/skyhookwireless/_sdkic;

    invoke-direct {v0, p1}, Lcom/skyhookwireless/_sdkic;-><init>(Lcom/skyhookwireless/_sdko;)V

    return-object v0
.end method

.method public declared-synchronized _sdka(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkv;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/skyhookwireless/_sdkic;->_sdkb(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkh:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkh:Ljava/util/ArrayList;

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

.method public _sdkb()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkd:Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lcom/skyhookwireless/_sdkn;->_sdka(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkj:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/skyhookwireless/_sdkid;

    sget-object v1, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/skyhookwireless/_sdkid;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/skyhookwireless/_sdkid;

    sget-object v2, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-direct {v1, v2, v0}, Lcom/skyhookwireless/_sdkid;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkj:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdki:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkg:Landroid/content/Context;

    sget-object v1, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkj:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_1
    iget-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkj:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_0
    :try_start_4
    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V

    sget v0, Lcom/skyhookwireless/_sdkv;->_sdkf:I

    if-eqz v0, :cond_2

    :cond_3
    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    sget-object v1, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized _sdkc()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkj:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkg:Landroid/content/Context;

    sget-object v1, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkj:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    iget-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkj:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdki:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkj:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdki:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdki:Landroid/telephony/PhoneStateListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkj:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/skyhookwireless/_sdkic;->_sdkh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkic;->_sdke()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/skyhookwireless/_sdkic;->_sdkf:Lcom/skyhookwireless/_sdkcb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/skyhookwireless/_sdkcb;->_sdkb(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public _sdkd()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/skyhookwireless/_sdkic;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public _sdke()Z
    .locals 1

    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkic;->_sdkd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
