.class public Ljava/text/RuleBasedCollator;
.super Ljava/text/Collator;
.source "RuleBasedCollator.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "rules"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/text/Collator;-><init>()V

    .line 286
    if-nez p1, :cond_b

    .line 287
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 289
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 290
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "empty rules"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 293
    :cond_1a
    :try_start_1a
    new-instance v1, Llibcore/icu/RuleBasedCollatorICU;

    invoke-direct {v1, p1}, Llibcore/icu/RuleBasedCollatorICU;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_22

    .line 304
    return-void

    .line 294
    :catch_22
    move-exception v1

    move-object v0, v1

    .line 295
    .local v0, e:Ljava/lang/Exception;
    instance-of v1, v0, Ljava/text/ParseException;

    if-eqz v1, :cond_2b

    .line 296
    check-cast v0, Ljava/text/ParseException;

    .end local v0           #e:Ljava/lang/Exception;
    throw v0

    .line 302
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_2b
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method constructor <init>(Llibcore/icu/RuleBasedCollatorICU;)V
    .registers 2
    .parameter "wrapper"

    .prologue
    .line 263
    invoke-direct {p0, p1}, Ljava/text/Collator;-><init>(Llibcore/icu/RuleBasedCollatorICU;)V

    .line 264
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 361
    invoke-super {p0}, Ljava/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    .line 362
    .local v0, clone:Ljava/text/RuleBasedCollator;
    return-object v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "source"
    .parameter "target"

    .prologue
    .line 388
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 389
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 391
    :cond_a
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0, p1, p2}, Llibcore/icu/RuleBasedCollatorICU;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 425
    instance-of v0, p1, Ljava/text/Collator;

    if-nez v0, :cond_6

    .line 426
    const/4 v0, 0x0

    .line 428
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Ljava/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Ljava/text/CollationElementIterator;
    .registers 4
    .parameter "source"

    .prologue
    .line 330
    if-nez p1, :cond_8

    .line 331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 333
    :cond_8
    new-instance v0, Ljava/text/CollationElementIterator;

    iget-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v1, p1}, Llibcore/icu/RuleBasedCollatorICU;->getCollationElementIterator(Ljava/lang/String;)Llibcore/icu/CollationElementIteratorICU;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Llibcore/icu/CollationElementIteratorICU;)V

    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Ljava/text/CollationElementIterator;
    .registers 4
    .parameter "source"

    .prologue
    .line 316
    if-nez p1, :cond_8

    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 319
    :cond_8
    new-instance v0, Ljava/text/CollationElementIterator;

    iget-object v1, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v1, p1}, Llibcore/icu/RuleBasedCollatorICU;->getCollationElementIterator(Ljava/text/CharacterIterator;)Llibcore/icu/CollationElementIteratorICU;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/CollationElementIterator;-><init>(Llibcore/icu/CollationElementIteratorICU;)V

    return-object v0
.end method

.method public getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .registers 3
    .parameter "source"

    .prologue
    .line 403
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0, p1}, Llibcore/icu/RuleBasedCollatorICU;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    return-object v0
.end method

.method public getRules()Ljava/lang/String;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getRules()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Ljava/text/RuleBasedCollator;->icuColl:Llibcore/icu/RuleBasedCollatorICU;

    invoke-virtual {v0}, Llibcore/icu/RuleBasedCollatorICU;->getRules()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
