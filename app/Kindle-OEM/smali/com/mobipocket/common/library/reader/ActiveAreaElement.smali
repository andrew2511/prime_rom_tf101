.class Lcom/mobipocket/common/library/reader/ActiveAreaElement;
.super Lcom/mobipocket/common/library/reader/FlowElement;
.source "ActiveAreaElement.java"


# instance fields
.field public activeArea:Lcom/mobipocket/common/library/reader/ActiveArea;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/ActiveArea;Lcom/mobipocket/common/parser/styles/StyleDescriptor;I)V
    .locals 1
    .parameter "activeArea"
    .parameter "styleDescriptor"
    .parameter "bookPosition"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/FlowElement;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->activeArea:Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 23
    invoke-virtual {p0, p2}, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->setHeight(I)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->setBaseLineHeight(I)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->setDescentHeight(I)V

    .line 27
    invoke-virtual {p0, p3}, Lcom/mobipocket/common/library/reader/ActiveAreaElement;->setLastSubElementBookPosition(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public isActiveAreaElement()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method
