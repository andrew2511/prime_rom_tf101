.class final Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;
.super Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;
.source "WebHistoryRepositoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeleteTransaction"
.end annotation


# instance fields
.field private final mLowerCaseQuery:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "query"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    .line 203
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;-><init>()V

    .line 204
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;->mLowerCaseQuery:Ljava/lang/String;

    .line 205
    return-void
.end method


# virtual methods
.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8
    .parameter "db"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 209
    const-string v2, "history"

    invoke-static {}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->access$500()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;->mLowerCaseQuery:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    .line 211
    .local v0, returnVal:J
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->access$200(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;)Landroid/database/DataSetObservable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    move v2, v7

    .line 217
    :goto_0
    return v2

    .line 216
    :cond_0
    const-string v2, "QSB.HistoryRepositoryImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB Transaction (delete) unsuccessful, Return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 217
    goto :goto_0
.end method
