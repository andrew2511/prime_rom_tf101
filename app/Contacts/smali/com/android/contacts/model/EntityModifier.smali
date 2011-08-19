.class public Lcom/android/contacts/model/EntityModifier;
.super Ljava/lang/Object;
.source "EntityModifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/AccountType$DataKind;)Z
    .locals 8
    .parameter "entry"
    .parameter
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;",
            "Lcom/android/contacts/model/AccountType$DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 749
    iget-object v5, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v7

    .line 771
    :goto_0
    return v5

    .line 753
    :cond_1
    iget-object v5, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 754
    .local v4, typeInteger:Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v5

    .line 756
    .local v3, type:I
    :goto_1
    invoke-static {v3, p1, p2}, Lcom/android/contacts/model/EntityModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 757
    iget-object v5, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    move v5, v7

    .line 758
    goto :goto_0

    .line 754
    .end local v3           #type:I
    :cond_2
    iget-object v5, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountType$EditType;

    iget v5, v5, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    move v3, v5

    goto :goto_1

    .line 762
    .restart local v3       #type:I
    :cond_3
    iget-object v5, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 763
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 764
    iget-object v5, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditType;

    .line 765
    .local v0, editType:Lcom/android/contacts/model/AccountType$EditType;
    iget v5, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-static {v5, p1, p2}, Lcom/android/contacts/model/EntityModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 766
    iget-object v5, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    iget v6, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    move v5, v7

    .line 767
    goto :goto_0

    .line 763
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #editType:Lcom/android/contacts/model/AccountType$EditType;
    :cond_5
    move v5, v6

    .line 771
    goto :goto_0
.end method

.method protected static areEqual(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/model/AccountType$DataKind;)Z
    .locals 6
    .parameter "values1"
    .parameter "values2"
    .parameter "kind"

    .prologue
    const/4 v5, 0x0

    .line 472
    iget-object v4, p2, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    if-nez v4, :cond_0

    move v4, v5

    .line 482
    :goto_0
    return v4

    .line 474
    :cond_0
    iget-object v4, p2, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditField;

    .line 475
    .local v0, field:Lcom/android/contacts/model/AccountType$EditField;
    iget-object v4, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, value1:Ljava/lang/String;
    iget-object v4, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, value2:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    .line 478
    goto :goto_0

    .line 482
    .end local v0           #field:Lcom/android/contacts/model/AccountType$EditField;
    .end local v2           #value1:Ljava/lang/String;
    .end local v3           #value2:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Z
    .locals 7
    .parameter "state"
    .parameter "kind"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 68
    iget-object v3, p1, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    .line 69
    .local v2, visibleCount:I
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->hasValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v1

    .line 70
    .local v1, validTypes:Z
    iget v3, p1, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, p1, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    if-ge v2, v3, :cond_1

    :cond_0
    move v0, v5

    .line 72
    .local v0, validOverall:Z
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v3, v5

    :goto_1
    return v3

    .end local v0           #validOverall:Z
    :cond_1
    move v0, v6

    .line 70
    goto :goto_0

    .restart local v0       #validOverall:Z
    :cond_2
    move v3, v6

    .line 72
    goto :goto_1
.end method

.method public static ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "accountType"
    .parameter "mimeType"

    .prologue
    const/4 v5, 0x1

    .line 89
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v2

    .line 90
    .local v2, kind:Lcom/android/contacts/model/AccountType$DataKind;
    invoke-virtual {p0, p2, v5}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    if-lez v3, :cond_1

    move v1, v5

    .line 92
    .local v1, hasChild:Z
    :goto_0
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 94
    invoke-static {p0, v2}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    .line 95
    .local v0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    iget-object v3, v2, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 99
    .end local v0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_0
    return-void

    .line 90
    .end local v1           #hasChild:Z
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0
.end method

