.class public Lcom/amazon/kcp/reader/models/internal/CMBPUserLocation;
.super Ljava/lang/Object;
.source "CMBPUserLocation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAmznUserLocationFromPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 19
    invoke-static {p0}, Lcom/mobipocket/common/library/reader/BookViewManager;->getUserLocationFromPosition(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static getPositionFromAmznUserLocation(I)I
    .locals 1
    .parameter "location"

    .prologue
    .line 29
    mul-int/lit8 v0, p0, 0x64

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->getPositionFromUserLocation(I)I

    move-result v0

    return v0
.end method
