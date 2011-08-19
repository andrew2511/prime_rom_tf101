.class public Lcom/google/android/voicesearch/util/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final FEATURE_LEGACY_HOSTED_OR_GOOGLE:[Ljava/lang/String; = null

.field private static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final KEY_GMAIL_ACCOUNT_TO_SEND_FROM:Ljava/lang/String; = "key_gmail_account_to_send_from"

.field private static final SPEECH_PERSONALIZATION_SERVICE:Ljava/lang/String; = "speechpersonalization"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContext:Landroid/content/Context;

.field private final mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-class v0, Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "legacy_hosted_or_google"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/voicesearch/util/AccountHelper;->FEATURE_LEGACY_HOSTED_OR_GOOGLE:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mContext:Landroid/content/Context;

    .line 70
    iput-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    .line 71
    iput-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/PersonalizationPrefManager;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    .line 78
    iput-object p2, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/util/AccountHelper;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/util/AccountHelper;->getSyncedAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/util/AccountHelper;)Landroid/accounts/AccountManager;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/util/AccountHelper;)Lcom/google/android/voicesearch/PersonalizationPrefManager;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/PersonalizationPrefManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/util/AccountHelper;)[Landroid/accounts/Account;
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/voicesearch/util/AccountHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/util/AccountHelper;Landroid/app/Activity;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/voicesearch/util/AccountHelper;->promptAuthToken(Landroid/app/Activity;[Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    if-nez v0, :cond_0

    move-object v0, v3

    .line 210
    :goto_0
    return-object v0

    .line 196
    :cond_0
    if-nez p1, :cond_1

    .line 197
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/util/AccountHelper;->getLegacyAccountValues()[Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/util/AccountHelper;->getSyncedAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    sget-object v1, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v2, "getAccounts error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 204
    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    .line 206
    sget-object v1, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v2, "getAccounts error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 207
    goto :goto_0

    .line 208
    :catch_2
    move-exception v0

    .line 209
    sget-object v1, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v2, "getAccounts error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 210
    goto :goto_0
.end method

.method private getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    .line 158
    sget-object v0, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v1, "mAccountManager.getAuthToken(...) returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 178
    :goto_0
    return-object v0

    .line 162
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    .line 163
    if-nez p0, :cond_1

    .line 164
    sget-object v0, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v1, "mAccountManager.getAuthToken(...).getResult() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 165
    goto :goto_0

    .line 168
    :cond_1
    const-string v0, "authtoken"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    sget-object v1, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v2, "getAuthToken error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 176
    goto :goto_0

    .line 172
    :catch_1
    move-exception v0

    .line 173
    sget-object v1, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v2, "getAuthToken error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 176
    goto :goto_0

    .line 174
    :catch_2
    move-exception v0

    .line 175
    sget-object v1, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v2, "getAuthToken error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    goto :goto_0
.end method

.method private getAuthToken([Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/voicesearch/util/AccountHelper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAuthTokens([Landroid/accounts/Account;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 216
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v4

    .line 234
    :goto_0
    return-object v0

    .line 222
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 224
    invoke-direct {p0, v3, p2}, Lcom/google/android/voicesearch/util/AccountHelper;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    if-eqz v3, :cond_2

    .line 227
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 231
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 232
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    :cond_4
    move-object v0, v4

    .line 234
    goto :goto_0
.end method

.method private getGoogleAccounts()[Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private getLegacyAccountValues()[Landroid/accounts/Account;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    sget-object v2, Lcom/google/android/voicesearch/util/AccountHelper;->FEATURE_LEGACY_HOSTED_OR_GOOGLE:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    .line 305
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 310
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method private getSyncedAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 6
    .parameter

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/google/android/voicesearch/util/AccountHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 280
    invoke-static {v4, p1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 281
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 286
    const/4 v0, 0x0

    .line 289
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/accounts/Account;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    move-object v0, p0

    goto :goto_1
.end method

.method private promptAuthToken(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    move-object v1, p2

    move-object v2, p3

    move-object v4, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 147
    return-void
.end method

.method private promptAuthToken(Landroid/app/Activity;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/voicesearch/util/AccountHelper;->promptAuthToken(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method private refreshAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 133
    return-void
.end method

.method private refreshAuthToken([Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/voicesearch/util/AccountHelper;->refreshAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public getContactAuthTokens()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    const-string v0, "com.android.contacts"

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/util/AccountHelper;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "speechpersonalization"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/util/AccountHelper;->getAuthTokens([Landroid/accounts/Account;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGmailAccounts(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 395
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mail"

    invoke-static {v4}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/google/android/voicesearch/util/AccountHelper$2;

    invoke-direct {v3, p0, p2}, Lcom/google/android/voicesearch/util/AccountHelper$2;-><init>(Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/util/AccountHelper$AccountsCallback;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 417
    return-void
.end method

.method public getGmailAccountsBlocking(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 426
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mail"

    invoke-static {v4}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 431
    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, p0

    .line 439
    :goto_0
    return-object v0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    sget-object v1, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v2, "Retreiving gmail accounts failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v0, v5

    .line 439
    goto :goto_0

    .line 434
    :catch_1
    move-exception v0

    .line 435
    sget-object v1, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v2, "Retreiving gmail accounts failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 436
    :catch_2
    move-exception v0

    .line 437
    sget-object v1, Lcom/google/android/voicesearch/util/AccountHelper;->TAG:Ljava/lang/String;

    const-string v2, "Retreiving gmail accounts failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getLastUsedGmailAccountIndex([Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 333
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mContext:Landroid/content/Context;

    const-string v1, "VoiceSearchPreferences"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 335
    const-string v1, "key_gmail_account_to_send_from"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    if-nez v0, :cond_0

    move v0, v3

    .line 344
    :goto_0
    return v0

    :cond_0
    move v1, v4

    .line 339
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 340
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 341
    goto :goto_0

    .line 339
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    .line 344
    goto :goto_0
.end method

.method public getSpeechPersonalizationServiceAuthToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/voicesearch/util/AccountHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "speechpersonalization"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/util/AccountHelper;->getAuthToken([Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    if-nez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    if-eqz p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public promptForPermissions(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 356
    new-instance v0, Lcom/google/android/voicesearch/util/AccountHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/voicesearch/util/AccountHelper$1;-><init>(Lcom/google/android/voicesearch/util/AccountHelper;Landroid/app/Activity;)V

    .line 385
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 386
    return-void
.end method

.method public refreshSpeechPersonalization()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/android/voicesearch/util/AccountHelper;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "speechpersonalization"

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/util/AccountHelper;->refreshAuthToken([Landroid/accounts/Account;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setLastUsedGmailAccount(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/voicesearch/util/AccountHelper;->mContext:Landroid/content/Context;

    const-string v1, "VoiceSearchPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 321
    const-string v1, "key_gmail_account_to_send_from"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 322
    invoke-static {v0}, Lcom/google/android/voicesearch/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 323
    return-void
.end method
