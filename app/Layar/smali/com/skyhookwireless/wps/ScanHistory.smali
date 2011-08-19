.class public final Lcom/skyhookwireless/wps/ScanHistory;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/skyhookwireless/wps/_sdkpb;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic _sdkf:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            ">;"
        }
    .end annotation
.end field

.field private _sdkb:I

.field private _sdkc:I

.field private _sdkd:I

.field private final _sdke:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v13, 0x2e

    const/16 v12, 0x2c

    const/16 v11, 0x20

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "zH\u001d\u000c\u001bMA\u0016\u000c\u0005[S\u000c\u000c\u000bAN\u000cM\u0001@\u0000\u0019XHBE\u0019_\u001c\u000eO\u0016IHopXC\u001a\u000eC\u001d@\u0004\u000eT\u0017[\r\\"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_9

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

    const/16 v7, 0x68

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

    const-string v1, "cU\u000bXH@O\u000c\u000c\nK\u0000\u001bM\u0004BE\u001c\u000c\u001fFE\u0016\u000c\u001cFEXD\u0001]T\u0017^\u0011\u000eI\u000b\u000c\rCP\u000cU"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v10, :cond_8

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

    const/16 v7, 0x68

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

    const-string v2, "zH\u001d\u000c\u0005OX+E\u0012K\u0000\u0015Y\u001bZ\u0000\u001aIHIR\u001dM\u001cKRXX\u0000ONXV\r\\OB\u000c"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    if-gt v3, v10, :cond_7

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

    const/16 v8, 0x68

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

    sput-object v0, Lcom/skyhookwireless/wps/ScanHistory;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/wps/ScanHistory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v10

    :goto_9
    sput-boolean v0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkf:Z

    return-void

    :cond_6
    move v0, v9

    goto :goto_9

    :pswitch_0
    move v7, v13

    goto/16 :goto_1

    :pswitch_1
    move v7, v11

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x78

    goto/16 :goto_1

    :pswitch_3
    move v7, v12

    goto/16 :goto_1

    :pswitch_4
    move v7, v13

    goto :goto_4

    :pswitch_5
    move v7, v11

    goto :goto_4

    :pswitch_6
    const/16 v7, 0x78

    goto :goto_4

    :pswitch_7
    move v7, v12

    goto :goto_4

    :pswitch_8
    move v8, v13

    goto :goto_7

    :pswitch_9
    move v8, v11

    goto :goto_7

    :pswitch_a
    const/16 v8, 0x78

    goto :goto_7

    :pswitch_b
    move v8, v12

    goto :goto_7

    :cond_7
    move v4, v9

    goto :goto_8

    :cond_8
    move v3, v9

    goto :goto_5

    :cond_9
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
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdka:Ljava/util/List;

    iput p1, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdke:I

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/ScanHistory;->clear()V

    iget v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdke:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/skyhookwireless/wps/ScanHistory;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdke:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private _sdka()V
    .locals 1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/ScanHistory;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/skyhookwireless/wps/ScanHistory;->_sdka(Ljava/util/Iterator;)V

    return-void
.end method

