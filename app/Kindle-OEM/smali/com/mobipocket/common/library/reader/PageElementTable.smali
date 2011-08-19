.class public Lcom/mobipocket/common/library/reader/PageElementTable;
.super Lcom/mobipocket/common/library/reader/RenderedPageElement;
.source "PageElementTable.java"


# direct methods
.method constructor <init>(IILjava/util/Vector;)V
    .locals 0
    .parameter "beginPositionId"
    .parameter "positionId"
    .parameter "positions"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/RenderedPageElement;-><init>(IILjava/util/Vector;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x4

    return v0
.end method
