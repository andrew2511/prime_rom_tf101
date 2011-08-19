.class Ljava/text/RuleBasedBreakIterator;
.super Ljava/text/BreakIterator;
.source "RuleBasedBreakIterator.java"


# direct methods
.method constructor <init>(Llibcore/icu/NativeBreakIterator;)V
    .registers 2
    .parameter "iterator"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/text/BreakIterator;-><init>(Llibcore/icu/NativeBreakIterator;)V

    .line 32
    return-void
.end method

.method private validateOffset(I)V
    .registers 4
    .parameter "offset"

    .prologue
    .line 51
    iget-object v1, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v1}, Llibcore/icu/NativeBreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    .line 52
    .local v0, it:Ljava/text/CharacterIterator;
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    if-lt p1, v1, :cond_12

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    if-lt p1, v1, :cond_18

    .line 53
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 55
    :cond_18
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 109
    invoke-super {p0}, Ljava/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedBreakIterator;

    .line 110
    .local v0, cloned:Ljava/text/RuleBasedBreakIterator;
    iget-object v1, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v1}, Llibcore/icu/NativeBreakIterator;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Llibcore/icu/NativeBreakIterator;

    iput-object p0, v0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    .line 111
    return-object v0
.end method

.method public current()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Llibcore/icu/NativeBreakIterator;->current()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 94
    instance-of v0, p1, Ljava/text/RuleBasedBreakIterator;

    if-nez v0, :cond_6

    .line 95
    const/4 v0, 0x0

    .line 97
    .end local p1
    :goto_5
    return v0

    .restart local p1
    :cond_6
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    check-cast p1, Ljava/text/RuleBasedBreakIterator;

    .end local p1
    iget-object v1, p1, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, v1}, Llibcore/icu/NativeBreakIterator;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public first()I
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Llibcore/icu/NativeBreakIterator;->first()I

    move-result v0

    return v0
.end method

.method public following(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/text/RuleBasedBreakIterator;->validateOffset(I)V

    .line 44
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeBreakIterator;->following(I)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/text/CharacterIterator;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Llibcore/icu/NativeBreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Llibcore/icu/NativeBreakIterator;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBoundary(I)Z
    .registers 3
    .parameter "offset"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Ljava/text/RuleBasedBreakIterator;->validateOffset(I)V

    .line 85
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeBreakIterator;->isBoundary(I)Z

    move-result v0

    return v0
.end method

.method public last()I
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Llibcore/icu/NativeBreakIterator;->last()I

    move-result v0

    return v0
.end method

.method public next()I
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Llibcore/icu/NativeBreakIterator;->next()I

    move-result v0

    return v0
.end method

.method public next(I)I
    .registers 3
    .parameter "n"

    .prologue
    .line 70
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeBreakIterator;->next(I)I

    move-result v0

    return v0
.end method

.method public preceding(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/text/RuleBasedBreakIterator;->validateOffset(I)V

    .line 90
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeBreakIterator;->preceding(I)I

    move-result v0

    return v0
.end method

.method public previous()I
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Llibcore/icu/NativeBreakIterator;->previous()I

    move-result v0

    return v0
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .registers 3
    .parameter "newText"

    .prologue
    .line 79
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    .line 80
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0, p1}, Llibcore/icu/NativeBreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Ljava/text/RuleBasedBreakIterator;->wrapped:Llibcore/icu/NativeBreakIterator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
