.class public Lcom/google/android/youtube/core/utils/SafeSearch;
.super Ljava/lang/Object;
.source "SafeSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private mode:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;",
            ">;"
        }
    .end annotation
.end field

.field private parentalControl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->prefs:Landroid/content/SharedPreferences;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->parentalControl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->STRICT:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->mode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    return-void
.end method


# virtual methods
.method public getMode()Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->mode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    return-object p0
.end method

.method public hasParentalControl()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->parentalControl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 49
    const-string v1, "checking parental control"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->parentalControl:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->context:Landroid/content/Context;

    const-string v3, "youtube"

    invoke-static {v2, v3}, Lcom/google/android/common/ParentalControl;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parental control is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->parentalControl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->parentalControl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "safe_search"

    sget-object v3, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->MODERATE:Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, modeIndex:I
    invoke-static {}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->values()[Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/utils/SafeSearch;->setMode(Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;)V

    .line 56
    .end local v0           #modeIndex:I
    :cond_0
    return-void
.end method

.method public declared-synchronized setMode(Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->mode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "safe_search"

    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/SafeSearch;->mode:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
