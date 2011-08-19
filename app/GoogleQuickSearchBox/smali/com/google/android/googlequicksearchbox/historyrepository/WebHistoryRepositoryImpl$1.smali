.class Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;
.super Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$LocalHistoryTask;
.source "WebHistoryRepositoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->getLocalHistory(Ljava/lang/String;ILcom/google/android/googlequicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

.field final synthetic val$localHistory:Lcom/google/android/googlequicksearchbox/util/Consumer;

.field final synthetic val$maxHistory:I

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;Ljava/lang/String;ILcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;->val$query:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;->val$maxHistory:I

    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;->val$localHistory:Lcom/google/android/googlequicksearchbox/util/Consumer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$LocalHistoryTask;-><init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, history:Lcom/google/android/googlequicksearchbox/SuggestionList;
    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;->val$query:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;->val$maxHistory:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->getLocalHistoryForQuery(Ljava/lang/String;I)Lcom/google/android/googlequicksearchbox/SuggestionList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;->val$localHistory:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-interface {v1, v0}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 136
    return-void

    .line 134
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;->val$localHistory:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-interface {v2, v0}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    throw v1
.end method
