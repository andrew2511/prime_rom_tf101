.class public Lcom/mobipocket/common/parser/TagStack;
.super Ljava/util/Stack;
.source "TagStack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    return-void
.end method


# virtual methods
.method public peekTag()S
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TagStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 42
    .local v0, value:Ljava/lang/Short;
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1
.end method

.method public peekTagAt(I)S
    .locals 3
    .parameter "pos"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TagStack;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/parser/TagStack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 50
    .local v0, value:Ljava/lang/Short;
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1
.end method

.method public popTag()S
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TagStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 34
    .local v0, value:Ljava/lang/Short;
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1
.end method

.method public push(S)V
    .locals 1
    .parameter

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-super {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public tagElementAt(I)S
    .locals 2
    .parameter "index"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/parser/TagStack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 58
    .local v0, value:Ljava/lang/Short;
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1
.end method
