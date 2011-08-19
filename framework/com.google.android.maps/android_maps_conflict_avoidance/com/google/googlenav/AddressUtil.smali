.class public Landroid_maps_conflict_avoidance/com/google/googlenav/AddressUtil;
.super Ljava/lang/Object;
.source "AddressUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getAddressLine(IILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 4
    .parameter "addressLineIndex"
    .parameter "number"
    .parameter "proto"

    .prologue
    .line 26
    if-nez p2, :cond_5

    .line 27
    const-string v0, ""

    .line 29
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p2, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-le v0, p1, :cond_10

    invoke-virtual {p2, p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_10
    const-string v0, ""

    goto :goto_4
.end method
