.class public final Ljava/text/StringCharacterIterator;
.super Ljava/lang/Object;
.source "StringCharacterIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field end:I

.field offset:I

.field start:I

.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    .line 40
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "value"
    .parameter "location"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    .line 60
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    .line 61
    if-ltz p2, :cond_16

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    if-le p2, v0, :cond_1c

    .line 62
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 64
    :cond_1c
    iput p2, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .parameter "value"
    .parameter "start"
    .parameter "end"
    .parameter "location"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    .line 87
    if-ltz p2, :cond_15

    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_15

    if-gt p2, p3, :cond_15

    if-lt p4, p2, :cond_15

    if-le p4, p3, :cond_1b

    .line 89
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 91
    :cond_1b
    iput p2, p0, Ljava/text/StringCharacterIterator;->start:I

    .line 92
    iput p3, p0, Ljava/text/StringCharacterIterator;->end:I

    .line 93
    iput p4, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 94
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 106
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 107
    :catch_5
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public current()C
    .registers 3

    .prologue
    .line 119
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_a

    .line 120
    const v0, 0xffff

    .line 122
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 139
    instance-of v2, p1, Ljava/text/StringCharacterIterator;

    if-nez v2, :cond_7

    move v2, v4

    .line 143
    :goto_6
    return v2

    .line 142
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/text/StringCharacterIterator;

    move-object v1, v0

    .line 143
    .local v1, it:Ljava/text/StringCharacterIterator;
    iget-object v2, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget-object v3, v1, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, p0, Ljava/text/StringCharacterIterator;->start:I

    iget v3, v1, Ljava/text/StringCharacterIterator;->start:I

    if-ne v2, v3, :cond_29

    iget v2, p0, Ljava/text/StringCharacterIterator;->end:I

    iget v3, v1, Ljava/text/StringCharacterIterator;->end:I

    if-ne v2, v3, :cond_29

    iget v2, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v3, v1, Ljava/text/StringCharacterIterator;->offset:I

    if-ne v2, v3, :cond_29

    const/4 v2, 0x1

    goto :goto_6

    :cond_29
    move v2, v4

    goto :goto_6
.end method

.method public first()C
    .registers 3

    .prologue
    .line 155
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_a

    .line 156
    const v0, 0xffff

    .line 159
    :goto_9
    return v0

    .line 158
    :cond_a
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 159
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method public getBeginIndex()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    return v0
.end method

.method public getEndIndex()I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/text/StringCharacterIterator;->start:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public last()C
    .registers 3

    .prologue
    .line 202
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_a

    .line 203
    const v0, 0xffff

    .line 206
    :goto_9
    return v0

    .line 205
    :cond_a
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 206
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method public next()C
    .registers 4

    .prologue
    .line 216
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_10

    .line 217
    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 218
    const v0, 0xffff

    .line 220
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_f
.end method

.method public previous()C
    .registers 4

    .prologue
    .line 230
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->start:I

    if-ne v0, v1, :cond_a

    .line 231
    const v0, 0xffff

    .line 233
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method public setIndex(I)C
    .registers 4
    .parameter "location"

    .prologue
    .line 248
    iget v0, p0, Ljava/text/StringCharacterIterator;->start:I

    if-lt p1, v0, :cond_8

    iget v0, p0, Ljava/text/StringCharacterIterator;->end:I

    if-le p1, v0, :cond_e

    .line 249
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 251
    :cond_e
    iput p1, p0, Ljava/text/StringCharacterIterator;->offset:I

    .line 252
    iget v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iget v1, p0, Ljava/text/StringCharacterIterator;->end:I

    if-ne v0, v1, :cond_1a

    .line 253
    const v0, 0xffff

    .line 255
    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    iget v1, p0, Ljava/text/StringCharacterIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_19
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 266
    iput-object p1, p0, Ljava/text/StringCharacterIterator;->string:Ljava/lang/String;

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/StringCharacterIterator;->offset:I

    iput v0, p0, Ljava/text/StringCharacterIterator;->start:I

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/StringCharacterIterator;->end:I

    .line 269
    return-void
.end method
