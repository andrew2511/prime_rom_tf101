.class abstract Ljava/lang/AbstractStringBuilder;
.super Ljava/lang/Object;
.source "AbstractStringBuilder.java"


# static fields
.field static final INITIAL_CAPACITY:I = 0x10


# instance fields
.field private count:I

.field private shared:Z

.field private value:[C


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 76
    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-gez p1, :cond_b

    .line 80
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 82
    :cond_b
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 87
    iput-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 88
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 90
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->_getChars(II[CI)V

    .line 92
    return-void
.end method

.method private enlargeBuffer(I)V
    .registers 7
    .parameter "min"

    .prologue
    const/4 v4, 0x0

    .line 95
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    shr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x2

    .line 96
    .local v0, newCount:I
    if-le p1, v0, :cond_1d

    move v2, p1

    :goto_f
    new-array v1, v2, [C

    .line 97
    .local v1, newData:[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 99
    iput-boolean v4, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 100
    return-void

    .end local v1           #newData:[C
    :cond_1d
    move v2, v0

    .line 96
    goto :goto_f
.end method

.method private indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;
    .registers 5
    .parameter "index"

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private move(II)V
    .registers 9
    .parameter "size"
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    .line 389
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, v3

    if-lt v2, p1, :cond_33

    .line 390
    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v2, :cond_1a

    .line 392
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v4, p2, p1

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v5, p2

    invoke-static {v2, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    :goto_19
    return-void

    .line 395
    :cond_1a
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v2

    .line 400
    .local v0, newCount:I
    :goto_1d
    new-array v1, v0, [C

    .line 401
    .local v1, newData:[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v5, v1, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v3, p2, p1

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v4, p2

    invoke-static {v2, p2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 405
    iput-boolean v5, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_19

    .line 397
    .end local v0           #newCount:I
    .end local v1           #newData:[C
    :cond_33
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v2, p1

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0       #newCount:I
    goto :goto_1d
.end method

.method private startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final append0(C)V
    .registers 5
    .parameter "ch"

    .prologue
    .line 133
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-ne v0, v1, :cond_e

    .line 134
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 136
    :cond_e
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char p1, v0, v1

    .line 137
    return-void
.end method

.method final append0(Ljava/lang/CharSequence;II)V
    .registers 14
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 154
    if-nez p1, :cond_4

    .line 155
    const-string p1, "null"

    .line 157
    :cond_4
    or-int v7, p2, p3

    if-ltz v7, :cond_10

    if-gt p2, p3, :cond_10

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le p3, v7, :cond_16

    .line 158
    :cond_10
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 161
    :cond_16
    sub-int v4, p3, p2

    .line 162
    .local v4, length:I
    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v5, v7, v4

    .line 163
    .local v5, newCount:I
    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v7, v7

    if-le v5, v7, :cond_34

    .line 164
    invoke-direct {p0, v5}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 170
    :cond_24
    :goto_24
    instance-of v7, p1, Ljava/lang/String;

    if-eqz v7, :cond_46

    .line 171
    check-cast p1, Ljava/lang/String;

    .end local p1
    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v8, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, p2, p3, v7, v8}, Ljava/lang/String;->_getChars(II[CI)V

    .line 182
    :cond_31
    :goto_31
    iput v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 183
    return-void

    .line 165
    .restart local p1
    :cond_34
    iget-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v7, :cond_24

    .line 166
    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v7}, [C->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [C

    iput-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 167
    const/4 v7, 0x0

    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_24

    .line 172
    :cond_46
    instance-of v7, p1, Ljava/lang/AbstractStringBuilder;

    if-eqz v7, :cond_58

    .line 173
    move-object v0, p1

    check-cast v0, Ljava/lang/AbstractStringBuilder;

    move-object v6, v0

    .line 174
    .local v6, other:Ljava/lang/AbstractStringBuilder;
    iget-object v7, v6, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v8, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v9, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v7, p2, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_31

    .line 176
    .end local v6           #other:Ljava/lang/AbstractStringBuilder;
    :cond_58
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 177
    .local v2, j:I
    move v1, p2

    .local v1, i:I
    move v3, v2

    .end local v2           #j:I
    .local v3, j:I
    :goto_5c
    if-ge v1, p3, :cond_31

    .line 178
    iget-object v7, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    aput-char v8, v7, v3

    .line 177
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    goto :goto_5c
.end method

.method final append0(Ljava/lang/String;)V
    .registers 7
    .parameter "string"

    .prologue
    .line 140
    if-nez p1, :cond_6

    .line 141
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->appendNull()V

    .line 151
    :goto_5
    return-void

    .line 144
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 145
    .local v0, length:I
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v1, v2, v0

    .line 146
    .local v1, newCount:I
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    if-le v1, v2, :cond_16

    .line 147
    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 149
    :cond_16
    const/4 v2, 0x0

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->_getChars(II[CI)V

    .line 150
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_5
.end method

.method final append0([C)V
    .registers 7
    .parameter "chars"

    .prologue
    .line 114
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v2, p1

    add-int v0, v1, v2

    .line 115
    .local v0, newCount:I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_d

    .line 116
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 118
    :cond_d
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 120
    return-void
.end method

.method final append0([CII)V
    .registers 7
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 123
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 124
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int v0, v1, p3

    .line 125
    .local v0, newCount:I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_10

    .line 126
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 128
    :cond_10
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 130
    return-void
.end method

.method final appendNull()V
    .registers 6

    .prologue
    const/16 v4, 0x6c

    .line 103
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v1, 0x4

    .line 104
    .local v0, newCount:I
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le v0, v1, :cond_e

    .line 105
    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 107
    :cond_e
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v3, 0x6e

    aput-char v3, v1, v2

    .line 108
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    const/16 v3, 0x75

    aput-char v3, v1, v2

    .line 109
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v4, v1, v2

    .line 110
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    aput-char v4, v1, v2

    .line 111
    return-void
.end method

.method public capacity()I
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .registers 3
    .parameter "index"

    .prologue
    .line 207
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_b

    .line 208
    :cond_6
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 210
    :cond_b
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public codePointAt(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 834
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_b

    .line 835
    :cond_6
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 837
    :cond_b
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 854
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_c

    .line 855
    :cond_7
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 857
    :cond_c
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result v0

    return v0
.end method

.method public codePointCount(II)I
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 878
    if-ltz p1, :cond_8

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_8

    if-le p1, p2, :cond_d

    .line 879
    :cond_8
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 881
    :cond_d
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0
.end method

.method final delete0(II)V
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 222
    if-ltz p1, :cond_3b

    .line 223
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v2, :cond_9

    .line 224
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 226
    :cond_9
    if-ne p2, p1, :cond_c

    .line 243
    :goto_b
    return-void

    .line 229
    :cond_c
    if-le p2, p1, :cond_3b

    .line 230
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v0, v2, p2

    .line 231
    .local v0, length:I
    if-ltz v0, :cond_1f

    .line 232
    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v2, :cond_27

    .line 233
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, p2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    :cond_1f
    :goto_1f
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v3, p2, p1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_b

    .line 235
    :cond_27
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 236
    .local v1, newData:[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 239
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_1f

    .line 246
    .end local v0           #length:I
    .end local v1           #newData:[C
    :cond_3b
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v2

    throw v2
.end method

.method final deleteCharAt0(I)V
    .registers 8
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 250
    if-ltz p1, :cond_8

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v2, :cond_d

    .line 251
    :cond_8
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v2

    throw v2

    .line 253
    :cond_d
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, p1

    sub-int v0, v2, v5

    .line 254
    .local v0, length:I
    if-lez v0, :cond_21

    .line 255
    iget-boolean v2, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v2, :cond_27

    .line 256
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    :cond_21
    :goto_21
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, v5

    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 266
    return-void

    .line 258
    :cond_27
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 259
    .local v1, newData:[C
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v2, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 262
    iput-boolean v4, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_21
.end method

.method public ensureCapacity(I)V
    .registers 4
    .parameter "min"

    .prologue
    .line 281
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le p1, v1, :cond_13

    .line 282
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    .line 283
    .local v0, ourMin:I
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 285
    .end local v0           #ourMin:I
    :cond_13
    return-void
.end method

.method public getChars(II[CI)V
    .registers 7
    .parameter "start"
    .parameter "end"
    .parameter "dst"
    .parameter "dstStart"

    .prologue
    .line 307
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_a

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_a

    if-le p1, p2, :cond_f

    .line 308
    :cond_a
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 310
    :cond_f
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    return-void
.end method

.method final getValue()[C
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .registers 3
    .parameter "string"

    .prologue
    .line 683
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .registers 12
    .parameter "subString"
    .parameter "start"

    .prologue
    const/4 v8, -0x1

    .line 700
    if-gez p2, :cond_4

    .line 701
    const/4 p2, 0x0

    .line 703
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 704
    .local v5, subCount:I
    if-lez v5, :cond_4a

    .line 705
    add-int v6, v5, p2

    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le v6, v7, :cond_12

    move v6, v8

    .line 732
    :goto_11
    return v6

    .line 709
    :cond_12
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 711
    .local v0, firstChar:C
    :goto_17
    move v2, p2

    .line 712
    .local v2, i:I
    const/4 v1, 0x0

    .line 713
    .local v1, found:Z
    :goto_19
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v2, v6, :cond_24

    .line 714
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v6, v6, v2

    if-ne v6, v0, :cond_2e

    .line 715
    const/4 v1, 0x1

    .line 719
    :cond_24
    if-eqz v1, :cond_2c

    add-int v6, v5, v2

    iget v7, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le v6, v7, :cond_31

    :cond_2c
    move v6, v8

    .line 720
    goto :goto_11

    .line 713
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 722
    :cond_31
    move v3, v2

    .local v3, o1:I
    const/4 v4, 0x0

    .line 723
    .local v4, o2:I
    :cond_33
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_43

    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v6, v6, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_33

    .line 726
    :cond_43
    if-ne v4, v5, :cond_47

    move v6, v2

    .line 727
    goto :goto_11

    .line 729
    :cond_47
    add-int/lit8 p2, v2, 0x1

    .line 730
    goto :goto_17

    .line 732
    .end local v0           #firstChar:C
    .end local v1           #found:Z
    .end local v2           #i:I
    .end local v3           #o1:I
    .end local v4           #o2:I
    :cond_4a
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p2, v6, :cond_50

    if-nez p2, :cond_52

    :cond_50
    move v6, p2

    goto :goto_11

    :cond_52
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_11
.end method

.method final insert0(IC)V
    .registers 6
    .parameter "index"
    .parameter "ch"

    .prologue
    .line 341
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_2b

    .line 343
    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_2b
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 346
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    .line 347
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 348
    return-void
.end method

.method final insert0(ILjava/lang/CharSequence;II)V
    .registers 6
    .parameter "index"
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 369
    if-nez p2, :cond_4

    .line 370
    const-string p2, "null"

    .line 372
    :cond_4
    or-int v0, p1, p3

    or-int/2addr v0, p4

    if-ltz v0, :cond_15

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_15

    if-gt p3, p4, :cond_15

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p4, v0, :cond_1b

    .line 373
    :cond_15
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 375
    :cond_1b
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert0(ILjava/lang/String;)V

    .line 376
    return-void
.end method

.method final insert0(ILjava/lang/String;)V
    .registers 6
    .parameter "index"
    .parameter "string"

    .prologue
    .line 351
    if-ltz p1, :cond_1f

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v1, :cond_1f

    .line 352
    if-nez p2, :cond_a

    .line 353
    const-string p2, "null"

    .line 355
    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 356
    .local v0, min:I
    if-eqz v0, :cond_1e

    .line 357
    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 359
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->_getChars(II[CI)V

    .line 361
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 366
    :cond_1e
    return-void

    .line 364
    .end local v0           #min:I
    :cond_1f
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v1

    throw v1
.end method

.method final insert0(I[C)V
    .registers 6
    .parameter "index"
    .parameter "chars"

    .prologue
    .line 314
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p1, v0, :cond_b

    .line 315
    :cond_6
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 317
    :cond_b
    array-length v0, p2

    if-eqz v0, :cond_1f

    .line 318
    array-length v0, p2

    invoke-direct {p0, v0, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 319
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, p2

    invoke-static {p2, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 322
    :cond_1f
    return-void
.end method

.method final insert0(I[CII)V
    .registers 8
    .parameter "index"
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 325
    if-ltz p1, :cond_1e

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_1e

    .line 327
    if-ltz p3, :cond_1e

    if-ltz p4, :cond_1e

    array-length v0, p2

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1e

    .line 328
    if-eqz p4, :cond_1d

    .line 329
    invoke-direct {p0, p4, p1}, Ljava/lang/AbstractStringBuilder;->move(II)V

    .line 330
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    add-int/2addr v0, p4

    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 333
    :cond_1d
    return-void

    .line 336
    :cond_1e
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chars.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .parameter "string"

    .prologue
    .line 749
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .registers 12
    .parameter "subString"
    .parameter "start"

    .prologue
    const/4 v8, -0x1

    .line 768
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 769
    .local v5, subCount:I
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt v5, v6, :cond_50

    if-ltz p2, :cond_50

    .line 770
    if-lez v5, :cond_47

    .line 771
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v6, v5

    if-le p2, v6, :cond_16

    .line 772
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int p2, v6, v5

    .line 776
    :cond_16
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 778
    .local v0, firstChar:C
    :goto_1b
    move v2, p2

    .line 779
    .local v2, i:I
    const/4 v1, 0x0

    .line 780
    .local v1, found:Z
    :goto_1d
    if-ltz v2, :cond_26

    .line 781
    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aget-char v6, v6, v2

    if-ne v6, v0, :cond_2a

    .line 782
    const/4 v1, 0x1

    .line 786
    :cond_26
    if-nez v1, :cond_2d

    move v6, v8

    .line 802
    .end local v0           #firstChar:C
    .end local v1           #found:Z
    .end local v2           #i:I
    :goto_29
    return v6

    .line 780
    .restart local v0       #firstChar:C
    .restart local v1       #found:Z
    .restart local v2       #i:I
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 789
    :cond_2d
    move v3, v2

    .local v3, o1:I
    const/4 v4, 0x0

    .line 791
    .local v4, o2:I
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_3f

    iget-object v6, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v6, v6, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_2f

    .line 794
    :cond_3f
    if-ne v4, v5, :cond_43

    move v6, v2

    .line 795
    goto :goto_29

    .line 797
    :cond_43
    const/4 v6, 0x1

    sub-int p2, v2, v6

    .line 798
    goto :goto_1b

    .line 800
    .end local v0           #firstChar:C
    .end local v1           #found:Z
    .end local v2           #i:I
    .end local v3           #o1:I
    .end local v4           #o2:I
    :cond_47
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge p2, v6, :cond_4d

    move v6, p2

    goto :goto_29

    :cond_4d
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    goto :goto_29

    :cond_50
    move v6, v8

    .line 802
    goto :goto_29
.end method

.method public length()I
    .registers 2

    .prologue
    .line 384
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    return v0
.end method

.method public offsetByCodePoints(II)I
    .registers 6
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 904
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    const/4 v1, 0x0

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    return v0
.end method

.method final replace0(IILjava/lang/String;)V
    .registers 12
    .parameter "start"
    .parameter "end"
    .parameter "string"

    .prologue
    const/4 v7, 0x0

    .line 409
    if-ltz p1, :cond_6f

    .line 410
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-le p2, v3, :cond_9

    .line 411
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 413
    :cond_9
    if-le p2, p1, :cond_61

    .line 414
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 415
    .local v2, stringLength:I
    sub-int v3, p2, p1

    sub-int v0, v3, v2

    .line 416
    .local v0, diff:I
    if-lez v0, :cond_49

    .line 417
    iget-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-nez v3, :cond_30

    .line 419
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v5, p1, v2

    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v6, p2

    invoke-static {v3, p2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    :cond_25
    :goto_25
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {p3, v7, v2, v3, p1}, Ljava/lang/String;->_getChars(II[CI)V

    .line 440
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v3, v0

    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 448
    .end local v0           #diff:I
    .end local v2           #stringLength:I
    :goto_2f
    return-void

    .line 422
    .restart local v0       #diff:I
    .restart local v2       #stringLength:I
    :cond_30
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v3, v3

    new-array v1, v3, [C

    .line 423
    .local v1, newData:[C
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-static {v3, v7, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    add-int v4, p1, v2

    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v5, p2

    invoke-static {v3, p2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 428
    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_25

    .line 430
    .end local v1           #newData:[C
    :cond_49
    if-gez v0, :cond_50

    .line 432
    neg-int v3, v0

    invoke-direct {p0, v3, p2}, Ljava/lang/AbstractStringBuilder;->move(II)V

    goto :goto_25

    .line 433
    :cond_50
    iget-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v3, :cond_25

    .line 434
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v3}, [C->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    iput-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 435
    iput-boolean v7, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_25

    .line 443
    .end local v0           #diff:I
    .end local v2           #stringLength:I
    :cond_61
    if-ne p1, p2, :cond_6f

    .line 444
    if-nez p3, :cond_6b

    .line 445
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 447
    :cond_6b
    invoke-virtual {p0, p1, p3}, Ljava/lang/AbstractStringBuilder;->insert0(ILjava/lang/String;)V

    goto :goto_2f

    .line 451
    :cond_6f
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3
.end method

.method final reverse0()V
    .registers 19

    .prologue
    .line 455
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/AbstractStringBuilder;->count:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_f

    .line 529
    :cond_e
    :goto_e
    return-void

    .line 458
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/lang/AbstractStringBuilder;->shared:Z

    move/from16 v16, v0

    if-nez v16, :cond_169

    .line 459
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/AbstractStringBuilder;->count:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v4, v16, v17

    .line 460
    .local v4, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-char v7, v16, v17

    .line 461
    .local v7, frontHigh:C
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    aget-char v6, v16, v4

    .line 462
    .local v6, endLow:C
    const/4 v3, 0x1

    .local v3, allowFrontSur:Z
    const/4 v2, 0x1

    .line 463
    .local v2, allowEndSur:Z
    const/4 v10, 0x0

    .local v10, i:I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/AbstractStringBuilder;->count:I

    move/from16 v16, v0

    div-int/lit8 v12, v16, 0x2

    .local v12, mid:I
    :goto_3e
    if-ge v10, v12, :cond_144

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    add-int/lit8 v17, v10, 0x1

    aget-char v8, v16, v17

    .line 465
    .local v8, frontLow:C
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    const/16 v17, 0x1

    sub-int v17, v4, v17

    aget-char v5, v16, v17

    .line 466
    .local v5, endHigh:C
    if-eqz v3, :cond_fe

    const v16, 0xdc00

    move v0, v8

    move/from16 v1, v16

    if-lt v0, v1, :cond_fe

    const v16, 0xdfff

    move v0, v8

    move/from16 v1, v16

    if-gt v0, v1, :cond_fe

    const v16, 0xd800

    move v0, v7

    move/from16 v1, v16

    if-lt v0, v1, :cond_fe

    const v16, 0xdbff

    move v0, v7

    move/from16 v1, v16

    if-gt v0, v1, :cond_fe

    const/16 v16, 0x1

    move/from16 v15, v16

    .line 469
    .local v15, surAtFront:Z
    :goto_7c
    if-eqz v15, :cond_8c

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/AbstractStringBuilder;->count:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_e

    .line 472
    :cond_8c
    if-eqz v2, :cond_104

    const v16, 0xd800

    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_104

    const v16, 0xdbff

    move v0, v5

    move/from16 v1, v16

    if-gt v0, v1, :cond_104

    const v16, 0xdc00

    move v0, v6

    move/from16 v1, v16

    if-lt v0, v1, :cond_104

    const v16, 0xdfff

    move v0, v6

    move/from16 v1, v16

    if-gt v0, v1, :cond_104

    const/16 v16, 0x1

    move/from16 v14, v16

    .line 475
    .local v14, surAtEnd:Z
    :goto_b2
    const/4 v2, 0x1

    move v3, v2

    .line 476
    if-ne v15, v14, :cond_11c

    .line 477
    if-eqz v15, :cond_109

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    aput-char v8, v16, v4

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    const/16 v17, 0x1

    sub-int v17, v4, v17

    aput-char v7, v16, v17

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    aput-char v5, v16, v10

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    add-int/lit8 v17, v10, 0x1

    aput-char v6, v16, v17

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    add-int/lit8 v17, v10, 0x2

    aget-char v7, v16, v17

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    const/16 v17, 0x2

    sub-int v17, v4, v17

    aget-char v6, v16, v17

    .line 485
    add-int/lit8 v10, v10, 0x1

    .line 486
    add-int/lit8 v4, v4, -0x1

    .line 463
    :goto_f8
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_3e

    .line 466
    .end local v14           #surAtEnd:Z
    .end local v15           #surAtFront:Z
    :cond_fe
    const/16 v16, 0x0

    move/from16 v15, v16

    goto/16 :goto_7c

    .line 472
    .restart local v15       #surAtFront:Z
    :cond_104
    const/16 v16, 0x0

    move/from16 v14, v16

    goto :goto_b2

    .line 489
    .restart local v14       #surAtEnd:Z
    :cond_109
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    aput-char v7, v16, v4

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    aput-char v6, v16, v10

    .line 491
    move v7, v8

    .line 492
    move v6, v5

    goto :goto_f8

    .line 495
    :cond_11c
    if-eqz v15, :cond_131

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    aput-char v8, v16, v4

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    aput-char v6, v16, v10

    .line 499
    move v6, v5

    .line 500
    const/4 v3, 0x0

    goto :goto_f8

    .line 503
    :cond_131
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    aput-char v7, v16, v4

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    aput-char v5, v16, v10

    .line 505
    move v7, v8

    .line 506
    const/4 v2, 0x0

    goto :goto_f8

    .line 510
    .end local v5           #endHigh:C
    .end local v8           #frontLow:C
    .end local v14           #surAtEnd:Z
    .end local v15           #surAtFront:Z
    :cond_144
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/AbstractStringBuilder;->count:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    if-eqz v3, :cond_158

    if-nez v2, :cond_e

    .line 511
    :cond_158
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    if-eqz v3, :cond_166

    move/from16 v17, v6

    :goto_162
    aput-char v17, v16, v4

    goto/16 :goto_e

    :cond_166
    move/from16 v17, v7

    goto :goto_162

    .line 514
    .end local v2           #allowEndSur:Z
    .end local v3           #allowFrontSur:Z
    .end local v4           #end:I
    .end local v6           #endLow:C
    .end local v7           #frontHigh:C
    .end local v10           #i:I
    .end local v12           #mid:I
    :cond_169
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [C

    move-object v13, v0

    .line 515
    .local v13, newData:[C
    const/4 v10, 0x0

    .restart local v10       #i:I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/AbstractStringBuilder;->count:I

    move v4, v0

    .restart local v4       #end:I
    :goto_17f
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/AbstractStringBuilder;->count:I

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_1d7

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    aget-char v9, v16, v10

    .line 517
    .local v9, high:C
    add-int/lit8 v16, v10, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/AbstractStringBuilder;->count:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1d0

    const v16, 0xd800

    move v0, v9

    move/from16 v1, v16

    if-lt v0, v1, :cond_1d0

    const v16, 0xdbff

    move v0, v9

    move/from16 v1, v16

    if-gt v0, v1, :cond_1d0

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/AbstractStringBuilder;->value:[C

    move-object/from16 v16, v0

    add-int/lit8 v17, v10, 0x1

    aget-char v11, v16, v17

    .line 519
    .local v11, low:C
    const v16, 0xdc00

    move v0, v11

    move/from16 v1, v16

    if-lt v0, v1, :cond_1d0

    const v16, 0xdfff

    move v0, v11

    move/from16 v1, v16

    if-gt v0, v1, :cond_1d0

    .line 520
    add-int/lit8 v4, v4, -0x1

    aput-char v11, v13, v4

    .line 521
    add-int/lit8 v10, v10, 0x1

    .line 524
    .end local v11           #low:C
    :cond_1d0
    add-int/lit8 v4, v4, -0x1

    aput-char v9, v13, v4

    .line 515
    add-int/lit8 v10, v10, 0x1

    goto :goto_17f

    .line 526
    .end local v9           #high:C
    :cond_1d7
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 527
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto/16 :goto_e
.end method

.method final set([CI)V
    .registers 5
    .parameter "val"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 62
    if-nez p1, :cond_4

    .line 63
    sget-object p1, Llibcore/util/EmptyArray;->CHAR:[C

    .line 65
    :cond_4
    array-length v0, p1

    if-ge v0, p2, :cond_f

    .line 66
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "count out of range"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 70
    iput-object p1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 71
    iput p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 72
    return-void
.end method

.method public setCharAt(IC)V
    .registers 4
    .parameter "index"
    .parameter "ch"

    .prologue
    .line 543
    if-ltz p1, :cond_6

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-lt p1, v0, :cond_b

    .line 544
    :cond_6
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 546
    :cond_b
    iget-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v0, :cond_1c

    .line 547
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 550
    :cond_1c
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    aput-char p2, v0, p1

    .line 551
    return-void
.end method

.method public setLength(I)V
    .registers 6
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    .line 565
    if-gez p1, :cond_1c

    .line 566
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    :cond_1c
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    if-le p1, v1, :cond_27

    .line 569
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;->enlargeBuffer(I)V

    .line 582
    :cond_24
    :goto_24
    iput p1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    .line 583
    return-void

    .line 571
    :cond_27
    iget-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    if-eqz v1, :cond_3c

    .line 572
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    new-array v0, v1, [C

    .line 573
    .local v0, newData:[C
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 575
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    goto :goto_24

    .line 577
    .end local v0           #newData:[C
    :cond_3c
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ge v1, p1, :cond_24

    .line 578
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v2, p1, v3}, Ljava/util/Arrays;->fill([CIIC)V

    goto :goto_24
.end method

.method final shareValue()[C
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 55
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 668
    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .registers 5
    .parameter "start"

    .prologue
    .line 597
    if-ltz p1, :cond_18

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p1, v0, :cond_18

    .line 598
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-ne p1, v0, :cond_d

    .line 599
    const-string v0, ""

    .line 603
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_c

    .line 605
    :cond_18
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 622
    if-ltz p1, :cond_17

    if-gt p1, p2, :cond_17

    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-gt p2, v0, :cond_17

    .line 623
    if-ne p1, p2, :cond_d

    .line 624
    const-string v0, ""

    .line 628
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_c

    .line 630
    :cond_17
    invoke-direct {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 640
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    if-nez v1, :cond_8

    .line 641
    const-string v1, ""

    .line 650
    :goto_7
    return-object v1

    .line 644
    :cond_8
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v1, v1

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    sub-int v0, v1, v2

    .line 645
    .local v0, wasted:I
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1d

    const/16 v1, 0x10

    if-lt v0, v1, :cond_27

    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    shr-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_27

    .line 647
    :cond_1d
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_7

    .line 649
    :cond_27
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 650
    new-instance v1, Ljava/lang/String;

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    invoke-direct {v1, v4, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_7
.end method

.method public trimToSize()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 812
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    array-length v2, v2

    if-ge v1, v2, :cond_17

    .line 813
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    new-array v0, v1, [C

    .line 814
    .local v0, newValue:[C
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    .line 816
    iput-boolean v3, p0, Ljava/lang/AbstractStringBuilder;->shared:Z

    .line 818
    .end local v0           #newValue:[C
    :cond_17
    return-void
.end method
