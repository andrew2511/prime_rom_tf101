.class public final Lcom/google/android/apps/uploader/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/uploader/b;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Landroid/accounts/AccountManager;

.field private final d:Ljava/lang/String;

.field private final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "service_lh2"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/uploader/g;->a:[Ljava/lang/String;

    .line 32
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "service_youtube"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/uploader/g;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/g;->c:Landroid/accounts/AccountManager;

    .line 46
    iput-object p2, p0, Lcom/google/android/apps/uploader/g;->d:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/google/android/apps/uploader/g;->e:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/apps/uploader/g;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 5
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/apps/uploader/g;->c:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 144
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 145
    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 149
    :goto_1
    return-object v0

    .line 144
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/apps/uploader/g;->b:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 63
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " authToken for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/g;->b(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/g;->c:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/apps/uploader/g;->d:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v1, "MediaUploader"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    const-string v1, "MediaUploader"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 72
    :catch_2
    move-exception v0

    .line 73
    const-string v1, "MediaUploader"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 80
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshing authToken for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/uploader/g;->c:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/apps/uploader/c;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/uploader/g;->c:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    iget-object v2, p0, Lcom/google/android/apps/uploader/g;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/uploader/g;->e:[Ljava/lang/String;

    new-instance v6, Lcom/google/android/apps/uploader/j;

    invoke-direct {v6, p0, p2}, Lcom/google/android/apps/uploader/j;-><init>(Lcom/google/android/apps/uploader/g;Lcom/google/android/apps/uploader/c;)V

    move-object v5, p1

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 177
    return-void
.end method

.method public final a(Lcom/google/android/apps/uploader/c;)V
    .locals 5
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/uploader/g;->c:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    iget-object v2, p0, Lcom/google/android/apps/uploader/g;->e:[Ljava/lang/String;

    new-instance v3, Lcom/google/android/apps/uploader/i;

    invoke-direct {v3, p0, p1}, Lcom/google/android/apps/uploader/i;-><init>(Lcom/google/android/apps/uploader/g;Lcom/google/android/apps/uploader/c;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 140
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/android/apps/uploader/c;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/g;->b(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/uploader/g;->c:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/apps/uploader/g;->d:Ljava/lang/String;

    new-instance v5, Lcom/google/android/apps/uploader/h;

    invoke-direct {v5, p0, p1, p3}, Lcom/google/android/apps/uploader/h;-><init>(Lcom/google/android/apps/uploader/g;Ljava/lang/String;Lcom/google/android/apps/uploader/c;)V

    move-object v4, p2

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/google/android/apps/uploader/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
