.class final Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;
.super Ljava/lang/Object;
.source "ReadingPositionSaver.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/ReadingPositionSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SaveCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "resolver"
    .parameter "account"
    .parameter "values"

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;->mResolver:Landroid/content/ContentResolver;

    .line 173
    iput-object p2, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;->mAccount:Landroid/accounts/Account;

    .line 174
    iput-object p3, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;->mValues:Landroid/content/ContentValues;

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/content/ContentValues;Lcom/google/android/apps/books/model/ReadingPositionSaver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;-><init>(Landroid/content/ContentResolver;Landroid/accounts/Account;Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v5, "ReadingPositionSaver"

    .line 178
    new-instance v0, Lcom/google/android/apps/books/sync/TableSynchronizer;

    new-instance v1, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;

    iget-object v2, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    .line 180
    .local v0, syncher:Lcom/google/android/apps/books/sync/TableSynchronizer;
    iget-object v1, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRow(Landroid/content/ContentValues;)V

    .line 181
    const-string v1, "ReadingPositionSaver"

    const/4 v1, 0x3

    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v1, "ReadingPositionSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/model/ReadingPositionSaver$SaveCallable;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