.method private _sdka(Lcom/skyhookwireless/wps/_sdkpb;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/ScanHistory;->_sdkd(Lcom/skyhookwireless/wps/_sdkpb;)V

    iget-object v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdka:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private _sdka(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkf:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/ScanHistory;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkf:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkpb;

    invoke-direct {p0, v0}, Lcom/skyhookwireless/wps/ScanHistory;->_sdke(Lcom/skyhookwireless/wps/_sdkpb;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method private _sdka(Ljava/util/ListIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkf:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/ScanHistory;->_sdka(Ljava/util/Iterator;)V

    return-void
.end method

.method private static _sdka(Ljava/util/Iterator;Lcom/skyhookwireless/wps/_sdkpb;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            ">;",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            ")Z"
        }
    .end annotation

    sget v1, Lcom/skyhookwireless/wps/Location;->_sdki:I

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {p1, v0}, Lcom/skyhookwireless/wps/_sdkpb;->isSubsetOf(Lcom/skyhookwireless/wps/_sdkpb;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-nez v1, :cond_1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _sdkb()V
    .locals 1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/ScanHistory;->reverseIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/skyhookwireless/wps/ScanHistory;->_sdka(Ljava/util/ListIterator;)V

    return-void
.end method

.method private _sdkb(Lcom/skyhookwireless/wps/_sdkpb;)V
    .locals 4

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->size()I

    move-result v1

    :cond_0
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/ScanHistory;->size()I

    move-result v2

    add-int/2addr v2, v1

    iget v3, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdke:I

    if-le v2, v3, :cond_1

    invoke-direct {p0}, Lcom/skyhookwireless/wps/ScanHistory;->_sdkb()V

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method private _sdkc()V
    .locals 2

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/ScanHistory;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/skyhookwireless/wps/ScanHistory;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/ScanHistory;->getLastScan()Lcom/skyhookwireless/wps/_sdkpb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/skyhookwireless/wps/ScanHistory;->_sdka(Ljava/util/Iterator;Lcom/skyhookwireless/wps/_sdkpb;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/skyhookwireless/wps/ScanHistory;->_sdka()V

    goto :goto_0
.end method

.method private _sdkc(Lcom/skyhookwireless/wps/_sdkpb;)V
    .locals 3

    sget v1, Lcom/skyhookwireless/wps/Location;->_sdki:I

    iget-object v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdka:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/skyhookwireless/wps/_sdkpb;

    invoke-virtual {v0, p1}, Lcom/skyhookwireless/wps/_sdkpb;->isSubsetOf(Lcom/skyhookwireless/wps/_sdkpb;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/skyhookwireless/wps/ScanHistory;->_sdka(Ljava/util/ListIterator;)V

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method private _sdkd(Lcom/skyhookwireless/wps/_sdkpb;)V
    .locals 2

    iget v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkb:I

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkb:I

    iget v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkc:I

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkc:I

    iget v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkd:I

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getGpsLocations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkd:I

    return-void
.end method

.method private _sdke(Lcom/skyhookwireless/wps/_sdkpb;)V
    .locals 2

    iget v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkb:I

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getAPs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkb:I

    iget v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkc:I

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getCells()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkc:I

    iget v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkd:I

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->getGpsLocations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkd:I

    return-void
.end method


# virtual methods
.method public add(Lcom/skyhookwireless/wps/_sdkpb;)V
    .locals 3

    invoke-virtual {p1}, Lcom/skyhookwireless/wps/_sdkpb;->hasBeacons()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/skyhookwireless/wps/ScanHistory;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/skyhookwireless/wps/ScanHistory;->_sdkc()V

    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/ScanHistory;->_sdkc(Lcom/skyhookwireless/wps/_sdkpb;)V

    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/ScanHistory;->_sdkb(Lcom/skyhookwireless/wps/_sdkpb;)V

    invoke-direct {p0, p1}, Lcom/skyhookwireless/wps/ScanHistory;->_sdka(Lcom/skyhookwireless/wps/_sdkpb;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdka:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkd:I

    iput v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkc:I

    iput v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkb:I

    return-void
.end method

.method public getLastScan()Lcom/skyhookwireless/wps/_sdkpb;
    .locals 3

    iget-object v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdka:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/skyhookwireless/wps/ScanHistory;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdka:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/wps/_sdkpb;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdka:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdka:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public numAPs()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkb:I

    return v0
.end method

.method public numCells()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkc:I

    return v0
.end method

.method public numGpsLocations()I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdkd:I

    return v0
.end method

.method public reverseIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/skyhookwireless/wps/_sdkpb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdka:Ljava/util/List;

    iget-object v1, p0, Lcom/skyhookwireless/wps/ScanHistory;->_sdka:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/ScanHistory;->numAPs()I

    move-result v0

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/ScanHistory;->numCells()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/skyhookwireless/wps/ScanHistory;->numGpsLocations()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
