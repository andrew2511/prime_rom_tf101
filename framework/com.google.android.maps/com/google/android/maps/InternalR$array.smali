.class final Lcom/google/android/maps/InternalR$array;
.super Ljava/lang/Object;
.source "InternalR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/InternalR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "array"
.end annotation


# static fields
.field public static final maps_starting_lat_lng:I

.field public static final maps_starting_zoom:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    const-string v0, "maps_starting_lat_lng"

    invoke-static {v0}, Lcom/google/android/maps/InternalR$array;->get(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/maps/InternalR$array;->maps_starting_lat_lng:I

    .line 90
    const-string v0, "maps_starting_zoom"

    invoke-static {v0}, Lcom/google/android/maps/InternalR$array;->get(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/maps/InternalR$array;->maps_starting_zoom:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get(Ljava/lang/String;)I
    .registers 2
    .parameter "fieldName"

    .prologue
    .line 86
    const-class v0, Lcom/android/internal/R$array;

    #calls: Lcom/google/android/maps/InternalR;->get(Ljava/lang/Class;Ljava/lang/String;)I
    invoke-static {v0, p0}, Lcom/google/android/maps/InternalR;->access$000(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
