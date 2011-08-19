.class public Lcom/amazon/system/drawing/LineMetrics;
.super Ljava/lang/Object;
.source "LineMetrics.java"


# instance fields
.field public height:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "y"
    .parameter "height"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/amazon/system/drawing/LineMetrics;->y:I

    .line 42
    iput p2, p0, Lcom/amazon/system/drawing/LineMetrics;->height:I

    .line 43
    return-void
.end method
