.class Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;
.super Ljava/lang/Object;
.source "ExtraHeaderData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation


# instance fields
.field length:I

.field start:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .parameter "start_"
    .parameter "length_"

    .prologue
    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput p1, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    .line 858
    iput p2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    .line 859
    return-void
.end method


# virtual methods
.method enlargeToContain(Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;)V
    .locals 6
    .parameter "other"

    .prologue
    .line 864
    iget v4, p1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    if-nez v4, :cond_0

    .line 894
    :goto_0
    return-void

    .line 868
    :cond_0
    iget v4, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    if-nez v4, :cond_1

    .line 870
    iget v4, p1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    iput v4, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    .line 871
    iget v4, p1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    iput v4, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    goto :goto_0

    .line 876
    :cond_1
    iget v2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    .line 877
    .local v2, old_begin:I
    iget v4, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    iget v5, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    add-int v3, v4, v5

    .line 879
    .local v3, old_end:I
    iget v0, p1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    .line 880
    .local v0, new_begin:I
    iget v4, p1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    iget v5, p1, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    add-int v1, v4, v5

    .line 882
    .local v1, new_end:I
    if-ge v0, v2, :cond_2

    .line 884
    move v2, v0

    .line 886
    :cond_2
    if-le v1, v3, :cond_3

    .line 888
    move v3, v1

    .line 891
    :cond_3
    iput v2, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->start:I

    .line 892
    sub-int v4, v3, v2

    iput v4, p0, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;->length:I

    goto :goto_0
.end method
