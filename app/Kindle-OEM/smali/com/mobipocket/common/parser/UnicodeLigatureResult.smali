.class public Lcom/mobipocket/common/parser/UnicodeLigatureResult;
.super Ljava/lang/Object;
.source "UnicodeLigatureResult.java"


# instance fields
.field public inSize:I

.field public out:[C


# direct methods
.method public constructor <init>(IC)V
    .locals 2
    .parameter "paramInSize"
    .parameter "ch"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/mobipocket/common/parser/UnicodeLigatureResult;->out:[C

    .line 21
    iget-object v0, p0, Lcom/mobipocket/common/parser/UnicodeLigatureResult;->out:[C

    const/4 v1, 0x0

    aput-char p2, v0, v1

    .line 23
    iput p1, p0, Lcom/mobipocket/common/parser/UnicodeLigatureResult;->inSize:I

    .line 24
    return-void
.end method

.method public constructor <init>(ICC)V
    .locals 2
    .parameter "paramInSize"
    .parameter "first"
    .parameter "second"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/mobipocket/common/parser/UnicodeLigatureResult;->out:[C

    .line 12
    iget-object v0, p0, Lcom/mobipocket/common/parser/UnicodeLigatureResult;->out:[C

    const/4 v1, 0x0

    aput-char p2, v0, v1

    .line 13
    iget-object v0, p0, Lcom/mobipocket/common/parser/UnicodeLigatureResult;->out:[C

    const/4 v1, 0x1

    aput-char p3, v0, v1

    .line 15
    iput p1, p0, Lcom/mobipocket/common/parser/UnicodeLigatureResult;->inSize:I

    .line 16
    return-void
.end method
