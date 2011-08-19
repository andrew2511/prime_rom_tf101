.class final Lcom/skyhookwireless/wps/_sdkrb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/skyhookwireless/_sdkjd",
        "<",
        "Lcom/skyhookwireless/_sdkzb;",
        ">;>;"
    }
.end annotation


# static fields
.field static final _sdkd:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field private final _sdka:I

.field private _sdkb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkjd",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _sdkc:Lcom/skyhookwireless/wps/_sdkmc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/skyhookwireless/wps/_sdkmc",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v12, 0x46

    const/16 v11, 0x33

    const/16 v10, 0x1b

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u001b\u0011"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_6

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

    const-string v1, "j;"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    if-gt v2, v9, :cond_5

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

    sput-object v0, Lcom/skyhookwireless/wps/_sdkrb;->z:[Ljava/lang/String;

    const-class v0, Lcom/skyhookwireless/wps/_sdkrb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v9

    :goto_6
    sput-boolean v0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkd:Z

    return-void

    :cond_4
    move v0, v8

    goto :goto_6

    :pswitch_0
    move v7, v12

    goto :goto_1

    :pswitch_1
    move v7, v10

    goto :goto_1

    :pswitch_2
    const/16 v7, 0x78

    goto :goto_1

    :pswitch_3
    move v7, v11

    goto :goto_1

    :pswitch_4
    move v7, v12

    goto :goto_4

    :pswitch_5
    move v7, v10

    goto :goto_4

    :pswitch_6
    const/16 v7, 0x78

    goto :goto_4

    :pswitch_7
    move v7, v11

    goto :goto_4

    :cond_5
    move v3, v8

    goto :goto_5

    :cond_6
    move v3, v8

    goto :goto_2

    nop

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

.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdka:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb:Ljava/util/ArrayList;

    new-instance v0, Lcom/skyhookwireless/wps/_sdkmc;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/skyhookwireless/wps/_sdkmc;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkc:Lcom/skyhookwireless/wps/_sdkmc;

    return-void
.end method

.method static _sdka(Lcom/skyhookwireless/wps/_sdkrb;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static _sdka(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;)Z"
        }
    .end annotation

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    invoke-static {}, Lcom/skyhookwireless/_sdkxc;->_sdkb()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v2

    if-nez v0, :cond_3

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private static _sdka(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    invoke-static {}, Lcom/skyhookwireless/_sdkxc;->_sdkb()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez v0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v6

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdkzb;

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkzb;->_sdka()I

    move-result v4

    if-nez v0, :cond_7

    if-eqz v4, :cond_2

    if-eqz v0, :cond_6

    move v3, v5

    :cond_2
    if-eqz v0, :cond_1

    :cond_3
    move v2, v3

    :goto_0
    if-eqz v2, :cond_4

    move v0, v5

    :goto_1
    return v0

    :cond_4
    if-eqz v0, :cond_0

    :cond_5
    move v0, v6

    goto :goto_1

    :cond_6
    move v2, v5

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_0

    :cond_8
    move v0, v6

    goto :goto_1
.end method

.method static _sdkb(Lcom/skyhookwireless/wps/_sdkrb;)I
    .locals 1

    iget v0, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdka:I

    return v0
.end method

.method static _sdkc(Lcom/skyhookwireless/wps/_sdkrb;)Lcom/skyhookwireless/wps/_sdkmc;
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkc:Lcom/skyhookwireless/wps/_sdkmc;

    return-object v0
.end method


# virtual methods
.method _sdka()I
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method _sdka(Lcom/skyhookwireless/_sdkzb;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/_sdkzb;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkc:Lcom/skyhookwireless/wps/_sdkmc;

    sget-object v1, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    move-object v0, p0

    goto :goto_0
.end method

.method _sdkb(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkd:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/skyhookwireless/wps/_sdkrb;->_sdka(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkd:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/skyhookwireless/wps/_sdksb;

    invoke-direct {v1, p0, p1, v0}, Lcom/skyhookwireless/wps/_sdksb;-><init>(Lcom/skyhookwireless/wps/_sdkrb;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkc:Lcom/skyhookwireless/wps/_sdkmc;

    sget-object v3, Lcom/skyhookwireless/_sdkwb;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, p1, v1, v3}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/util/List;Ljava/util/List;Lcom/skyhookwireless/_sdkwc;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkc:Lcom/skyhookwireless/wps/_sdkmc;

    iget-object v1, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/skyhookwireless/wps/_sdkmc;->_sdka(Ljava/util/List;)V

    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkd:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/skyhookwireless/wps/_sdkrb;->_sdka(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    sget-boolean v0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkd:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkc:Lcom/skyhookwireless/wps/_sdkmc;

    invoke-static {v0}, Lcom/skyhookwireless/_sdktc;->_sdka(Ljava/lang/Iterable;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    return-void
.end method

.method _sdkb()Z
    .locals 1

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

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
            "Lcom/skyhookwireless/_sdkjd",
            "<",
            "Lcom/skyhookwireless/_sdkzb;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget v0, Lcom/skyhookwireless/wps/Location;->_sdki:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/skyhookwireless/wps/_sdkrb;->_sdkb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdkjd;

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v6

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/skyhookwireless/_sdkzb;

    if-nez v0, :cond_6

    if-nez v4, :cond_1

    sget-object v4, Lcom/skyhookwireless/wps/_sdkrb;->z:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkzb;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    :cond_2
    sget-object v3, Lcom/skyhookwireless/wps/_sdkrb;->z:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v6, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move v4, v7

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_0
.end method
