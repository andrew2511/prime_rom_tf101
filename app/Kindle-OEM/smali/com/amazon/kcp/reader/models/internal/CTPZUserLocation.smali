.class public Lcom/amazon/kcp/reader/models/internal/CTPZUserLocation;
.super Ljava/lang/Object;
.source "CTPZUserLocation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAmznUserLocationFromPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 17
    mul-int/lit8 v0, p0, 0x3

    add-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static getPositionFromAmznUserLocation(I)I
    .locals 2
    .parameter "location"

    .prologue
    const/16 v1, 0x64

    .line 27
    mul-int/lit8 v0, p0, 0x64

    .line 28
    .local v0, position:I
    if-ge v0, v1, :cond_0

    .line 30
    const/16 v0, 0x64

    .line 33
    :cond_0
    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    return v1
.end method
