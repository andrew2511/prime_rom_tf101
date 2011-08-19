.class public Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForCommonDataKind.java"


# instance fields
.field private final mLabelColumn:Ljava/lang/String;

.field private final mTypeColumn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter "mimetype"
    .parameter "typeColumn"
    .parameter "labelColumn"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 37
    iput-object p5, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mTypeColumn:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mLabelColumn:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private enforceTypeAndLabel(Landroid/content/ContentValues;)V
    .locals 5
    .parameter "augmented"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mTypeColumn:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v4

    .line 67
    .local v1, hasType:Z
    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mLabelColumn:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v4

    .line 69
    .local v0, hasLabel:Z
    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 71
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mTypeColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be specified when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mLabelColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is defined."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #hasLabel:Z
    .end local v1           #hasType:Z
    :cond_0
    move v1, v3

    .line 66
    goto :goto_0

    .restart local v1       #hasType:Z
    :cond_1
    move v0, v3

    .line 67
    goto :goto_1

    .line 74
    .restart local v0       #hasLabel:Z
    :cond_2
    return-void
.end method


# virtual methods
.method public hasSearchableData()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 2
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 44
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->enforceTypeAndLabel(Landroid/content/ContentValues;)V

    .line 45
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 4
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 52
    .local v1, dataId:J
    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 53
    .local v0, augmented:Landroid/content/ContentValues;
    if-nez v0, :cond_0

    .line 57
    :goto_0
    return v3

    .line 56
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->enforceTypeAndLabel(Landroid/content/ContentValues;)V

    .line 57
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v3

    goto :goto_0
.end method
