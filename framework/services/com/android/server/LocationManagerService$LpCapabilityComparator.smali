.class Lcom/android/server/LocationManagerService$LpCapabilityComparator;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LpCapabilityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/location/LocationProviderInterface;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALTITUDE_SCORE:I = 0x4

.field private static final BEARING_SCORE:I = 0x4

.field private static final SPEED_SCORE:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 724
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method

.method private score(Lcom/android/server/location/LocationProviderInterface;)I
    .registers 6
    .parameter "p"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 731
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->supportsAltitude()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v3

    :goto_9
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->supportsBearing()Z

    move-result v1

    if-eqz v1, :cond_1c

    move v1, v3

    :goto_10
    add-int/2addr v0, v1

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->supportsSpeed()Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v3

    :goto_18
    add-int/2addr v0, v1

    return v0

    :cond_1a
    move v0, v2

    goto :goto_9

    :cond_1c
    move v1, v2

    goto :goto_10

    :cond_1e
    move v1, v2

    goto :goto_18
.end method


# virtual methods
.method public compare(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)I
    .registers 5
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 737
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->score(Lcom/android/server/location/LocationProviderInterface;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->score(Lcom/android/server/location/LocationProviderInterface;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 724
    check-cast p1, Lcom/android/server/location/LocationProviderInterface;

    .end local p1
    check-cast p2, Lcom/android/server/location/LocationProviderInterface;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->compare(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/android/server/location/LocationProviderInterface;Lcom/android/server/location/LocationProviderInterface;)Z
    .registers 5
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->score(Lcom/android/server/location/LocationProviderInterface;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;->score(Lcom/android/server/location/LocationProviderInterface;)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
