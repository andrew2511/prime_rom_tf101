.class public final Lcom/skyhookwireless/_sdkv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/skyhookwireless/_sdkr;
.implements Lcom/skyhookwireless/_sdkw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/skyhookwireless/_sdkv;",
        ">;",
        "Lcom/skyhookwireless/_sdkr;",
        "Lcom/skyhookwireless/_sdkw;"
    }
.end annotation


# static fields
.field public static final MIN_DBM:I = -0x71

.field static final synthetic _sdke:Z

.field public static _sdkf:I

.field private static final z:Ljava/lang/String;


# instance fields
.field private final _sdka:Lcom/skyhookwireless/_sdkq;

.field private final _sdkb:I

.field private final _sdkc:I

.field private final _sdkd:Lcom/skyhookwireless/_sdkub;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "\'UnjT3R;%]fDt?U\"U!j"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v8, :cond_3

    move v2, v7

    :cond_0
    move v3, v1

    move v4, v2

    move-object v1, v0

    move v9, v2

    move-object v2, v0

    move v0, v9

    :goto_0
    aget-char v5, v1, v0

    rem-int/lit8 v6, v4, 0x5

    packed-switch v6, :pswitch_data_0

    const/16 v6, 0x3b

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

    :cond_1
    move v1, v3

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    :goto_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/skyhookwireless/_sdkv;->z:Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/_sdkv;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    :goto_3
    sput-boolean v0, Lcom/skyhookwireless/_sdkv;->_sdke:Z

    return-void

    :cond_2
    move v0, v7

    goto :goto_3

    :pswitch_0
    const/16 v6, 0x46

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x26

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x1b

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x4a

    goto :goto_1

    :cond_3
    move v2, v7

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Lcom/skyhookwireless/_sdkq;IILcom/skyhookwireless/_sdkub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skyhookwireless/_sdkv;->_sdka:Lcom/skyhookwireless/_sdkq;

    iput p2, p0, Lcom/skyhookwireless/_sdkv;->_sdkb:I

    iput p3, p0, Lcom/skyhookwireless/_sdkv;->_sdkc:I

    iput-object p4, p0, Lcom/skyhookwireless/_sdkv;->_sdkd:Lcom/skyhookwireless/_sdkub;

    return-void
.end method

.method static _sdka(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x1f

    if-le p0, v0, :cond_1

    const/16 v0, 0x63

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static _sdkb(I)I
    .locals 3

    sget-boolean v0, Lcom/skyhookwireless/_sdkv;->_sdke:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/skyhookwireless/_sdkv;->_sdka(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/_sdkv;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/skyhookwireless/_sdkv;->_sdka(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, -0x71

    :goto_0
    return v0

    :cond_1
    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    goto :goto_0
.end method


# virtual methods
.method public _sdka()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/_sdkv;->_sdkb:I

    return v0
.end method

.method public _sdka(Lcom/skyhookwireless/_sdkv;)I
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkv;->_sdka:Lcom/skyhookwireless/_sdkq;

    iget-object v1, p1, Lcom/skyhookwireless/_sdkv;->_sdka:Lcom/skyhookwireless/_sdkq;

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkq;->_sdka(Lcom/skyhookwireless/_sdkq;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkv;->_sdkd:Lcom/skyhookwireless/_sdkub;

    iget-object v1, p1, Lcom/skyhookwireless/_sdkv;->_sdkd:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkub;->_sdkb(Lcom/skyhookwireless/_sdkub;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/skyhookwireless/_sdkv;->_sdkc:I

    iget v1, p1, Lcom/skyhookwireless/_sdkv;->_sdkc:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/skyhookwireless/_sdkv;->_sdkb:I

    iget v1, p1, Lcom/skyhookwireless/_sdkv;->_sdkb:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public _sdka()Lcom/skyhookwireless/_sdkq;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkv;->_sdka:Lcom/skyhookwireless/_sdkq;

    return-object v0
.end method

.method public _sdkb()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/_sdkv;->_sdkc:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/skyhookwireless/_sdkv;

    invoke-virtual {p0, p1}, Lcom/skyhookwireless/_sdkv;->_sdka(Lcom/skyhookwireless/_sdkv;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    check-cast p1, Lcom/skyhookwireless/_sdkv;

    iget-object v0, p0, Lcom/skyhookwireless/_sdkv;->_sdka:Lcom/skyhookwireless/_sdkq;

    iget-object v1, p1, Lcom/skyhookwireless/_sdkv;->_sdka:Lcom/skyhookwireless/_sdkq;

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/skyhookwireless/_sdkv;->_sdkb:I

    iget v1, p1, Lcom/skyhookwireless/_sdkv;->_sdkb:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/skyhookwireless/_sdkv;->_sdkc:I

    iget v1, p1, Lcom/skyhookwireless/_sdkv;->_sdkc:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkv;->_sdkd:Lcom/skyhookwireless/_sdkub;

    iget-object v1, p1, Lcom/skyhookwireless/_sdkv;->_sdkd:Lcom/skyhookwireless/_sdkub;

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/_sdkub;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public getAge()Lcom/skyhookwireless/_sdkub;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkv;->_sdkd:Lcom/skyhookwireless/_sdkub;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/skyhookwireless/_sdkv;->_sdka:Lcom/skyhookwireless/_sdkq;

    invoke-virtual {v0}, Lcom/skyhookwireless/_sdkq;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/skyhookwireless/_sdkv;->_sdkc:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/skyhookwireless/_sdkv;->_sdka:Lcom/skyhookwireless/_sdkq;

    invoke-virtual {v1}, Lcom/skyhookwireless/_sdkq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/skyhookwireless/_sdkv;->_sdkc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
