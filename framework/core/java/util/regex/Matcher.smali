.class public final Ljava/util/regex/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# instance fields
.field private address:I

.field private anchoringBounds:Z

.field private appendPos:I

.field private findPos:I

.field private input:Ljava/lang/String;

.field private matchFound:Z

.field private matchOffsets:[I

.field private pattern:Ljava/util/regex/Pattern;

.field private regionEnd:I

.field private regionStart:I

.field private transparentBounds:Z


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "pattern"
    .parameter "input"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    .line 93
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 94
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 95
    return-void
.end method

.method private appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 9
    .parameter "buffer"
    .parameter "s"

    .prologue
    const/16 v5, 0x30

    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, escape:Z
    const/4 v1, 0x0

    .line 135
    .local v1, dollar:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 136
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 137
    .local v0, c:C
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_19

    if-nez v2, :cond_19

    .line 138
    const/4 v2, 0x1

    .line 135
    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 139
    :cond_19
    const/16 v4, 0x24

    if-ne v0, v4, :cond_21

    if-nez v2, :cond_21

    .line 140
    const/4 v1, 0x1

    goto :goto_16

    .line 141
    :cond_21
    if-lt v0, v5, :cond_34

    const/16 v4, 0x39

    if-gt v0, v4, :cond_34

    if-eqz v1, :cond_34

    .line 142
    sub-int v4, v0, v5

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const/4 v1, 0x0

    goto :goto_16

    .line 145
    :cond_34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    const/4 v1, 0x0

    .line 147
    const/4 v2, 0x0

    goto :goto_16

    .line 152
    .end local v0           #c:C
    :cond_3a
    if-eqz v2, :cond_46

    .line 153
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4

    .line 155
    :cond_46
    return-void
.end method

.method private static native closeImpl(I)V
.end method

.method private ensureMatch()V
    .registers 3

    .prologue
    .line 606
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-nez v0, :cond_c

    .line 607
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No successful match so far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_c
    return-void
.end method

.method private static native findImpl(ILjava/lang/String;I[I)Z
.end method

.method private static native findNextImpl(ILjava/lang/String;[I)Z
.end method

.method private static native groupCountImpl(I)I
.end method

.method private static native hitEndImpl(I)Z
.end method

.method private static native lookingAtImpl(ILjava/lang/String;[I)Z
.end method

.method private static native matchesImpl(ILjava/lang/String;[I)Z
.end method

.method private static native openImpl(I)I
.end method

.method public static quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "s"

    .prologue
    const/16 v4, 0x5c

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 496
    .local v2, result:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_25

    .line 497
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 498
    .local v0, c:C
    if-eq v0, v4, :cond_1c

    const/16 v3, 0x24

    if-ne v0, v3, :cond_1f

    .line 499
    :cond_1c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 501
    :cond_1f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 503
    .end local v0           #c:C
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static native requireEndImpl(I)Z
.end method

.method private reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;
    .registers 6
    .parameter "input"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x0

    .line 201
    if-nez p1, :cond_9

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 205
    :cond_9
    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_1b

    if-le p2, p3, :cond_21

    .line 206
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 209
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    .line 210
    iput p2, p0, Ljava/util/regex/Matcher;->regionStart:I

    .line 211
    iput p3, p0, Ljava/util/regex/Matcher;->regionEnd:I

    .line 212
    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    .line 214
    iput-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 215
    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 216
    iput v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 218
    return-object p0
.end method

.method private resetForInput()V
    .registers 5

    .prologue
    .line 254
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v2, p0, Ljava/util/regex/Matcher;->regionStart:I

    iget v3, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-static {v0, v1, v2, v3}, Ljava/util/regex/Matcher;->setInputImpl(ILjava/lang/String;II)V

    .line 255
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-boolean v1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->useAnchoringBoundsImpl(IZ)V

    .line 256
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-boolean v1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->useTransparentBoundsImpl(IZ)V

    .line 257
    return-void
.end method

.method private static native setInputImpl(ILjava/lang/String;II)V
.end method

.method private static native useAnchoringBoundsImpl(IZ)V
.end method

.method private static native useTransparentBoundsImpl(IZ)V
.end method


# virtual methods
.method public appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 6
    .parameter "buffer"
    .parameter "replacement"

    .prologue
    .line 114
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/util/regex/Matcher;->appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 118
    return-object p0
.end method

.method public appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "buffer"

    .prologue
    .line 287
    iget v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v1, p0, Ljava/util/regex/Matcher;->regionEnd:I

    if-ge v0, v1, :cond_13

    .line 288
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v2, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    :cond_13
    return-object p1
.end method

.method public end()I
    .registers 2

    .prologue
    .line 537
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    return v0
.end method

.method public end(I)I
    .registers 4
    .parameter "group"

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 482
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 665
    :try_start_0
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    invoke-static {v0}, Ljava/util/regex/Matcher;->closeImpl(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 667
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 669
    return-void

    .line 667
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public find()Z
    .registers 4

    .prologue
    .line 416
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->findNextImpl(ILjava/lang/String;[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 417
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v0, :cond_17

    .line 418
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 420
    :cond_17
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0
.end method

.method public find(I)Z
    .registers 6
    .parameter "start"

    .prologue
    const/4 v2, 0x0

    .line 391
    iput p1, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 393
    iget v0, p0, Ljava/util/regex/Matcher;->findPos:I

    iget v1, p0, Ljava/util/regex/Matcher;->regionStart:I

    if-ge v0, v1, :cond_29

    .line 394
    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 400
    :cond_d
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v2, p0, Ljava/util/regex/Matcher;->findPos:I

    iget-object v3, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2, v3}, Ljava/util/regex/Matcher;->findImpl(ILjava/lang/String;I[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 401
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v0, :cond_26

    .line 402
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 404
    :cond_26
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    :goto_28
    return v0

    .line 395
    :cond_29
    iget v0, p0, Ljava/util/regex/Matcher;->findPos:I

    iget v1, p0, Ljava/util/regex/Matcher;->regionEnd:I

    if-lt v0, v1, :cond_d

    .line 396
    iput-boolean v2, p0, Ljava/util/regex/Matcher;->matchFound:Z

    move v0, v2

    .line 397
    goto :goto_28
.end method

.method public group()Ljava/lang/String;
    .registers 2

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .registers 7
    .parameter "group"

    .prologue
    const/4 v4, -0x1

    .line 358
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 359
    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v3, p1, 0x2

    aget v0, v2, v3

    .line 360
    .local v0, from:I
    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v1, v2, v3

    .line 361
    .local v1, to:I
    if-eq v0, v4, :cond_16

    if-ne v1, v4, :cond_18

    .line 362
    :cond_16
    const/4 v2, 0x0

    .line 364
    :goto_17
    return-object v2

    :cond_18
    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_17
.end method

.method public groupCount()I
    .registers 2

    .prologue
    .line 525
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    invoke-static {v0}, Ljava/util/regex/Matcher;->groupCountImpl(I)I

    move-result v0

    return v0
.end method

.method public hasAnchoringBounds()Z
    .registers 2

    .prologue
    .line 579
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    return v0
.end method

.method public hasTransparentBounds()Z
    .registers 2

    .prologue
    .line 620
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    return v0
.end method

.method public hitEnd()Z
    .registers 2

    .prologue
    .line 660
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    invoke-static {v0}, Ljava/util/regex/Matcher;->hitEndImpl(I)Z

    move-result v0

    return v0
.end method

.method public lookingAt()Z
    .registers 4

    .prologue
    .line 431
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->lookingAtImpl(ILjava/lang/String;[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 432
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v0, :cond_17

    .line 433
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 435
    :cond_17
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0
.end method

.method public matches()Z
    .registers 4

    .prologue
    .line 446
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->matchesImpl(ILjava/lang/String;[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 447
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v0, :cond_17

    .line 448
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Ljava/util/regex/Matcher;->findPos:I

    .line 450
    :cond_17
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0
.end method

.method public pattern()Ljava/util/regex/Pattern;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public region(II)Ljava/util/regex/Matcher;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 270
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public regionEnd()I
    .registers 2

    .prologue
    .line 640
    iget v0, p0, Ljava/util/regex/Matcher;->regionEnd:I

    return v0
.end method

.method public regionStart()I
    .registers 2

    .prologue
    .line 630
    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    return v0
.end method

.method public replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "replacement"

    .prologue
    .line 319
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 320
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 321
    .local v0, buffer:Ljava/lang/StringBuffer;
    :goto_e
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 322
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_e

    .line 324
    :cond_18
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replaceFirst(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "replacement"

    .prologue
    .line 302
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 303
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 304
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 305
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 307
    :cond_17
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public requireEnd()Z
    .registers 2

    .prologue
    .line 651
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    invoke-static {v0}, Ljava/util/regex/Matcher;->requireEndImpl(I)Z

    move-result v0

    return v0
.end method

.method public reset()Ljava/util/regex/Matcher;
    .registers 4

    .prologue
    .line 166
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .registers 4
    .parameter "input"

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public start()I
    .registers 2

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    return v0
.end method

.method public start(I)I
    .registers 4
    .parameter "group"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 466
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public toMatchResult()Ljava/util/regex/MatchResult;
    .registers 4

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 551
    new-instance v0, Ljava/util/regex/MatchResultImpl;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-direct {v0, v1, v2}, Ljava/util/regex/MatchResultImpl;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public useAnchoringBounds(Z)Ljava/util/regex/Matcher;
    .registers 3
    .parameter "value"

    .prologue
    .line 565
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    .line 566
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    invoke-static {v0, p1}, Ljava/util/regex/Matcher;->useAnchoringBoundsImpl(IZ)V

    .line 567
    return-object p0
.end method

.method public usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    .registers 4
    .parameter "pattern"

    .prologue
    const/4 v1, 0x0

    .line 232
    if-nez p1, :cond_9

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 236
    :cond_9
    iput-object p1, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    .line 238
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    if-eqz v0, :cond_16

    .line 239
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    invoke-static {v0}, Ljava/util/regex/Matcher;->closeImpl(I)V

    .line 240
    iput v1, p0, Ljava/util/regex/Matcher;->address:I

    .line 242
    :cond_16
    iget v0, p1, Ljava/util/regex/Pattern;->address:I

    invoke-static {v0}, Ljava/util/regex/Matcher;->openImpl(I)I

    move-result v0

    iput v0, p0, Ljava/util/regex/Matcher;->address:I

    .line 244
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 245
    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    .line 248
    :cond_25
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    .line 249
    iput-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 250
    return-object p0
.end method

.method public useTransparentBounds(Z)Ljava/util/regex/Matcher;
    .registers 3
    .parameter "value"

    .prologue
    .line 593
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    .line 594
    iget v0, p0, Ljava/util/regex/Matcher;->address:I

    invoke-static {v0, p1}, Ljava/util/regex/Matcher;->useTransparentBoundsImpl(IZ)V

    .line 595
    return-object p0
.end method
