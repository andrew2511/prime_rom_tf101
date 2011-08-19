.class public Lcom/android/providers/contacts/DataRowHandlerForStructuredName;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForStructuredName.java"


# instance fields
.field private final STRUCTURED_FIELDS:[Ljava/lang/String;

.field private final mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

.field private final mSb:Ljava/lang/StringBuilder;

.field private final mSplitter:Lcom/android/providers/contacts/NameSplitter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/NameLookupBuilder;)V
    .locals 3
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter "splitter"
    .parameter "nameLookupBuilder"

    .prologue
    .line 39
    const-string v0, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    .line 112
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data6"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->STRUCTURED_FIELDS:[Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 41
    iput-object p5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    .line 42
    return-void
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 9
    .parameter "builder"

    .prologue
    const/4 v8, 0x0

    .line 194
    const-string v5, "data1"

    invoke-virtual {p1, v5}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, name:Ljava/lang/String;
    const-string v5, "data10"

    invoke-virtual {p1, v5}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 197
    .local v0, fullNameStyle:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v6

    :goto_0
    invoke-virtual {v5, p1, v1, v6}, Lcom/android/providers/contacts/NameLookupBuilder;->appendToSearchIndex(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V

    .line 201
    const-string v5, "data9"

    invoke-virtual {p1, v5}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, phoneticFamily:Ljava/lang/String;
    const-string v5, "data8"

    invoke-virtual {p1, v5}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, phoneticMiddle:Ljava/lang/String;
    const-string v5, "data7"

    invoke-virtual {p1, v5}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, phoneticGiven:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 208
    :cond_0
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 209
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 210
    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 211
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 214
    invoke-virtual {p1, v4}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 215
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 218
    invoke-virtual {p1, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 219
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_3
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 223
    :cond_4
    return-void

    .end local v2           #phoneticFamily:Ljava/lang/String;
    .end local v3           #phoneticGiven:Ljava/lang/String;
    .end local v4           #phoneticMiddle:Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 197
    goto :goto_0
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 182
    const-string v0, "data3"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data9"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data7"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data8"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data4"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data6"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    .line 98
    const/4 v5, 0x0

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 99
    .local v1, dataId:J
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 101
    .local v3, rawContactId:J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 103
    .local v0, count:I
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 104
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 105
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 106
    return v0
.end method

.method public fixStructuredNameComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 9
    .parameter "augmented"
    .parameter "update"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 124
    const-string v6, "data1"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, unstruct:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move v3, v8

    .line 127
    .local v3, touchedUnstruct:Z
    :goto_0
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->STRUCTURED_FIELDS:[Ljava/lang/String;

    invoke-virtual {p0, p2, v6}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->areAllEmpty(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v2, v8

    .line 129
    .local v2, touchedStruct:Z
    :goto_1
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 130
    new-instance v1, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v1}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 131
    .local v1, name:Lcom/android/providers/contacts/NameSplitter$Name;
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v6, v1, v5}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, p2}, Lcom/android/providers/contacts/NameSplitter$Name;->toValues(Landroid/content/ContentValues;)V

    .line 161
    .end local v1           #name:Lcom/android/providers/contacts/NameSplitter$Name;
    :cond_0
    :goto_2
    return-void

    .end local v2           #touchedStruct:Z
    .end local v3           #touchedUnstruct:Z
    :cond_1
    move v3, v7

    .line 126
    goto :goto_0

    .restart local v3       #touchedUnstruct:Z
    :cond_2
    move v2, v7

    .line 127
    goto :goto_1

    .line 133
    .restart local v2       #touchedStruct:Z
    :cond_3
    if-nez v3, :cond_5

    if-nez v2, :cond_4

    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->STRUCTURED_FIELDS:[Ljava/lang/String;

    invoke-virtual {p0, p2, v6}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->areAnySpecified(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 139
    :cond_4
    new-instance v1, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v1}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 140
    .restart local v1       #name:Lcom/android/providers/contacts/NameSplitter$Name;
    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/NameSplitter$Name;->fromValues(Landroid/content/ContentValues;)V

    .line 142
    iput v7, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 143
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v6, v1}, Lcom/android/providers/contacts/NameSplitter;->guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 144
    iget v4, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 145
    .local v4, unadjustedFullNameStyle:I
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    iget v7, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v6

    iput v6, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 146
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v6, v1, v8, v8}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, joined:Ljava/lang/String;
    const-string v6, "data1"

    invoke-virtual {p2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v6, "data10"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v6, "data11"

    iget v7, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 151
    .end local v0           #joined:Ljava/lang/String;
    .end local v1           #name:Lcom/android/providers/contacts/NameSplitter$Name;
    .end local v4           #unadjustedFullNameStyle:I
    :cond_5
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 152
    const-string v6, "data10"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 153
    const-string v6, "data10"

    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v7, v5}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    :cond_6
    const-string v6, "data11"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 157
    const-string v6, "data11"

    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v7, v5}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2
.end method

.method public hasSearchableData()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 17
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 47
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixStructuredNameComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 49
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v7

    .line 51
    .local v7, dataId:J
    const-string v4, "data1"

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, name:Ljava/lang/String;
    const-string v4, "data10"

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 53
    .local v16, fullNameStyle:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    move-object v4, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object v5, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v5

    move v10, v5

    :goto_0
    move-wide/from16 v5, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;I)V

    move-object/from16 v10, p0

    move-wide/from16 v11, p3

    move-wide v13, v7

    move-object/from16 v15, p5

    .line 57
    invoke-virtual/range {v10 .. v15}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->insertNameLookupForPhoneticName(JJLandroid/content/ContentValues;)V

    .line 58
    invoke-virtual/range {p0 .. p4}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 60
    return-wide v7

    .line 53
    :cond_0
    const/4 v5, 0x0

    move v10, v5

    goto :goto_0
.end method

.method public insertNameLookupForPhoneticName(JJLandroid/content/ContentValues;)V
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 165
    const-string v0, "data9"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data7"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data8"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "data9"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "data8"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "data7"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForPhoneticName(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    return-void
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 18
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 66
    const/4 v5, 0x0

    move-object/from16 v0, p4

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 67
    .local v8, dataId:J
    const/4 v5, 0x1

    move-object/from16 v0, p4

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 69
    .local v6, rawContactId:J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v8

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v16

    .line 70
    .local v16, augmented:Landroid/content/ContentValues;
    if-nez v16, :cond_0

    .line 71
    const/4 v5, 0x0

    .line 93
    :goto_0
    return v5

    .line 74
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixStructuredNameComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 76
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    .line 77
    const-string v5, "data1"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "data9"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "data8"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "data7"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    :cond_1
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 82
    const-string v5, "data1"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 83
    .local v10, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5, v8, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 84
    const-string v5, "data10"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 85
    .local v17, fullNameStyle:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    move-object v5, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object v11, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v11

    :goto_1
    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;I)V

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide v14, v8

    .line 89
    invoke-virtual/range {v11 .. v16}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->insertNameLookupForPhoneticName(JJLandroid/content/ContentValues;)V

    .line 91
    .end local v10           #name:Ljava/lang/String;
    .end local v17           #fullNameStyle:Ljava/lang/Integer;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v3, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 93
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 85
    .restart local v10       #name:Ljava/lang/String;
    .restart local v17       #fullNameStyle:Ljava/lang/Integer;
    :cond_3
    const/4 v11, 0x0

    goto :goto_1
.end method
