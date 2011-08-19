.class Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;
.super Ljava/lang/Object;
.source "ExtraHeaderData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XhdParameters"
.end annotation


# instance fields
.field count:I

.field encoding:I

.field mbph:Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

.field pointed:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;

.field present:Z

.field range:Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$Range;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$XhdParameters;-><init>()V

    return-void
.end method
