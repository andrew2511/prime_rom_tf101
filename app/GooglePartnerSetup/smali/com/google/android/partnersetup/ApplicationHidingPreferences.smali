.class public Lcom/google/android/partnersetup/ApplicationHidingPreferences;
.super Ljava/lang/Object;
.source "ApplicationHidingPreferences.java"


# static fields
.field private static mPreferences:Lcom/google/android/partnersetup/ApplicationHidingPreferences;


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "ApplicationHidingPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 25
    return-void
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/google/android/partnersetup/ApplicationHidingPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    const-class v0, Lcom/google/android/partnersetup/ApplicationHidingPreferences;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->mPreferences:Lcom/google/android/partnersetup/ApplicationHidingPreferences;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/google/android/partnersetup/ApplicationHidingPreferences;

    invoke-direct {v1, p0}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->mPreferences:Lcom/google/android/partnersetup/ApplicationHidingPreferences;

    .line 31
    :cond_0
    sget-object v1, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->mPreferences:Lcom/google/android/partnersetup/ApplicationHidingPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setHidingRunCount(I)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hiding_run_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getHidingRunCount()I
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "hiding_run_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public incrementHidingRunCount()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->getHidingRunCount()I

    move-result v0

    .line 57
    .local v0, bootCount:I
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/partnersetup/ApplicationHidingPreferences;->setHidingRunCount(I)Z

    .line 58
    return-void
.end method
