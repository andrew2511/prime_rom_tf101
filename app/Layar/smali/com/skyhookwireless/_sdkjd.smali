.class public final Lcom/skyhookwireless/_sdkjd;
.super Ljava/util/AbstractList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private _sdka:I

.field private _sdkb:I

.field private final _sdkc:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v12, 0x49

    const/16 v11, 0x47

    const/16 v10, 0x42

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bwsx"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_5

    move v3, v8

    :cond_0
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v13, v3

    move-object v3, v1

    move v1, v13

    :goto_0
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_0

    move v7, v11

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

    move-object v13, v3

    move v3, v1

    move-object v1, v13

    :goto_2
    if-gt v2, v3, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "b\'!,g+\'n\u0003wn"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_4

    move v3, v8

    :cond_2
    move v4, v2

    move v5, v3

    move-object v2, v1

    move v13, v3

    move-object v3, v1

    move v1, v13

    :goto_3
    aget-char v6, v2, v1

    rem-int/lit8 v7, v5, 0x5

    packed-switch v7, :pswitch_data_1

    move v7, v11

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

    move-object v13, v3

    move v3, v1

    move-object v1, v13

    :goto_5
    if-gt v2, v3, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    sput-object v0, Lcom/skyhookwireless/_sdkjd;->z:[Ljava/lang/String;

    return-void

    :pswitch_0
    move v7, v10

    goto :goto_1

    :pswitch_1
    move v7, v12

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x4e

    goto :goto_1

    :pswitch_3
    const/16 v7, 0x58

    goto :goto_1

    :pswitch_4
    move v7, v10

    goto :goto_4

    :pswitch_5
    move v7, v12

    goto :goto_4

    :pswitch_6
    const/16 v7, 0x4e

    goto :goto_4

    :pswitch_7
    const/16 v7, 0x58

    goto :goto_4

    :cond_4
    move v3, v8

    goto :goto_5

    :cond_5
    move v3, v8

    goto :goto_2

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
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    iget-object v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkb:I

    return-void
.end method


# virtual methods
.method public _sdka()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    iget v1, p0, Lcom/skyhookwireless/_sdkjd;->_sdkb:I

    iget v2, p0, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public _sdkb()I
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    iget v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkb:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkb:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    array-length v0, v0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkb:I

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    iget v1, p0, Lcom/skyhookwireless/_sdkjd;->_sdkb:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    iget-object v1, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    :cond_1
    return v2
.end method

.method public clear()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/skyhookwireless/_sdkfc;->_sdkb:Z

    move v1, v4

    :cond_0
    iget-object v2, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_2

    if-eqz v0, :cond_0

    :cond_1
    iput v4, p0, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    iget-object v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkb:I

    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/skyhookwireless/_sdkfc;->_sdkb:Z

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    :try_start_0
    check-cast p1, Lcom/skyhookwireless/_sdkjd;

    iget v1, p0, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    iget v2, p1, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    if-eq v1, v2, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v1, v4

    :cond_2
    iget v2, p0, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/skyhookwireless/_sdkjd;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/skyhookwireless/_sdkjd;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v0, :cond_5

    if-nez v2, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_2

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkjd;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    iget v1, p0, Lcom/skyhookwireless/_sdkjd;->_sdkb:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    iget v1, p0, Lcom/skyhookwireless/_sdkjd;->_sdkb:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    iget v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/skyhookwireless/_sdkjd;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdkb:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/skyhookwireless/_sdkjd;->_sdkc:[Ljava/lang/Object;

    aput-object p2, v2, v0

    return-object v1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/_sdkjd;->_sdka:I

    return v0
.end method
