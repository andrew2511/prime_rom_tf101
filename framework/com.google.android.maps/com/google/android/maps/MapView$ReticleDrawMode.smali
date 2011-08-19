.class public final enum Lcom/google/android/maps/MapView$ReticleDrawMode;
.super Ljava/lang/Enum;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReticleDrawMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/maps/MapView$ReticleDrawMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/maps/MapView$ReticleDrawMode;

.field public static final enum DRAW_RETICLE_NEVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

.field public static final enum DRAW_RETICLE_OVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

.field public static final enum DRAW_RETICLE_UNDER:Lcom/google/android/maps/MapView$ReticleDrawMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    new-instance v0, Lcom/google/android/maps/MapView$ReticleDrawMode;

    const-string v1, "DRAW_RETICLE_OVER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/MapView$ReticleDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_OVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    .line 127
    new-instance v0, Lcom/google/android/maps/MapView$ReticleDrawMode;

    const-string v1, "DRAW_RETICLE_UNDER"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/MapView$ReticleDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_UNDER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    .line 130
    new-instance v0, Lcom/google/android/maps/MapView$ReticleDrawMode;

    const-string v1, "DRAW_RETICLE_NEVER"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/MapView$ReticleDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_NEVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/MapView$ReticleDrawMode;

    sget-object v1, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_OVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_UNDER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_NEVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/maps/MapView$ReticleDrawMode;->$VALUES:[Lcom/google/android/maps/MapView$ReticleDrawMode;

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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/MapView$ReticleDrawMode;
    .registers 2
    .parameter "name"

    .prologue
    .line 121
    const-class v0, Lcom/google/android/maps/MapView$ReticleDrawMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/maps/MapView$ReticleDrawMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/maps/MapView$ReticleDrawMode;
    .registers 1

    .prologue
    .line 121
    sget-object v0, Lcom/google/android/maps/MapView$ReticleDrawMode;->$VALUES:[Lcom/google/android/maps/MapView$ReticleDrawMode;

    invoke-virtual {v0}, [Lcom/google/android/maps/MapView$ReticleDrawMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/MapView$ReticleDrawMode;

    return-object v0
.end method