.method private static fixupLegacyImType(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 825
    const-string v2, "im_protocol"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, encodedString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 839
    :goto_0
    return-void

    .line 829
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 831
    .local v1, protocol:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 832
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/Integer;

    .end local v1           #protocol:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 836
    :catch_0
    move-exception v2

    goto :goto_0

    .line 834
    .restart local v1       #protocol:Ljava/lang/Object;
    :cond_1
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/String;

    .end local v1           #protocol:Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;ZI)Lcom/android/contacts/model/AccountType$EditType;
    .locals 8
    .parameter "state"
    .parameter "kind"
    .parameter "includeSecondary"
    .parameter "exactValue"

    .prologue
    const/4 v7, 0x0

    .line 275
    iget-object v6, p1, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    if-nez v6, :cond_0

    move-object v6, v7

    .line 307
    .end local p0
    :goto_0
    return-object v6

    .line 278
    .restart local p0
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->getTypeFrequencies(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Landroid/util/SparseIntArray;

    move-result-object v4

    .line 279
    .local v4, typeCount:Landroid/util/SparseIntArray;
    invoke-static {p0, p1, v7, p2, v4}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 281
    .local v5, validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountType$EditType;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v7

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditType;

    .line 287
    .local v2, lastType:Lcom/android/contacts/model/AccountType$EditType;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 288
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/model/AccountType$EditType;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditType;

    .line 290
    .local v3, type:Lcom/android/contacts/model/AccountType$EditType;
    iget v6, v3, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 292
    .local v0, count:I
    iget v6, v3, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne p3, v6, :cond_3

    move-object v6, v3

    .line 294
    goto :goto_0

    .line 297
    :cond_3
    if-lez v0, :cond_2

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 304
    .end local v0           #count:I
    .end local v3           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 305
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/AccountType$EditType;

    move-object v6, p0

    goto :goto_0

    .restart local p0
    :cond_5
    move-object v6, v2

    .line 307
    goto :goto_0
.end method

.method public static getCurrentType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .parameter "entry"
    .parameter "kind"

    .prologue
    .line 213
    iget-object v1, p1, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 214
    .local v0, rawValue:Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 215
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/contacts/model/EntityModifier;->getType(Lcom/android/contacts/model/AccountType$DataKind;I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    goto :goto_0
.end method

.method private static getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I
    .locals 5
    .parameter
    .parameter "typeColumn"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 808
    .local p0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v0, 0x0

    .line 809
    .local v0, count:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 810
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 811
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 812
    .local v3, typeInteger:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 813
    add-int/lit8 v0, v0, 0x1

    .line 810
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    .end local v3           #typeInteger:Ljava/lang/Integer;
    :cond_1
    return v0
.end method

.method public static getType(Lcom/android/contacts/model/AccountType$DataKind;I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 3
    .parameter "kind"
    .parameter "rawValue"

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountType$EditType;

    .line 246
    .local v1, type:Lcom/android/contacts/model/AccountType$EditType;
    iget v2, v1, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    move-object v2, v1

    .line 250
    .end local v1           #type:Lcom/android/contacts/model/AccountType$EditType;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getTypeFrequencies(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Landroid/util/SparseIntArray;
    .locals 9
    .parameter "state"
    .parameter "kind"

    .prologue
    .line 177
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 180
    .local v6, typeCount:Landroid/util/SparseIntArray;
    iget-object v7, p1, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 181
    .local v3, mimeEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v3, :cond_0

    .line 196
    :goto_0
    return-object v6

    .line 183
    :cond_0
    const/4 v4, 0x0

    .line 184
    .local v4, totalCount:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 186
    .local v1, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 187
    add-int/lit8 v4, v4, 0x1

    .line 189
    invoke-static {v1, p1}, Lcom/android/contacts/model/EntityModifier;->getCurrentType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v5

    .line 190
    .local v5, type:Lcom/android/contacts/model/AccountType$EditType;
    if-eqz v5, :cond_1

    .line 191
    iget v7, v5, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 192
    .local v0, count:I
    iget v7, v5, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 195
    .end local v0           #count:I
    .end local v1           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v5           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_2
    const/high16 v7, -0x8000

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public static getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Ljava/util/ArrayList;
    .locals 2
    .parameter "state"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/AccountType$DataKind;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 107
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v0, v1}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/AccountType$EditType;)Ljava/util/ArrayList;
    .locals 2
    .parameter "state"
    .parameter "kind"
    .parameter "forceInclude"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/AccountType$DataKind;",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;
    .locals 7
    .parameter "state"
    .parameter "kind"
    .parameter "forceInclude"
    .parameter "includeSecondary"
    .parameter "typeCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/AccountType$DataKind;",
            "Lcom/android/contacts/model/AccountType$EditType;",
            "Z",
            "Landroid/util/SparseIntArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 143
    .local v6, validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountType$EditType;>;"
    invoke-static {p1}, Lcom/android/contacts/model/EntityModifier;->hasEditTypes(Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p0, v6

    .line 165
    .end local v6           #validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountType$EditType;>;"
    .local p0, validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountType$EditType;>;"
    :goto_0
    return-object p0

    .line 145
    .restart local v6       #validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountType$EditType;>;"
    .local p0, state:Lcom/android/contacts/model/EntityDelta;
    :cond_0
    if-nez p4, :cond_1

    .line 147
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->getTypeFrequencies(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Landroid/util/SparseIntArray;

    move-result-object p4

    .line 151
    :cond_1
    const/high16 p0, -0x8000

    invoke-virtual {p4, p0}, Landroid/util/SparseIntArray;->get(I)I

    .end local p0           #state:Lcom/android/contacts/model/EntityDelta;
    move-result v1

    .line 152
    .local v1, overallCount:I
    iget-object p0, p1, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditType;

    .line 153
    .local v2, type:Lcom/android/contacts/model/AccountType$EditType;
    iget p0, p1, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    const/4 v3, -0x1

    if-ne p0, v3, :cond_4

    const/4 p0, 0x1

    move v3, p0

    .line 155
    .local v3, validOverall:Z
    :goto_2
    iget p0, v2, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    const/4 v4, -0x1

    if-ne p0, v4, :cond_6

    const/4 p0, 0x1

    move v5, p0

    .line 157
    .local v5, validSpecific:Z
    :goto_3
    if-eqz p3, :cond_8

    const/4 p0, 0x1

    move v4, p0

    .line 158
    .local v4, validSecondary:Z
    :goto_4
    invoke-virtual {v2, p2}, Lcom/android/contacts/model/AccountType$EditType;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 159
    .local p0, forcedInclude:Z
    if-nez p0, :cond_3

    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 161
    :cond_3
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    .end local v3           #validOverall:Z
    .end local v4           #validSecondary:Z
    .end local v5           #validSpecific:Z
    .end local p0           #forcedInclude:Z
    :cond_4
    iget p0, p1, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    if-ge v1, p0, :cond_5

    const/4 p0, 0x1

    move v3, p0

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    move v3, p0

    goto :goto_2

    .line 155
    .restart local v3       #validOverall:Z
    :cond_6
    iget p0, v2, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {p4, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    iget v4, v2, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    if-ge p0, v4, :cond_7

    const/4 p0, 0x1

    move v5, p0

    goto :goto_3

    :cond_7
    const/4 p0, 0x0

    move v5, p0

    goto :goto_3

    .line 157
    .restart local v5       #validSpecific:Z
    :cond_8
    iget-boolean p0, v2, Lcom/android/contacts/model/AccountType$EditType;->secondary:Z

    if-nez p0, :cond_9

    const/4 p0, 0x1

    move v4, p0

    goto :goto_4

    :cond_9
    const/4 p0, 0x0

    move v4, p0

    goto :goto_4

    .end local v2           #type:Lcom/android/contacts/model/AccountType$EditType;
    .end local v3           #validOverall:Z
    .end local v5           #validSpecific:Z
    :cond_a
    move-object p0, v6

    .line 165
    .end local v6           #validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountType$EditType;>;"
    .local p0, validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountType$EditType;>;"
    goto :goto_0
.end method

.method private static hasChanges(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)Z
    .locals 10
    .parameter "state"
    .parameter "accountType"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 427
    invoke-virtual {p1}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountType$DataKind;

    .line 428
    .local v5, kind:Lcom/android/contacts/model/AccountType$DataKind;
    iget-object v6, v5, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    .line 429
    .local v6, mimeType:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 430
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 435
    .local v1, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v1, v5}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v7

    if-nez v7, :cond_3

    move v4, v9

    .line 436
    .local v4, isRealInsert:Z
    :goto_0
    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_2
    move v7, v9

    .line 441
    .end local v0           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v1           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isRealInsert:Z
    .end local v5           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .end local v6           #mimeType:Ljava/lang/String;
    :goto_1
    return v7

    .restart local v0       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v1       #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .restart local v6       #mimeType:Ljava/lang/String;
    :cond_3
    move v4, v8

    .line 435
    goto :goto_0

    .end local v0           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v1           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .end local v6           #mimeType:Ljava/lang/String;
    :cond_4
    move v7, v8

    .line 441
    goto :goto_1
.end method

.method public static hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z
    .locals 7
    .parameter "set"
    .parameter "accountTypes"

    .prologue
    const/4 v6, 0x1

    .line 368
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->isMarkedForSplitting()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->isMarkedForJoining()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v4, v6

    .line 379
    :goto_0
    return v4

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta;

    .line 373
    .local v2, state:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, accountType:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v3

    .line 375
    .local v3, type:Lcom/android/contacts/model/AccountType;
    invoke-static {v2, v3}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    .line 376
    goto :goto_0

    .line 379
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #state:Lcom/android/contacts/model/EntityDelta;
    .end local v3           #type:Lcom/android/contacts/model/AccountType;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static hasEditTypes(Lcom/android/contacts/model/AccountType$DataKind;)Z
    .locals 1
    .parameter "kind"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Z
    .locals 2
    .parameter "state"
    .parameter "kind"

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-static {p1}, Lcom/android/contacts/model/EntityModifier;->hasEditTypes(Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 79
    :goto_0
    return v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public static insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 3
    .parameter "state"
    .parameter "kind"

    .prologue
    const/high16 v2, -0x8000

    .line 318
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/model/EntityModifier;->getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;ZI)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    .line 319
    .local v0, bestType:Lcom/android/contacts/model/AccountType$EditType;
    if-nez v0, :cond_0

    .line 321
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/model/EntityModifier;->getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;ZI)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    .line 323
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    return-object v1
.end method

.method public static insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 4
    .parameter "state"
    .parameter "kind"
    .parameter "type"

    .prologue
    .line 332
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 350
    :goto_0
    return-object v2

    .line 333
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v0, after:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    iget-object v3, p1, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v2, p1, Lcom/android/contacts/model/AccountType$DataKind;->defaultValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_1

    .line 340
    iget-object v2, p1, Lcom/android/contacts/model/AccountType$DataKind;->defaultValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 343
    :cond_1
    iget-object v2, p1, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 345
    iget-object v2, p1, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    iget v3, p2, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    :cond_2
    invoke-static {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 349
    .local v1, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-object v2, v1

    .line 350
    goto :goto_0
.end method

.method public static isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/AccountType$DataKind;)Z
    .locals 7
    .parameter "values"
    .parameter "kind"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 449
    const-string v3, "vnd.android.cursor.item/photo"

    iget-object v4, p1, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "data15"

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v5

    .line 464
    :goto_0
    return v3

    :cond_0
    move v3, v6

    .line 450
    goto :goto_0

    .line 454
    :cond_1
    iget-object v3, p1, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    if-nez v3, :cond_2

    move v3, v5

    goto :goto_0

    .line 456
    :cond_2
    iget-object v3, p1, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditField;

    .line 458
    .local v0, field:Lcom/android/contacts/model/AccountType$EditField;
    iget-object v3, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    .line 460
    goto :goto_0

    .end local v0           #field:Lcom/android/contacts/model/AccountType$EditField;
    .end local v2           #value:Ljava/lang/String;
    :cond_4
    move v3, v5

    .line 464
    goto :goto_0
.end method

.method private static isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/AccountType$DataKind;)Z
    .locals 7
    .parameter "type"
    .parameter
    .parameter "kind"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;",
            "Lcom/android/contacts/model/AccountType$DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 780
    const/4 v2, 0x0

    .line 781
    .local v2, max:I
    iget-object v4, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 782
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 783
    iget-object v4, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditType;

    .line 784
    .local v0, editType:Lcom/android/contacts/model/AccountType$EditType;
    iget v4, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v4, p0, :cond_1

    .line 785
    iget v2, v0, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    .line 790
    .end local v0           #editType:Lcom/android/contacts/model/AccountType$EditType;
    :cond_0
    if-nez v2, :cond_2

    move v4, v5

    .line 800
    :goto_1
    return v4

    .line 782
    .restart local v0       #editType:Lcom/android/contacts/model/AccountType$EditType;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    .end local v0           #editType:Lcom/android/contacts/model/AccountType$EditType;
    :cond_2
    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    move v4, v6

    .line 797
    goto :goto_1

    .line 800
    :cond_3
    iget-object v4, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    invoke-static {p1, v4, p0}, Lcom/android/contacts/model/EntityModifier;->getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I

    move-result v4

    if-ge v4, v2, :cond_4

    move v4, v6

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method public static parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 2
    .parameter "state"
    .parameter "kind"
    .parameter "extras"
    .parameter "typeExtra"
    .parameter "valueExtra"
    .parameter "valueColumn"

    .prologue
    .line 853
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 856
    .local v1, value:Ljava/lang/CharSequence;
    if-nez p1, :cond_1

    const/4 p0, 0x0

    .line 879
    .end local p0
    .end local p1
    .end local p2
    .end local p4
    :cond_0
    :goto_0
    return-object p0

    .line 859
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p4
    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result p4

    .line 860
    .local p4, canInsert:Z
    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 861
    .local v0, validValue:Z
    :goto_1
    if-eqz v0, :cond_2

    if-nez p4, :cond_4

    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .line 860
    .end local v0           #validValue:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 864
    .restart local v0       #validValue:Z
    :cond_4
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    .line 865
    .local p4, hasType:Z
    if-eqz p4, :cond_5

    const/4 p4, 0x0

    .end local p4           #hasType:Z
    :goto_2
    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p4

    .line 867
    .local p4, typeValue:I
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p4}, Lcom/android/contacts/model/EntityModifier;->getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;ZI)Lcom/android/contacts/model/AccountType$EditType;

    .end local v0           #validValue:Z
    move-result-object p4

    .line 870
    .local p4, editType:Lcom/android/contacts/model/AccountType$EditType;
    invoke-static {p0, p1, p4}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object p0

    .line 871
    .local p0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, p5, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    if-eqz p4, :cond_0

    iget-object p1, p4, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 875
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 876
    .local p1, customType:Ljava/lang/String;
    iget-object p2, p4, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 865
    .restart local v0       #validValue:Z
    .local p0, state:Lcom/android/contacts/model/EntityDelta;
    .local p1, kind:Lcom/android/contacts/model/AccountType$DataKind;
    .restart local p2
    .local p4, hasType:Z
    :cond_5
    const/high16 p4, -0x8000

    goto :goto_2
