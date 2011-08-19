.class public abstract Lcom/android/contacts/model/AccountTypeManager;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 76
    const-class v0, Lcom/android/contacts/model/AccountTypeManager;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-direct {v1, p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 4
    .parameter "context"

    .prologue
    .line 66
    const-string v1, "contactAccountTypes"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountTypeManager;

    .line 68
    .local v0, service:Lcom/android/contacts/model/AccountTypeManager;
    if-nez v0, :cond_0

    .line 69
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->createAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 70
    const-string v1, "AccountTypeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No account type service in context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;
.end method

.method public abstract getAccounts(Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end method

.method public getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 2
    .parameter "accountType"
    .parameter "mimeType"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 90
    .local v0, type:Lcom/android/contacts/model/AccountType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v1

    goto :goto_0
.end method
