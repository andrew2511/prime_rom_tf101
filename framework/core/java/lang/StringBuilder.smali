.class public final Ljava/lang/StringBuilder;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3cd5fb145a4c6acbL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/AbstractStringBuilder;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "capacity"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "str"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 680
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 681
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 682
    .local v1, count:I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    move-object v0, v3

    check-cast v0, [C

    move-object v2, v0

    .line 683
    .local v2, value:[C
    invoke-virtual {p0, v2, v1}, Ljava/lang/StringBuilder;->set([CI)V

    .line 684
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 699
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 700
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->getValue()[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 701
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Ljava/lang/StringBuilder;
    .registers 2
    .parameter "c"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0(C)V

    .line 126
    return-object p0
.end method

.method public append(D)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "d"

    .prologue
    .line 185
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/RealToString;->appendDouble(Ljava/lang/AbstractStringBuilder;D)V

    .line 186
    return-object p0
.end method

.method public append(F)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "f"

    .prologue
    .line 170
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/RealToString;->appendFloat(Ljava/lang/AbstractStringBuilder;F)V

    .line 171
    return-object p0
.end method

.method public append(I)Ljava/lang/StringBuilder;
    .registers 2
    .parameter "i"

    .prologue
    .line 140
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    .line 141
    return-object p0
.end method

.method public append(J)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "l"

    .prologue
    .line 155
    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->appendLong(Ljava/lang/AbstractStringBuilder;J)V

    .line 156
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "csq"

    .prologue
    .line 286
    if-nez p1, :cond_6

    .line 287
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    .line 291
    :goto_5
    return-object p0

    .line 289
    :cond_6
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append0(Ljava/lang/CharSequence;II)V

    goto :goto_5
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 312
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append0(Ljava/lang/CharSequence;II)V

    .line 313
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "obj"

    .prologue
    .line 200
    if-nez p1, :cond_6

    .line 201
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    .line 205
    :goto_5
    return-object p0

    .line 203
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 2
    .parameter "str"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    .line 218
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;
    .registers 5
    .parameter "sb"

    .prologue
    .line 231
    if-nez p1, :cond_6

    .line 232
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->appendNull()V

    .line 236
    :goto_5
    return-object p0

    .line 234
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/lang/StringBuilder;->append0([CII)V

    goto :goto_5
.end method

.method public append(Z)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "b"

    .prologue
    .line 110
    if-eqz p1, :cond_8

    const-string v0, "true"

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0(Ljava/lang/String;)V

    .line 111
    return-object p0

    .line 110
    :cond_8
    const-string v0, "false"

    goto :goto_4
.end method

.method public append([C)Ljava/lang/StringBuilder;
    .registers 2
    .parameter "chars"

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append0([C)V

    .line 251
    return-object p0
.end method

.method public append([CII)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "str"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 272
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append0([CII)V

    .line 273
    return-object p0
.end method

.method public appendCodePoint(I)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 326
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append0([C)V

    .line 327
    return-object p0
.end method

.method public bridge synthetic capacity()I
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->capacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic charAt(I)C
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public bridge synthetic codePointAt(I)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic codePointBefore(I)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic codePointCount(II)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I

    move-result v0

    return v0
.end method

.method public delete(II)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 344
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->delete0(II)V

    .line 345
    return-object p0
.end method

.method public deleteCharAt(I)Ljava/lang/StringBuilder;
    .registers 2
    .parameter "index"

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt0(I)V

    .line 361
    return-object p0
.end method

.method public bridge synthetic ensureCapacity(I)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V

    return-void
.end method

.method public bridge synthetic getChars(II[CI)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V

    return-void
.end method

.method public bridge synthetic indexOf(Ljava/lang/String;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic indexOf(Ljava/lang/String;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public insert(IC)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "offset"
    .parameter "c"

    .prologue
    .line 401
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(IC)V

    .line 402
    return-object p0
.end method

.method public insert(ID)Ljava/lang/StringBuilder;
    .registers 5
    .parameter "offset"
    .parameter "d"

    .prologue
    .line 482
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 483
    return-object p0
.end method

.method public insert(IF)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "offset"
    .parameter "f"

    .prologue
    .line 461
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 462
    return-object p0
.end method

.method public insert(II)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "offset"
    .parameter "i"

    .prologue
    .line 421
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 422
    return-object p0
.end method

.method public insert(IJ)Ljava/lang/StringBuilder;
    .registers 5
    .parameter "offset"
    .parameter "l"

    .prologue
    .line 441
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 442
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "offset"
    .parameter "s"

    .prologue
    .line 588
    if-nez p2, :cond_8

    const-string v0, "null"

    :goto_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 589
    return-object p0

    .line 588
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;
    .registers 5
    .parameter "offset"
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 616
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/CharSequence;II)V

    .line 617
    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "offset"
    .parameter "obj"

    .prologue
    .line 502
    if-nez p2, :cond_8

    const-string v0, "null"

    :goto_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 503
    return-object p0

    .line 502
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "offset"
    .parameter "str"

    .prologue
    .line 520
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 521
    return-object p0
.end method

.method public insert(IZ)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "offset"
    .parameter "b"

    .prologue
    .line 381
    if-eqz p2, :cond_8

    const-string v0, "true"

    :goto_4
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->insert0(ILjava/lang/String;)V

    .line 382
    return-object p0

    .line 381
    :cond_8
    const-string v0, "false"

    goto :goto_4
.end method

.method public insert(I[C)Ljava/lang/StringBuilder;
    .registers 3
    .parameter "offset"
    .parameter "ch"

    .prologue
    .line 540
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->insert0(I[C)V

    .line 541
    return-object p0
.end method

.method public insert(I[CII)Ljava/lang/StringBuilder;
    .registers 5
    .parameter "offset"
    .parameter "str"
    .parameter "strOffset"
    .parameter "strLen"

    .prologue
    .line 567
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert0(I[CII)V

    .line 568
    return-object p0
.end method

.method public bridge synthetic lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic lastIndexOf(Ljava/lang/String;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic length()I
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public bridge synthetic offsetByCodePoints(II)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I

    move-result v0

    return v0
.end method

.method public replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "start"
    .parameter "end"
    .parameter "str"

    .prologue
    .line 638
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace0(IILjava/lang/String;)V

    .line 639
    return-object p0
.end method

.method public reverse()Ljava/lang/StringBuilder;
    .registers 1

    .prologue
    .line 648
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->reverse0()V

    .line 649
    return-object p0
.end method

.method public bridge synthetic setCharAt(IC)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->setCharAt(IC)V

    return-void
.end method

.method public bridge synthetic setLength(I)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V

    return-void
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic substring(I)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic substring(II)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 664
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trimToSize()V
    .registers 1

    .prologue
    .line 44
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V

    return-void
.end method
