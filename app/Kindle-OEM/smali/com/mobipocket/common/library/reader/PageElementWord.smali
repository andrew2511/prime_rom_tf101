.class public Lcom/mobipocket/common/library/reader/PageElementWord;
.super Lcom/mobipocket/common/library/reader/RenderedPageElement;
.source "PageElementWord.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/util/Vector;Ljava/lang/String;)V
    .locals 0
    .parameter "beginPositionId"
    .parameter "positionId"
    .parameter "positions"
    .parameter "text"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/RenderedPageElement;-><init>(IILjava/util/Vector;)V

    .line 21
    iput-object p4, p0, Lcom/mobipocket/common/library/reader/PageElementWord;->text:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageElementWord;->text:Ljava/lang/String;

    return-object v0
.end method
