.class final Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "CharsToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bucket"
.end annotation


# instance fields
.field private final _symbol:Ljava/lang/String;

.field private final mNext:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;)V
    .locals 0
    .parameter "symbol"
    .parameter "next"

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p1, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    .line 496
    iput-object p2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 497
    return-void
.end method


# virtual methods
.method public find([CII)Ljava/lang/String;
    .locals 5
    .parameter "buf"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 503
    iget-object v2, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    .line 504
    .local v2, sym:Ljava/lang/String;
    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    .line 507
    .local v0, b:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, p3, :cond_2

    .line 508
    const/4 v1, 0x0

    .line 510
    .local v1, i:I
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v1

    aget-char v4, p1, v4

    if-eq v3, v4, :cond_1

    .line 514
    :goto_1
    if-ne v1, p3, :cond_2

    move-object v3, v2

    .line 524
    .end local v1           #i:I
    :goto_2
    return-object v3

    .line 513
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-lt v1, p3, :cond_0

    goto :goto_1

    .line 518
    .end local v1           #i:I
    :cond_2
    if-nez v0, :cond_3

    .line 524
    const/4 v3, 0x0

    goto :goto_2

    .line 521
    :cond_3
    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->getSymbol()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->getNext()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    move-result-object v0

    goto :goto_0
.end method

.method public getNext()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;->_symbol:Ljava/lang/String;

    return-object v0
.end method
