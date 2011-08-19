.class Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;
.super Ljava/lang/Object;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleCounter"
.end annotation


# instance fields
.field public count:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    return-void
.end method

.method synthetic constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 373
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;-><init>()V

    return-void
.end method
