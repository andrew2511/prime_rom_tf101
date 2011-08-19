.class public Lcom/mobipocket/common/library/reader/Range;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field begin:I

.field end:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/mobipocket/common/library/reader/Range;->begin:I

    .line 15
    iput p2, p0, Lcom/mobipocket/common/library/reader/Range;->end:I

    .line 16
    return-void
.end method
