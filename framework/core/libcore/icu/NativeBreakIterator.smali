.class public final Llibcore/icu/NativeBreakIterator;
.super Ljava/lang/Object;
.source "NativeBreakIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BI_CHAR_INSTANCE:I = 0x1

.field private static final BI_LINE_INSTANCE:I = 0x3

.field private static final BI_SENT_INSTANCE:I = 0x4

.field private static final BI_WORD_INSTANCE:I = 0x2


# instance fields
.field private final address:I

.field private charIter:Ljava/text/CharacterIterator;

.field private final type:I


# direct methods
.method private constructor <init>(II)V
    .registers 5
    .parameter "address"
    .parameter "type"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Llibcore/icu/NativeBreakIterator;->address:I

    .line 36
    iput p2, p0, Llibcore/icu/NativeBreakIterator;->type:I

    .line 37
    new-instance v0, Ljava/text/StringCharacterIterator;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    .line 38
    return-void
.end method

.method private static native cloneImpl(I)I
.end method

.method private static native closeBreakIteratorImpl(I)V
.end method

.method private static native currentImpl(I)I
.end method

.method private static native firstImpl(I)I
.end method

.method private static native followingImpl(II)I
.end method

.method public static getCharacterInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;
    .registers 4
    .parameter "where"

    .prologue
    .line 131
    new-instance v0, Llibcore/icu/NativeBreakIterator;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeBreakIterator;->getCharacterInstanceImpl(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;-><init>(II)V

    return-object v0
.end method

.method private static native getCharacterInstanceImpl(Ljava/lang/String;)I
.end method

.method public static getLineInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;
    .registers 4
    .parameter "where"

    .prologue
    .line 135
    new-instance v0, Llibcore/icu/NativeBreakIterator;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeBreakIterator;->getLineInstanceImpl(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;-><init>(II)V

    return-object v0
.end method

.method private static native getLineInstanceImpl(Ljava/lang/String;)I
.end method

.method public static getSentenceInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;
    .registers 4
    .parameter "where"

    .prologue
    .line 139
    new-instance v0, Llibcore/icu/NativeBreakIterator;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeBreakIterator;->getSentenceInstanceImpl(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;-><init>(II)V

    return-object v0
.end method

.method private static native getSentenceInstanceImpl(Ljava/lang/String;)I
.end method

.method public static getWordInstance(Ljava/util/Locale;)Llibcore/icu/NativeBreakIterator;
    .registers 4
    .parameter "where"

    .prologue
    .line 143
    new-instance v0, Llibcore/icu/NativeBreakIterator;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/NativeBreakIterator;->getWordInstanceImpl(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;-><init>(II)V

    return-object v0
.end method

.method private static native getWordInstanceImpl(Ljava/lang/String;)I
.end method

.method private static native isBoundaryImpl(II)Z
.end method

.method private static native lastImpl(I)I
.end method

.method private static native nextImpl(II)I
.end method

.method private static native precedingImpl(II)I
.end method

.method private static native previousImpl(I)I
.end method

.method private static native setTextImpl(ILjava/lang/String;)V
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 42
    iget v2, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v2}, Llibcore/icu/NativeBreakIterator;->cloneImpl(I)I

    move-result v1

    .line 43
    .local v1, cloneAddr:I
    new-instance v0, Llibcore/icu/NativeBreakIterator;

    iget v2, p0, Llibcore/icu/NativeBreakIterator;->type:I

    invoke-direct {v0, v1, v2}, Llibcore/icu/NativeBreakIterator;-><init>(II)V

    .line 45
    .local v0, clone:Llibcore/icu/NativeBreakIterator;
    iget-object v2, p0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    iput-object v2, v0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    .line 46
    return-object v0
.end method

.method public current()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0}, Llibcore/icu/NativeBreakIterator;->currentImpl(I)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 59
    :goto_5
    return v2

    .line 54
    :cond_6
    instance-of v2, p1, Llibcore/icu/NativeBreakIterator;

    if-nez v2, :cond_c

    move v2, v4

    .line 55
    goto :goto_5

    .line 58
    :cond_c
    move-object v0, p1

    check-cast v0, Llibcore/icu/NativeBreakIterator;

    move-object v1, v0

    .line 59
    .local v1, rhs:Llibcore/icu/NativeBreakIterator;
    iget v2, p0, Llibcore/icu/NativeBreakIterator;->type:I

    iget v3, v1, Llibcore/icu/NativeBreakIterator;->type:I

    if-ne v2, v3, :cond_22

    iget-object v2, p0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    iget-object v3, v1, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move v2, v5

    goto :goto_5

    :cond_22
    move v2, v4

    goto :goto_5
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0}, Llibcore/icu/NativeBreakIterator;->closeBreakIteratorImpl(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 71
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 73
    return-void

    .line 71
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public first()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0}, Llibcore/icu/NativeBreakIterator;->firstImpl(I)I

    move-result v0

    return v0
.end method

.method public following(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 84
    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativeBreakIterator;->followingImpl(II)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/text/CharacterIterator;
    .registers 3

    .prologue
    .line 88
    iget v1, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v1}, Llibcore/icu/NativeBreakIterator;->currentImpl(I)I

    move-result v0

    .line 89
    .local v0, newLoc:I
    iget-object v1, p0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    invoke-interface {v1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 90
    iget-object v1, p0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    return-object v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 64
    const/16 v0, 0x2a

    return v0
.end method

.method public isBoundary(I)Z
    .registers 3
    .parameter "offset"

    .prologue
    .line 123
    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativeBreakIterator;->isBoundaryImpl(II)Z

    move-result v0

    return v0
.end method

.method public last()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0}, Llibcore/icu/NativeBreakIterator;->lastImpl(I)I

    move-result v0

    return v0
.end method

.method public next()I
    .registers 3

    .prologue
    .line 102
    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llibcore/icu/NativeBreakIterator;->nextImpl(II)I

    move-result v0

    return v0
.end method

.method public next(I)I
    .registers 3
    .parameter "n"

    .prologue
    .line 98
    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativeBreakIterator;->nextImpl(II)I

    move-result v0

    return v0
.end method

.method public preceding(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 127
    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0, p1}, Llibcore/icu/NativeBreakIterator;->precedingImpl(II)I

    move-result v0

    return v0
.end method

.method public previous()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-static {v0}, Llibcore/icu/NativeBreakIterator;->previousImpl(I)I

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter "newText"

    .prologue
    .line 119
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Llibcore/icu/NativeBreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 120
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .registers 6
    .parameter "newText"

    .prologue
    .line 110
    iput-object p1, p0, Llibcore/icu/NativeBreakIterator;->charIter:Ljava/text/CharacterIterator;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    .local v0, c:C
    :goto_b
    const v2, 0xffff

    if-eq v0, v2, :cond_18

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_b

    .line 115
    :cond_18
    iget v2, p0, Llibcore/icu/NativeBreakIterator;->address:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Llibcore/icu/NativeBreakIterator;->setTextImpl(ILjava/lang/String;)V

    .line 116
    return-void
.end method
