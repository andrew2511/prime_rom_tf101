.class public final Ljava/text/CollationElementIterator;
.super Ljava/lang/Object;
.source "CollationElementIterator.java"


# static fields
.field public static final NULLORDER:I = -0x1


# instance fields
.field private icuIterator:Llibcore/icu/CollationElementIteratorICU;


# direct methods
.method constructor <init>(Llibcore/icu/CollationElementIteratorICU;)V
    .registers 2
    .parameter "iterator"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    .line 61
    return-void
.end method

.method public static final primaryOrder(I)I
    .registers 2
    .parameter "order"

    .prologue
    .line 135
    invoke-static {p0}, Llibcore/icu/CollationElementIteratorICU;->primaryOrder(I)I

    move-result v0

    return v0
.end method

.method public static final secondaryOrder(I)S
    .registers 2
    .parameter "order"

    .prologue
    .line 160
    invoke-static {p0}, Llibcore/icu/CollationElementIteratorICU;->secondaryOrder(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static final tertiaryOrder(I)S
    .registers 2
    .parameter "order"

    .prologue
    .line 220
    invoke-static {p0}, Llibcore/icu/CollationElementIteratorICU;->tertiaryOrder(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method public getMaxExpansion(I)I
    .registers 3
    .parameter "order"

    .prologue
    .line 76
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0, p1}, Llibcore/icu/CollationElementIteratorICU;->getMaxExpansion(I)I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0}, Llibcore/icu/CollationElementIteratorICU;->getOffset()I

    move-result v0

    return v0
.end method

.method public next()I
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0}, Llibcore/icu/CollationElementIteratorICU;->next()I

    move-result v0

    return v0
.end method

.method public previous()I
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0}, Llibcore/icu/CollationElementIteratorICU;->previous()I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0}, Llibcore/icu/CollationElementIteratorICU;->reset()V

    .line 149
    return-void
.end method

.method public setOffset(I)V
    .registers 3
    .parameter "newOffset"

    .prologue
    .line 186
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0, p1}, Llibcore/icu/CollationElementIteratorICU;->setOffset(I)V

    .line 187
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 208
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0, p1}, Llibcore/icu/CollationElementIteratorICU;->setText(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 197
    iget-object v0, p0, Ljava/text/CollationElementIterator;->icuIterator:Llibcore/icu/CollationElementIteratorICU;

    invoke-virtual {v0, p1}, Llibcore/icu/CollationElementIteratorICU;->setText(Ljava/text/CharacterIterator;)V

    .line 198
    return-void
.end method
