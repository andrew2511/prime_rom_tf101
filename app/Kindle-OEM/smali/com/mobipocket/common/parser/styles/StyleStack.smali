.class public Lcom/mobipocket/common/parser/styles/StyleStack;
.super Ljava/util/Stack;
.source "StyleStack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    return-void
.end method


# virtual methods
.method public peekAt(I)Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    .locals 2
    .parameter "pos"

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/styles/StyleStack;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/parser/styles/StyleStack;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    return-object p0
.end method
