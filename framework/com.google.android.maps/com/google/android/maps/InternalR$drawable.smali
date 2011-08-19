.class final Lcom/google/android/maps/InternalR$drawable;
.super Ljava/lang/Object;
.source "InternalR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/InternalR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "drawable"
.end annotation


# static fields
.field public static final compass_arrow:I

.field public static final compass_base:I

.field public static final ic_maps_indicator_current_position_anim:I

.field public static final loading_tile_android:I

.field public static final maps_google_logo:I

.field public static final no_tile_256:I

.field public static final reticle:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    const-string v0, "compass_arrow"

    invoke-static {v0}, Lcom/google/android/maps/InternalR$drawable;->get(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/maps/InternalR$drawable;->compass_arrow:I

    .line 116
    const-string v0, "compass_base"

    invoke-static {v0}, Lcom/google/android/maps/InternalR$drawable;->get(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/maps/InternalR$drawable;->compass_base:I

    .line 117
    const-string v0, "ic_maps_indicator_current_position_anim"

    invoke-static {v0}, Lcom/google/android/maps/InternalR$drawable;->get(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/maps/InternalR$drawable;->ic_maps_indicator_current_position_anim:I

    .line 119
    const-string v0, "loading_tile_android"

    invoke-static {v0}, Lcom/google/android/maps/InternalR$drawable;->get(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/maps/InternalR$drawable;->loading_tile_android:I

    .line 120
    const-string v0, "maps_google_logo"

    invoke-static {v0}, Lcom/google/android/maps/InternalR$drawable;->get(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/maps/InternalR$drawable;->maps_google_logo:I

    .line 121
    const-string v0, "no_tile_256"

    invoke-static {v0}, Lcom/google/android/maps/InternalR$drawable;->get(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/maps/InternalR$drawable;->no_tile_256:I

    .line 122
    const-string v0, "reticle"

    invoke-static {v0}, Lcom/google/android/maps/InternalR$drawable;->get(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/maps/InternalR$drawable;->reticle:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get(Ljava/lang/String;)I
    .registers 2
    .parameter "fieldName"

    .prologue
    .line 112
    const-class v0, Lcom/android/internal/R$drawable;

    #calls: Lcom/google/android/maps/InternalR;->get(Ljava/lang/Class;Ljava/lang/String;)I
    invoke-static {v0, p0}, Lcom/google/android/maps/InternalR;->access$000(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