.end method

.method public static parseExtras(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "accountType"
    .parameter "state"
    .parameter "extras"

    .prologue
    .line 491
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 561
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 496
    .restart local p0
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/model/EntityModifier;->parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    .line 497
    invoke-static {p1, p2, p3}, Lcom/android/contacts/model/EntityModifier;->parseStructuredPostalExtra(Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    .line 501
    const-string p0, "vnd.android.cursor.item/phone_v2"

    .end local p0
    invoke-virtual {p1, p0}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    .line 502
    .local v1, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const-string v3, "phone_type"

    const-string v4, "phone"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 503
    const-string v3, "secondary_phone_type"

    const-string v4, "secondary_phone"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 505
    const-string v3, "tertiary_phone_type"

    const-string v4, "tertiary_phone"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 511
    const-string p0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p1, p0}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    .line 512
    const-string v3, "email_type"

    const-string v4, "email"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 513
    const-string v3, "secondary_email_type"

    const-string v4, "secondary_email"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 515
    const-string v3, "tertiary_email_type"

    const-string v4, "tertiary_email"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 521
    const-string p0, "vnd.android.cursor.item/im"

    invoke-virtual {p1, p0}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    .line 522
    invoke-static {p3}, Lcom/android/contacts/model/EntityModifier;->fixupLegacyImType(Landroid/os/Bundle;)V

    .line 523
    const-string v3, "im_protocol"

    const-string v4, "im_handle"

    const-string v5, "data1"

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 527
    const-string p0, "company"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "job_title"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_2
    const/4 p0, 0x1

    .line 529
    .local p0, hasOrg:Z
    :goto_1
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 530
    .local v0, kindOrg:Lcom/android/contacts/model/AccountType$DataKind;
    if-eqz p0, :cond_4

    invoke-static {p2, v0}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result p0

    .end local p0           #hasOrg:Z
    if-eqz p0, :cond_4

    .line 531
    invoke-static {p2, v0}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object p0

    .line 533
    .local p0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v0, "company"

    .end local v0           #kindOrg:Lcom/android/contacts/model/AccountType$DataKind;
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, company:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    .end local v1           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    if-eqz v1, :cond_3

    .line 535
    const-string v1, "data1"

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_3
    const-string v0, "job_title"

    .end local v0           #company:Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 540
    const-string v1, "data4"

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .end local v0           #title:Ljava/lang/String;
    .end local p0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_4
    const-string p0, "notes"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    .line 546
    .local p0, hasNotes:Z
    const-string v0, "vnd.android.cursor.item/note"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 547
    .local v0, kindNotes:Lcom/android/contacts/model/AccountType$DataKind;
    if-eqz p0, :cond_5

    invoke-static {p2, v0}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result p0

    .end local p0           #hasNotes:Z
    if-eqz p0, :cond_5

    .line 548
    invoke-static {p2, v0}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object p0

    .line 550
    .local p0, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v0, "notes"

    .end local v0           #kindNotes:Lcom/android/contacts/model/AccountType$DataKind;
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, notes:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 552
    const-string v1, "data1"

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    .end local v0           #notes:Ljava/lang/String;
    .end local p0           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_5
    const-string p0, "data"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 558
    .local p0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz p0, :cond_0

    .line 559
    invoke-static {p2, p1, p0}, Lcom/android/contacts/model/EntityModifier;->parseValues(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 527
    .end local p0           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v1       #kind:Lcom/android/contacts/model/AccountType$DataKind;
    :cond_6
    const/4 p0, 0x0

    goto :goto_1
.end method

.method private static parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "accountType"
    .parameter "state"
    .parameter "extras"

    .prologue
    .line 566
    const-string v0, "vnd.android.cursor.item/name"

    invoke-static {p2, p1, v0}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 567
    const-string v0, "vnd.android.cursor.item/name"

    invoke-virtual {p2, v0}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object p2

    .line 569
    .local p2, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    const-string v0, "vnd.android.cursor.item/name"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object p1

    .line 572
    .local p1, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const/4 v2, 0x0

    .line 573
    .local v2, supportsDisplayName:Z
    iget-object v0, p1, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 574
    iget-object p1, p1, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    .end local p1           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/AccountType$EditField;

    .line 575
    .local p1, field:Lcom/android/contacts/model/AccountType$EditField;
    const-string v3, "data1"

    iget-object p1, p1, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .end local p1           #field:Lcom/android/contacts/model/AccountType$EditField;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 576
    const/4 p1, 0x1

    .line 582
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #supportsDisplayName:Z
    .local p1, supportsDisplayName:Z
    :goto_0
    if-eqz p1, :cond_3

    .line 583
    const-string p0, "data1"

    .end local p0
    invoke-virtual {p2, p0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .end local v1           #name:Ljava/lang/String;
    .end local p1           #supportsDisplayName:Z
    :cond_1
    :goto_1
    const-string p0, "phonetic_name"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 613
    .local p0, phoneticName:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 614
    const-string p1, "data7"

    invoke-virtual {p2, p1, p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_2
    return-void

    .line 585
    .restart local v1       #name:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #supportsDisplayName:Z
    :cond_3
    sget-object p1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .end local p1           #supportsDisplayName:Z
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "complete_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "data1"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 589
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p0, 0x5

    new-array v2, p0, [Ljava/lang/String;

    .end local p0           #context:Landroid/content/Context;
    const/4 p0, 0x0

    const-string p1, "data4"

    aput-object p1, v2, p0

    const/4 p0, 0x1

    const-string p1, "data2"

    aput-object p1, v2, p0

    const/4 p0, 0x2

    const-string p1, "data5"

    aput-object p1, v2, p0

    const/4 p0, 0x3

    const-string p1, "data3"

    aput-object p1, v2, p0

    const/4 p0, 0x4

    const-string p1, "data6"

    aput-object p1, v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 599
    .local p0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 600
    const-string p1, "data4"

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string p1, "data2"

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string p1, "data5"

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string p1, "data3"

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string p1, "data6"

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .local v1, name:Ljava/lang/String;
    .restart local v2       #supportsDisplayName:Z
    .local p0, context:Landroid/content/Context;
    :cond_5
    move p1, v2

    .end local v2           #supportsDisplayName:Z
    .restart local p1       #supportsDisplayName:Z
    goto/16 :goto_0
.end method

.method private static parseStructuredPostalExtra(Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 11
    .parameter "accountType"
    .parameter "state"
    .parameter "extras"

    .prologue
    .line 621
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    .line 622
    .local v1, kind:Lcom/android/contacts/model/AccountType$DataKind;
    const-string v3, "postal_type"

    const-string v4, "postal"

    const-string v5, "data1"

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    .line 624
    .local v7, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v7, :cond_3

    const/4 v0, 0x0

    move-object v6, v0

    .line 626
    .local v6, address:Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 627
    const/4 v10, 0x0

    .line 628
    .local v10, supportsFormatted:Z
    iget-object v0, v1, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, v1, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/AccountType$EditField;

    .line 630
    .local v8, field:Lcom/android/contacts/model/AccountType$EditField;
    const-string v0, "data1"

    iget-object v2, v8, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    const/4 v10, 0x1

    .line 637
    .end local v8           #field:Lcom/android/contacts/model/AccountType$EditField;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_1
    if-nez v10, :cond_2

    .line 638
    const-string v0, "data4"

    invoke-virtual {v7, v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 642
    .end local v10           #supportsFormatted:Z
    :cond_2
    return-void

    .line 624
    .end local v6           #address:Ljava/lang/String;
    :cond_3
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0
.end method

.method private static parseValues(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/util/ArrayList;)V
    .locals 13
    .parameter "state"
    .parameter "accountType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/AccountType;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p2, dataValueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 647
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "mimetype"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 648
    .local v8, mimeType:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 649
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype is required. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 654
    :cond_1
    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 658
    invoke-virtual {p1, v8}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v7

    .line 659
    .local v7, kind:Lcom/android/contacts/model/AccountType$DataKind;
    if-nez v7, :cond_2

    .line 660
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype not supported for account type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 665
    :cond_2
    invoke-static {v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    .line 666
    .local v4, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-static {v4, v7}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 670
    invoke-virtual {p0, v8}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 672
    .local v3, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    iget-boolean v10, v7, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    if-nez v10, :cond_3

    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 674
    :cond_3
    const/4 v0, 0x1

    .line 675
    .local v0, addEntry:Z
    const/4 v1, 0x0

    .line 676
    .local v1, count:I
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 677
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 678
    .local v2, delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_4

    .line 679
    invoke-static {v2, v9, v7}, Lcom/android/contacts/model/EntityModifier;->areEqual(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 680
    const/4 v0, 0x0

    .line 688
    .end local v2           #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_5
    iget v10, v7, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    iget v10, v7, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    if-lt v1, v10, :cond_6

    .line 689
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype allows at most "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " entries. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v0, 0x0

    .line 694
    :cond_6
    if-eqz v0, :cond_7

    .line 695
    invoke-static {v4, v3, v7}, Lcom/android/contacts/model/EntityModifier;->adjustType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v0

    .line 698
    :cond_7
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto/16 :goto_0

    .line 683
    .restart local v2       #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 703
    .end local v0           #addEntry:Z
    .end local v1           #count:I
    .end local v2           #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_9
    const/4 v0, 0x1

    .line 704
    .restart local v0       #addEntry:Z
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 705
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 706
    .restart local v2       #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {v2, v7}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 707
    const/4 v0, 0x0

    .line 711
    .end local v2           #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_b
    if-eqz v0, :cond_c

    .line 712
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 713
    .restart local v2       #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_2

    .line 718
    .end local v2           #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_c
    if-eqz v0, :cond_d

    .line 719
    invoke-static {v4, v3, v7}, Lcom/android/contacts/model/EntityModifier;->adjustType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v0

    .line 722
    :cond_d
    if-eqz v0, :cond_e

    .line 723
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto/16 :goto_0

    .line 724
    :cond_e
    const-string v10, "vnd.android.cursor.item/note"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 727
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 728
    .restart local v2       #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-static {v2, v7}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 729
    const-string v10, "data1"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data1"

    invoke-virtual {v2, v12}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "data1"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 735
    .end local v2           #delta:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_10
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Will not override mimetype "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 740
    .end local v0           #addEntry:Z
    .end local v3           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v4           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v7           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .end local v8           #mimeType:Ljava/lang/String;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_11
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V
    .locals 7
    .parameter "state"
    .parameter "accountType"

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 392
    .local v0, hasValues:Z
    invoke-virtual {p1}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountType$DataKind;

    .line 393
    .local v5, kind:Lcom/android/contacts/model/AccountType$DataKind;
    iget-object p1, v5, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    .line 394
    .local p1, mimeType:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 395
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz p1, :cond_0

    .line 397
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p1           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 399
    .local p1, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 400
    .local v3, touched:Z
    :goto_1
    if-nez v3, :cond_3

    .line 401
    const/4 p1, 0x1

    .end local v0           #hasValues:Z
    .local p1, hasValues:Z
    move v0, p1

    .line 402
    .end local p1           #hasValues:Z
    .restart local v0       #hasValues:Z
    goto :goto_0

    .line 399
    .end local v3           #touched:Z
    .local p1, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 406
    .restart local v3       #touched:Z
    :cond_3
    const-string v3, "com.google"

    .end local v3           #touched:Z
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v6, "account_type"

    invoke-virtual {v4, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 408
    .local v3, isGoogleAccount:Z
    const-string v4, "vnd.android.cursor.item/photo"

    iget-object v6, v5, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 409
    .local v4, isPhoto:Z
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    .line 411
    .local v3, isGooglePhoto:Z
    :goto_2
    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/AccountType$DataKind;)Z

    move-result v4

    .end local v4           #isPhoto:Z
    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    .line 413
    const-string v3, "EntityModifier"

    .end local v3           #isGooglePhoto:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trimming: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    move p1, v0

    .end local v0           #hasValues:Z
    .local p1, hasValues:Z
    :goto_3
    move v0, p1

    .line 418
    .end local p1           #hasValues:Z
    .restart local v0       #hasValues:Z
    goto :goto_0

    .line 409
    .local v3, isGoogleAccount:Z
    .restart local v4       #isPhoto:Z
    .local p1, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 415
    .end local v4           #isPhoto:Z
    .local v3, isGooglePhoto:Z
    :cond_5
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isFromTemplate()Z

    move-result p1

    .end local p1           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez p1, :cond_8

    .line 416
    const/4 p1, 0x1

    .end local v0           #hasValues:Z
    .local p1, hasValues:Z
    goto :goto_3

    .line 420
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isGooglePhoto:Z
    .end local v5           #kind:Lcom/android/contacts/model/AccountType$DataKind;
    .end local p1           #hasValues:Z
    .restart local v0       #hasValues:Z
    :cond_6
    if-nez v0, :cond_7

    .line 422
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->markDeleted()V

    .line 424
    :cond_7
    return-void

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #isGooglePhoto:Z
    .restart local v5       #kind:Lcom/android/contacts/model/AccountType$DataKind;
    :cond_8
    move p1, v0

    .end local v0           #hasValues:Z
    .restart local p1       #hasValues:Z
    goto :goto_3
.end method

.method public static trimEmpty(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)V
    .locals 6
    .parameter "set"
    .parameter "accountTypes"

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta;

    .line 361
    .local v2, state:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, accountType:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v3

    .line 363
    .local v3, type:Lcom/android/contacts/model/AccountType;
    invoke-static {v2, v3}, Lcom/android/contacts/model/EntityModifier;->trimEmpty(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V

    goto :goto_0

    .line 365
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #state:Lcom/android/contacts/model/EntityDelta;
    .end local v3           #type:Lcom/android/contacts/model/AccountType;
    :cond_0
    return-void
.end method
