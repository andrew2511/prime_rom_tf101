.class public Lcom/android/email/VendorPolicyLoader;
.super Ljava/lang/Object;
.source "VendorPolicyLoader.java"


# static fields
.field private static final ARGS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/email/VendorPolicyLoader;


# instance fields
.field private final mPolicyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/os/Bundle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/VendorPolicyLoader;->ARGS:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 98
    const-string v0, "com.android.email.policy"

    const-string v1, "com.android.email.policy.EmailPolicy"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/email/VendorPolicyLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "context"
    .parameter "apkPackageName"
    .parameter "className"
    .parameter "allowNonSystemApk"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-nez p4, :cond_0

    invoke-static {p1, p2}, Lcom/android/email/VendorPolicyLoader;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/email/VendorPolicyLoader;->mPolicyMethod:Ljava/lang/reflect/Method;

    .line 130
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v1, 0x0

    .line 113
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 115
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 117
    .local v4, policyContext:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 118
    .local v0, classLoader:Ljava/lang/ClassLoader;
    invoke-virtual {v0, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 119
    const-string v5, "getPolicy"

    sget-object v6, Lcom/android/email/VendorPolicyLoader;->ARGS:[Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 129
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v4           #policyContext:Landroid/content/Context;
    :goto_1
    iput-object v3, p0, Lcom/android/email/VendorPolicyLoader;->mPolicyMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 122
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 124
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VendorPolicyLoader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 125
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 127
    .local v2, e:Ljava/lang/NoSuchMethodException;
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VendorPolicyLoader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 120
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public static clearInstanceForTest()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/VendorPolicyLoader;->sInstance:Lcom/android/email/VendorPolicyLoader;

    .line 95
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    sget-object v0, Lcom/android/email/VendorPolicyLoader;->sInstance:Lcom/android/email/VendorPolicyLoader;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/email/VendorPolicyLoader;

    invoke-direct {v0, p0}, Lcom/android/email/VendorPolicyLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/VendorPolicyLoader;->sInstance:Lcom/android/email/VendorPolicyLoader;

    .line 72
    :cond_0
    sget-object v0, Lcom/android/email/VendorPolicyLoader;->sInstance:Lcom/android/email/VendorPolicyLoader;

    return-object v0
.end method

.method public static injectPolicyForTest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .parameter "context"
    .parameter "apkPackageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 81
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, name:Ljava/lang/String;
    const-string v1, "Email"

    const-string v2, "Using policy: package=%s name=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v1, Lcom/android/email/VendorPolicyLoader;

    invoke-direct {v1, p0, p1, v0, v5}, Lcom/android/email/VendorPolicyLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v1, Lcom/android/email/VendorPolicyLoader;->sInstance:Lcom/android/email/VendorPolicyLoader;

    .line 85
    return-void
.end method

.method static isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 135
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 136
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 138
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v2

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_0
    move v2, v4

    .line 136
    goto :goto_0

    .line 137
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v2, v4

    .line 138
    goto :goto_0
.end method


# virtual methods
.method public findProviderForDomain(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 5
    .parameter "domain"

    .prologue
    const/4 v4, 0x0

    .line 218
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v2, params:Landroid/os/Bundle;
    const-string v3, "findProvider"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v3, "findProvider"

    invoke-virtual {p0, v3, v2}, Lcom/android/email/VendorPolicyLoader;->getPolicy(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 221
    .local v0, out:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V

    .line 223
    .local v1, p:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 224
    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->label:Ljava/lang/String;

    .line 225
    iput-object p1, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 226
    const-string v3, "findProvider.inUri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/lang/String;

    .line 227
    const-string v3, "findProvider.inUser"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    .line 228
    const-string v3, "findProvider.outUri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/lang/String;

    .line 229
    const-string v3, "findProvider.outUser"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    .line 230
    const-string v3, "findProvider.note"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    move-object v3, v1

    .line 233
    .end local v1           #p:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method public getImapIdValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "userName"
    .parameter "host"
    .parameter "capabilities"

    .prologue
    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v0, params:Landroid/os/Bundle;
    const-string v2, "getImapId.user"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v2, "getImapId.host"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "getImapId.capabilities"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "getImapId"

    invoke-virtual {p0, v2, v0}, Lcom/android/email/VendorPolicyLoader;->getPolicy(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "getImapId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, result:Ljava/lang/String;
    return-object v1
.end method

.method getPolicy(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .parameter "policy"
    .parameter "args"

    .prologue
    .line 149
    const/4 v2, 0x0

    .line 150
    .local v2, ret:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/email/VendorPolicyLoader;->mPolicyMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 152
    :try_start_0
    iget-object v3, p0, Lcom/android/email/VendorPolicyLoader;->mPolicyMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/Bundle;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    move-object v3, v2

    :goto_1
    return-object v3

    .line 153
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 154
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Email"

    const-string v4, "VendorPolicyLoader"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 157
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_1
.end method

.method public useAlternateExchangeStrings()Z
    .locals 3

    .prologue
    .line 169
    const-string v0, "useAlternateExchangeStrings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/VendorPolicyLoader;->getPolicy(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "useAlternateExchangeStrings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
