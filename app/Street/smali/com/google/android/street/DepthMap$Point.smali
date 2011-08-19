.class public Lcom/google/android/street/DepthMap$Point;
.super Ljava/lang/Object;
.source "DepthMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/DepthMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput p1, p0, Lcom/google/android/street/DepthMap$Point;->x:F

    .line 142
    iput p2, p0, Lcom/google/android/street/DepthMap$Point;->y:F

    .line 143
    return-void
.end method
