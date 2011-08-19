.class Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
.super Ljava/lang/Object;
.source "NativeDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/NativeDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldPositionIterator"
.end annotation


# static fields
.field private static fields:[Ljava/text/Format$Field;


# instance fields
.field private data:[I

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 593
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/text/Format$Field;

    const/4 v1, 0x0

    sget-object v2, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    aput-object v2, v0, v1

    sput-object v0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->fields:[Ljava/text/Format$Field;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    const/4 v0, -0x3

    iput v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    .line 510
    return-void
.end method

.method synthetic constructor <init>(Llibcore/icu/NativeDecimalFormat$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 505
    invoke-direct {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;-><init>()V

    return-void
.end method

.method static synthetic access$000(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 505
    invoke-static {p0, p1}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->setFieldPosition(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V

    return-void
.end method

.method private checkValid()V
    .registers 3

    .prologue
    .line 569
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    if-eqz v0, :cond_f

    iget v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    if-ltz v0, :cond_f

    iget v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    iget-object v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    array-length v1, v1

    if-ne v0, v1, :cond_15

    .line 570
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 572
    :cond_15
    return-void
.end method

.method public static forFieldPosition(Ljava/text/FieldPosition;)Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;
    .registers 3
    .parameter "fp"

    .prologue
    .line 513
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 514
    new-instance v0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;

    invoke-direct {v0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;-><init>()V

    .line 516
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static getNativeFieldPositionId(Ljava/text/FieldPosition;)I
    .registers 6
    .parameter "fp"

    .prologue
    const/4 v4, -0x1

    .line 526
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getField()I

    move-result v2

    .line 527
    .local v2, id:I
    if-lt v2, v4, :cond_a

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    .line 528
    :cond_a
    const/4 v2, -0x1

    .line 530
    :cond_b
    if-ne v2, v4, :cond_24

    .line 531
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    .line 532
    .local v0, attr:Ljava/text/Format$Field;
    if-eqz v0, :cond_24

    .line 533
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    sget-object v3, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->fields:[Ljava/text/Format$Field;

    array-length v3, v3

    if-ge v1, v3, :cond_24

    .line 534
    sget-object v3, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->fields:[Ljava/text/Format$Field;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/text/Format$Field;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 535
    move v2, v1

    .line 541
    .end local v0           #attr:Ljava/text/Format$Field;
    .end local v1           #i:I
    :cond_24
    return v2

    .line 533
    .restart local v0       #attr:Ljava/text/Format$Field;
    .restart local v1       #i:I
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method private setData([I)V
    .registers 3
    .parameter "data"

    .prologue
    .line 613
    iput-object p1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    .line 614
    const/4 v0, -0x3

    iput v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    .line 615
    return-void
.end method

.method private static setFieldPosition(Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;Ljava/text/FieldPosition;)V
    .registers 4
    .parameter "fpi"
    .parameter "fp"

    .prologue
    .line 545
    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    .line 546
    invoke-static {p1}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->getNativeFieldPositionId(Ljava/text/FieldPosition;)I

    move-result v0

    .line 547
    .local v0, field:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 548
    :cond_b
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 549
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->fieldId()I

    move-result v1

    if-ne v1, v0, :cond_b

    .line 550
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->start()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 551
    invoke-virtual {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 557
    .end local v0           #field:I
    :cond_25
    return-void
.end method


# virtual methods
.method public field()Ljava/text/Format$Field;
    .registers 4

    .prologue
    .line 579
    invoke-direct {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->checkValid()V

    .line 580
    sget-object v0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->fields:[Ljava/text/Format$Field;

    iget-object v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    iget v2, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    aget v1, v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public fieldId()I
    .registers 3

    .prologue
    .line 575
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    aget v0, v0, v1

    return v0
.end method

.method public limit()I
    .registers 3

    .prologue
    .line 589
    invoke-direct {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->checkValid()V

    .line 590
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public next()Z
    .registers 3

    .prologue
    .line 561
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    if-eqz v0, :cond_b

    iget v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    iget-object v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    array-length v1, v1

    if-ne v0, v1, :cond_11

    .line 562
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 564
    :cond_11
    iget v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    .line 565
    iget v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    iget-object v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    array-length v1, v1

    if-ge v0, v1, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public start()I
    .registers 3

    .prologue
    .line 584
    invoke-direct {p0}, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->checkValid()V

    .line 585
    iget-object v0, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->data:[I

    iget v1, p0, Llibcore/icu/NativeDecimalFormat$FieldPositionIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method
