.class Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;
.super Lcom/google/android/gsf/IGoogleLoginService$Stub;
.source "GoogleLoginService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/GoogleLoginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlsImplementation"
.end annotation


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/loginservice/GoogleLoginService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 949
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-direct {p0}, Lcom/google/android/gsf/IGoogleLoginService$Stub;-><init>()V

    .line 950
    iput-object p2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mContext:Landroid/content/Context;

    .line 951
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    .line 952
    return-void
.end method

.method private getAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "username"

    .prologue
    .line 1400
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1401
    :cond_0
    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$800(Landroid/accounts/AccountManager;Z)Ljava/lang/String;

    move-result-object v5

    .line 1411
    :goto_0
    return-object v5

    .line 1403
    :cond_1
    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1405
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v2, v3

    .line 1406
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, p1

    .line 1407
    goto :goto_0

    .line 1405
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1411
    .end local v0           #account:Landroid/accounts/Account;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private readAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "username"
    .parameter "service"

    .prologue
    .line 1388
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 1391
    :goto_0
    return-object v1

    .line 1390
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    .local v0, account:Landroid/accounts/Account;
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, p2}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public blockingGetCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/GoogleLoginCredentialsResult;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$1100(Landroid/accounts/AccountManager;Ljava/lang/String;)I

    move-result v0

    .line 1048
    if-nez p2, :cond_12

    .line 1049
    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$700(I)Ljava/lang/String;

    move-result-object v0

    .line 1057
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v2, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v1, v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 1058
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-static {v1, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$1000(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 1060
    new-instance v6, Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    invoke-direct {v6}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;-><init>()V

    .line 1062
    if-nez p1, :cond_b

    .line 1069
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1070
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 1072
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1073
    iget-object v7, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v8, "flags"

    invoke-virtual {v7, v5, v8}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1074
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1075
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1077
    :cond_0
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1080
    :cond_1
    array-length v2, v2

    int-to-long v2, v2

    .line 1082
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1084
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1086
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v7, v4

    .line 1088
    :goto_3
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    .line 1090
    :goto_4
    sub-long v1, v2, v7

    .line 1092
    const-string v3, "youtube"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "YouTubeUser"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    const/4 v3, 0x1

    .line 1095
    :goto_5
    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_6

    if-nez v3, :cond_6

    .line 1098
    new-instance v1, Lcom/google/android/gsf/LoginData;

    invoke-direct {v1}, Lcom/google/android/gsf/LoginData;-><init>()V

    .line 1099
    iput-object v0, v1, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 1100
    const/4 v0, 0x1

    iput v0, v1, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 1101
    sget-object v0, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    iput-object v0, v1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 1102
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/gsf/loginservice/LoginActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1103
    const-string v2, "loginData"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1104
    const-string v1, "existingAccount"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$800(Landroid/accounts/AccountManager;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1106
    invoke-virtual {v6, v0}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->setCredentialsIntent(Landroid/content/Intent;)V

    .line 1107
    invoke-virtual {v6, p1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->setAccount(Ljava/lang/String;)V

    move-object v0, v6

    .line 1232
    :goto_6
    return-object v0

    .line 1086
    :cond_3
    const-wide/16 v7, 0x0

    goto :goto_3

    .line 1088
    :cond_4
    const-wide/16 v4, 0x0

    goto :goto_4

    .line 1092
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 1113
    :cond_6
    if-eqz v3, :cond_7

    move-wide v1, v7

    .line 1114
    :goto_7
    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_8

    .line 1115
    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate account request from pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "requesting duplicate new account!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-wide v1, v4

    .line 1113
    goto :goto_7

    .line 1121
    :cond_8
    new-instance v1, Lcom/google/android/gsf/LoginData;

    invoke-direct {v1}, Lcom/google/android/gsf/LoginData;-><init>()V

    .line 1122
    iput-object v0, v1, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 1123
    const/4 v0, 0x1

    iput v0, v1, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 1124
    sget-object v0, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    iput-object v0, v1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 1125
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/gsf/loginservice/LoginActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1126
    const-string v2, "loginData"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1127
    const-string v2, "existingAccount"

    iget-object v4, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$800(Landroid/accounts/AccountManager;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    const-string v2, "callingUid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1129
    const-string v2, "isYoutubeRequest"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1130
    invoke-virtual {v6, v0}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->setCredentialsIntent(Landroid/content/Intent;)V

    .line 1131
    invoke-virtual {v6, p1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->setAccount(Ljava/lang/String;)V

    .line 1133
    const-string v2, "GoogleLoginService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifying ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "); no google account in database"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    if-eqz v3, :cond_a

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const v3, 0x7f0800b6

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1141
    :goto_8
    if-eqz p3, :cond_9

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-object v1, v1, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$400(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_9
    move-object v0, v6

    .line 1143
    goto/16 :goto_6

    .line 1135
    :cond_a
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const v3, 0x7f0800b5

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v7, v1, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getDefaultDomain(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_8

    .line 1148
    :cond_b
    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->readAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1149
    if-eqz v1, :cond_c

    .line 1150
    invoke-virtual {v6, v1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->setCredentialsString(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {v6, p1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->setAccount(Ljava/lang/String;)V

    move-object v0, v6

    .line 1152
    goto/16 :goto_6

    .line 1158
    :cond_c
    new-instance v2, Lcom/google/android/gsf/LoginData;

    invoke-direct {v2}, Lcom/google/android/gsf/LoginData;-><init>()V

    .line 1159
    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mService:Ljava/lang/String;

    .line 1160
    iput-object p1, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    .line 1162
    if-eqz p1, :cond_11

    .line 1163
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    .line 1165
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v1, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$000(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I

    move-result v1

    iput v1, v2, Lcom/google/android/gsf/LoginData;->mFlags:I

    .line 1166
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v1, v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$100(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gsf/LoginData;->mOAuthAccessToken:Ljava/lang/String;

    .line 1167
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1168
    iput-object v7, v2, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 1170
    :cond_d
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v3, "sha1hash"

    invoke-virtual {v1, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1171
    iget-object v1, v2, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 1173
    invoke-static {v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->fixOldOAuthToken(Lcom/google/android/gsf/LoginData;)V

    .line 1175
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-virtual {v3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAuthtoken(Landroid/accounts/Account;Landroid/content/Context;Lcom/google/android/gsf/LoginData;Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1177
    sget-object v0, Lcom/google/android/gsf/loginservice/GoogleLoginService$1;->$SwitchMap$com$google$android$gsf$LoginData$Status:[I

    iget-object v1, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1202
    const-string v0, "GoogleLoginService"

    iget-object v1, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/LoginData$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v0, 0x0

    .line 1219
    :goto_9
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/gsf/loginservice/LoginActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1220
    const-string v3, "loginData"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1221
    const-string v3, "callingUid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1223
    const-string v3, "GoogleLoginService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifying ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "); login failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    if-eqz v0, :cond_e

    .line 1225
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const v4, 0x7f0800b7

    invoke-virtual {v3, v4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$400(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1230
    :cond_e
    invoke-virtual {v6, v1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->setCredentialsIntent(Landroid/content/Intent;)V

    .line 1231
    invoke-virtual {v6, p1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->setAccount(Ljava/lang/String;)V

    move-object v0, v6

    .line 1232
    goto/16 :goto_6

    .line 1179
    :pswitch_0
    iget-object v0, v2, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->setCredentialsString(Ljava/lang/String;)V

    .line 1180
    iget-object v0, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->setAccount(Ljava/lang/String;)V

    move-object v0, v6

    .line 1181
    goto/16 :goto_6

    .line 1184
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mEncryptedPassword:Ljava/lang/String;

    .line 1185
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 1186
    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOGIN_FAIL "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v7, :cond_f

    const/4 v3, 0x1

    :goto_a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p3

    .line 1187
    goto :goto_9

    .line 1186
    :cond_f
    const/4 v3, 0x0

    goto :goto_a

    .line 1194
    :pswitch_2
    const-string v0, "GoogleLoginService"

    const-string v1, "CAPTCHA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p3

    .line 1195
    goto/16 :goto_9

    .line 1206
    :cond_10
    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no password stored for ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    sget-object v0, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    :goto_b
    move v0, p3

    goto/16 :goto_9

    .line 1210
    :cond_11
    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no account stored for ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    sget-object v0, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    iput-object v0, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    goto :goto_b

    :cond_12
    move-object v0, p2

    goto/16 :goto_0

    .line 1177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public deleteAllAccounts()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1359
    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v6, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v5, v6}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 1360
    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-static {v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$1200(Lcom/google/android/gsf/loginservice/GoogleLoginService;)V

    .line 1362
    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1364
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 1365
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v5, v0, v7, v7}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1364
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1367
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    return-void
.end method

.method public deleteOneAccount(Ljava/lang/String;)V
    .locals 4
    .parameter "username"

    .prologue
    const/4 v3, 0x0

    .line 1347
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v2, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v1, v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 1348
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-static {v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$1200(Lcom/google/android/gsf/loginservice/GoogleLoginService;)V

    .line 1350
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    .local v0, account:Landroid/accounts/Account;
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, v3, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1352
    return-void
.end method

.method public getAccount(Z)Ljava/lang/String;
    .locals 2
    .parameter "requireGoogle"

    .prologue
    .line 988
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {v0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$800(Landroid/accounts/AccountManager;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccounts()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 959
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v4, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v3, v4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 961
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 963
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v3, v1

    new-array v0, v3, [Ljava/lang/String;

    .line 964
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 965
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 964
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 967
    :cond_0
    return-object v0
.end method

.method public getAndroidId()J
    .locals 4

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrimaryAccount()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 976
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 977
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$800(Landroid/accounts/AccountManager;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 2
    .parameter "authtokenToInvalidate"

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 1245
    if-nez p1, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "username"
    .parameter "service"

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-static {v0, p2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$1000(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 1005
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->getAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1006
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1008
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->readAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public saveAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "service"
    .parameter "authtoken"

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$1200(Lcom/google/android/gsf/loginservice/GoogleLoginService;)V

    .line 1378
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$1400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveNewAccount(Lcom/google/android/gsf/LoginData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 1301
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$1200(Lcom/google/android/gsf/loginservice/GoogleLoginService;)V

    .line 1303
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveNewAccountInternal(Landroid/accounts/AccountManager;Landroid/content/Context;Lcom/google/android/gsf/LoginData;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1305
    sget-object v0, Lcom/google/android/gsf/LoginData$Status;->BAD_REQUEST:Lcom/google/android/gsf/LoginData$Status;

    iput-object v0, p1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 1307
    :cond_0
    return-void
.end method

.method public saveUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "username"
    .parameter "password"
    .parameter "flags"

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$1200(Lcom/google/android/gsf/loginservice/GoogleLoginService;)V

    .line 1280
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$1300(Landroid/accounts/AccountManager;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1282
    return-void
.end method

.method public tryNewAccount(Lcom/google/android/gsf/LoginData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$1200(Lcom/google/android/gsf/loginservice/GoogleLoginService;)V

    .line 1291
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->tryNewAccountInternal(Landroid/content/Context;Lcom/google/android/gsf/LoginData;)V

    .line 1292
    return-void
.end method

.method public updatePassword(Lcom/google/android/gsf/LoginData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 1320
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$1200(Lcom/google/android/gsf/loginservice/GoogleLoginService;)V

    .line 1322
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->updatePasswordInternal(Landroid/content/Context;Lcom/google/android/gsf/LoginData;)V

    .line 1324
    return-void
.end method

.method public verifyStoredPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    const-string v1, "com.google.android.googleapps.permission.GOOGLE_AUTH"

    invoke-static {v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$900(Lcom/google/android/gsf/loginservice/GoogleLoginService;Ljava/lang/String;)V

    .line 1336
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->this$0:Lcom/google/android/gsf/loginservice/GoogleLoginService;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->access$1200(Lcom/google/android/gsf/loginservice/GoogleLoginService;)V

    .line 1338
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->verifyStoredPasswordInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public waitForAndroidId()I
    .locals 5

    .prologue
    .line 1266
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GoogleLoginService$GlsImplementation;->getAndroidId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, -0x1

    move v0, v1

    .line 1267
    .local v0, result:I
    :goto_0
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in waitForAndroidId result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return v0

    .line 1266
    .end local v0           #result:I
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
