.class public final enum Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;
.super Ljava/lang/Enum;
.source "AndroidImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoScale"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

.field public static final enum AUTO_SCALE_DISABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

.field public static final enum AUTO_SCALE_ENABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    const-string v1, "AUTO_SCALE_ENABLED"

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_ENABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    .line 35
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    const-string v1, "AUTO_SCALE_DISABLED"

    invoke-direct {v0, v1, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_ENABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    aput-object v1, v0, v2

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    aput-object v1, v0, v3

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->$VALUES:[Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;
    .registers 2
    .parameter "name"

    .prologue
    .line 33
    const-class v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    return-object p0
.end method

.method public static values()[Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->$VALUES:[Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    invoke-virtual {v0}, [Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    return-object v0
.end method
