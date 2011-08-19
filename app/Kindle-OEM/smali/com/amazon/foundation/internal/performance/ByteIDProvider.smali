.class Lcom/amazon/foundation/internal/performance/ByteIDProvider;
.super Ljava/lang/Object;
.source "ByteIDProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/foundation/internal/performance/ByteIDProvider$1;,
        Lcom/amazon/foundation/internal/performance/ByteIDProvider$CollectionIterator;
    }
.end annotation


# static fields
.field private static final MAX_NUM_ITEMS:I = 0x7f


# instance fields
.field private final items:[Ljava/lang/Object;

.field private numItems:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/16 v0, 0x7f

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->items:[Ljava/lang/Object;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/foundation/internal/performance/ByteIDProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->numItems:I

    return v0
.end method

.method static synthetic access$100(Lcom/amazon/foundation/internal/performance/ByteIDProvider;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->items:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getNumItems()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->numItems:I

    return v0
.end method

.method public idForItem(Ljava/lang/Object;)B
    .locals 3
    .parameter "item"

    .prologue
    .line 86
    iget v1, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->numItems:I

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_0

    .line 88
    new-instance v1, Ljava/lang/OutOfMemoryError;

    const-string v2, "ID pool exhausted."

    invoke-direct {v1, v2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    iget v1, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->numItems:I

    int-to-byte v0, v1

    .line 92
    .local v0, index:B
    iget-object v1, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->items:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 93
    iget v1, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->numItems:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->numItems:I

    .line 95
    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    return v1
.end method

.method public itemForId(B)Ljava/lang/Object;
    .locals 1
    .parameter "id"

    .prologue
    .line 105
    const/4 v0, 0x1

    sub-int v0, p1, v0

    int-to-byte p1, v0

    .line 107
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->numItems:I

    if-lt p1, v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->items:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/amazon/foundation/internal/performance/ByteIDProvider$CollectionIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/foundation/internal/performance/ByteIDProvider$CollectionIterator;-><init>(Lcom/amazon/foundation/internal/performance/ByteIDProvider;Lcom/amazon/foundation/internal/performance/ByteIDProvider$1;)V

    return-object v0
.end method
