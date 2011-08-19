.class public Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;
.super Lcom/mobipocket/common/library/reader/book/MetaDataCollection;
.source "FullMetaDataCollection.java"


# instance fields
.field public coverRecord:I

.field public coverThumbRecord:I

.field public startReadingPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;-><init>()V

    .line 17
    iput v0, p0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->coverRecord:I

    .line 23
    iput v0, p0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->coverThumbRecord:I

    .line 29
    iput v0, p0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->startReadingPosition:I

    return-void
.end method
