.class public Lcom/android/providers/contacts/DataRowHandlerForOrganization;
.super Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.source "DataRowHandlerForOrganization.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 7
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"

    .prologue
    .line 36
    const-string v4, "vnd.android.cursor.item/organization"

    const-string v5, "data2"

    const-string v6, "data3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 128
    const-string v0, "data4"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;)V

    .line 129
    const-string v0, "data1"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 130
    const-string v0, "data8"

    invoke-virtual {p1, v0, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 132
    const-string v0, "data7"

    invoke-virtual {p1, v0, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 133
    const-string v0, "data5"

    invoke-virtual {p1, v0, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 134
    const-string v0, "data9"

    invoke-virtual {p1, v0, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 135
    const-string v0, "data6"

    invoke-virtual {p1, v0, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 136
    return-void
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 117
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data6"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data9"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data8"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data7"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data4"

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
    .line 96
    const/4 v5, 0x0

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 97
    .local v1, dataId:J
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 99
    .local v3, rawContactId:J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 100
    .local v0, count:I
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 101
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 102
    return v0
.end method

.method protected getTypeRank(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 111
    const/16 v0, 0x3e8

    :goto_0
    return v0

    .line 108
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 5
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 43
    const-string v4, "data1"

    invoke-virtual {p5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, company:Ljava/lang/String;
    const-string v4, "data4"

    invoke-virtual {p5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, title:Ljava/lang/String;
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v1

    .line 48
    .local v1, dataId:J
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 49
    return-wide v1
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 11
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 55
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 56
    const/4 v8, 0x0

    .line 91
    :goto_0
    return v8

    .line 59
    :cond_0
    const-string v8, "data1"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 60
    .local v1, containsCompany:Z
    const-string v8, "data4"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 61
    .local v2, containsTitle:Z
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 62
    :cond_1
    const/4 v8, 0x0

    invoke-interface {p4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 63
    .local v3, dataId:J
    const/4 v8, 0x1

    invoke-interface {p4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 67
    .local v5, rawContactId:J
    if-eqz v1, :cond_3

    .line 68
    const-string v8, "data1"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, company:Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_4

    .line 79
    const-string v8, "data4"

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, title:Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v8, v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 89
    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 91
    .end local v0           #company:Ljava/lang/String;
    .end local v3           #dataId:J
    .end local v5           #rawContactId:J
    .end local v7           #title:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 70
    .restart local v3       #dataId:J
    .restart local v5       #rawContactId:J
    :cond_3
    iget-object v8, p0, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 71
    const-string v8, "SELECT data1 FROM data WHERE _id=?"

    iget-object v9, p0, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, v8, v9}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #company:Ljava/lang/String;
    goto :goto_1

    .line 81
    :cond_4
    iget-object v8, p0, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 82
    const-string v8, "SELECT data4 FROM data WHERE _id=?"

    iget-object v9, p0, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, v8, v9}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #title:Ljava/lang/String;
    goto :goto_2
.end method
