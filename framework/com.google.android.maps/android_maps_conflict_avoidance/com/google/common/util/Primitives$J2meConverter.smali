.class Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;
.super Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;
.source "Primitives.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "J2meConverter"
.end annotation


# instance fields
.field private SMALL_INTS:[Ljava/lang/Integer;

.field private SMALL_LONGS:[Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;-><init>()V

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Long;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v0, v7

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v0, v8

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x5

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x6

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x7

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x8

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0x9

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xa

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xb

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xc

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xd

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xe

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/lang/Long;

    const-wide/16 v3, 0xf

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;->SMALL_LONGS:[Ljava/lang/Long;

    .line 46
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Integer;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v7

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v8

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;->SMALL_INTS:[Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public toInteger(I)Ljava/lang/Integer;
    .registers 3
    .parameter "i"

    .prologue
    .line 58
    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;->SMALL_INTS:[Ljava/lang/Integer;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;->SMALL_INTS:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_b
.end method

.method public toLong(J)Ljava/lang/Long;
    .registers 5
    .parameter "l"

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;->SMALL_LONGS:[Ljava/lang/Long;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_14

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;->SMALL_LONGS:[Ljava/lang/Long;

    long-to-int v1, p1

    aget-object v0, v0, v1

    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_13
.end method
