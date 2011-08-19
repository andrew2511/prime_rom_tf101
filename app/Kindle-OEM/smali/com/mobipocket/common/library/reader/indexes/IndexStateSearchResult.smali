.class public Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;
.super Ljava/lang/Object;
.source "IndexStateSearchResult.java"


# instance fields
.field public matchType:I

.field public state:Lcom/mobipocket/common/library/reader/indexes/IndexState;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)V
    .locals 1
    .parameter "state"
    .parameter "matchType"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;->state:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    .line 14
    iput p2, p0, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;->matchType:I

    .line 15
    return-void
.end method
