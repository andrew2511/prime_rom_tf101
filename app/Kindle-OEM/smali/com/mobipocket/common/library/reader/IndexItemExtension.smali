.class public Lcom/mobipocket/common/library/reader/IndexItemExtension;
.super Ljava/lang/Object;
.source "IndexItemExtension.java"


# instance fields
.field private pItem:Lcom/mobipocket/common/library/reader/IndexItem;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/IndexItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/IndexItemExtension;->pItem:Lcom/mobipocket/common/library/reader/IndexItem;

    .line 10
    return-void
.end method


# virtual methods
.method public getPos()I
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/IndexItemExtension;->pItem:Lcom/mobipocket/common/library/reader/IndexItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/IndexItem;->getPos()I

    move-result v0

    return v0
.end method
