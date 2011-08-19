.class public Lcom/google/android/apps/books/app/AccountsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/google/android/apps/books/app/AccountsReceiver;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 40
    .local v1, arrayValue:Ljava/lang/Object;,"TT;"
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    const/4 v4, 0x1

    .line 44
    .end local v1           #arrayValue:Ljava/lang/Object;,"TT;"
    :goto_1
    return v4

    .line 39
    .restart local v1       #arrayValue:Ljava/lang/Object;,"TT;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    .end local v1           #arrayValue:Ljava/lang/Object;,"TT;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/books/service/SetSyncableService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v1, service:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 33
    new-instance v2, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;-><init>(Lcom/google/android/apps/books/app/AccountsReceiver;Landroid/content/Context;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 35
    .end local v1           #service:Landroid/content/Intent;
    :cond_0
    return-void
.end method
