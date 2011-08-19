.class public Lcom/google/android/youtube/app/suggest/HistoryDb;
.super Ljava/lang/Object;
.source "HistoryDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/suggest/HistoryDb$DatabaseHelper;
    }
.end annotation


# instance fields
.field private openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private suggestionProjection:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0 AS suggest_format"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display1 AS suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display2 AS suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "query AS suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/youtube/app/suggest/HistoryDb;->suggestionProjection:[Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/google/android/youtube/app/suggest/HistoryDb$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/app/suggest/HistoryDb$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/suggest/HistoryDb;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 70
    return-void
.end method


# virtual methods
.method public clearHistory()V
    .locals 5

    .prologue
    .line 93
    iget-object v2, p0, Lcom/google/android/youtube/app/suggest/HistoryDb;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 94
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "suggestions"

    const-string v3, "1"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 95
    .local v1, numDeletedentries:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared search history "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public insert(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "History insert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/google/android/youtube/app/suggest/HistoryDb;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 81
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "suggestions"

    const-string v2, "query"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 82
    return-void
.end method

.method public query()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 85
    iget-object v1, p0, Lcom/google/android/youtube/app/suggest/HistoryDb;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "suggestions"

    iget-object v2, p0, Lcom/google/android/youtube/app/suggest/HistoryDb;->suggestionProjection:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 88
    .local v9, c:Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "History query returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 89
    return-object v9
.end method
