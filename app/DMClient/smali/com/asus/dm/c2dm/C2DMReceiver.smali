.class public Lcom/asus/dm/c2dm/C2DMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "C2DMReceiver.java"


# static fields
.field public static final ERR_ACCOUNT_MISSING:Ljava/lang/String; = "ACCOUNT_MISSING"

.field public static final ERR_AUTHENTICATION_FAILED:Ljava/lang/String; = "AUTHENTICATION_FAILED"

.field public static final ERR_INVALID_PARAMETERS:Ljava/lang/String; = "INVALID_PARAMETERS"

.field public static final ERR_INVALID_SENDER:Ljava/lang/String; = "INVALID_SENDER"

.field public static final ERR_PHONE_REGISTRATION_ERROR:Ljava/lang/String; = "PHONE_REGISTRATION_ERROR"

.field public static final ERR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field public static final ERR_TOO_MANY_REGISTRATIONS:Ljava/lang/String; = "TOO_MANY_REGISTRATIONS"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_REGISTRATION_APP_NAME:Ljava/lang/String; = "registration_app_name"

.field public static final EXTRA_REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field public static final EXTRA_SESSION_INITIATOR:Ljava/lang/String; = "session_initiator"

.field public static final EXTRA_UNREGISTERED:Ljava/lang/String; = "unregistered"

.field private static final RETRY_INTERVAL:[J = null

.field private static final TAG:Ljava/lang/String; = "C2DMReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asus/dm/c2dm/C2DMReceiver;->RETRY_INTERVAL:[J

    return-void

    :array_0
    .array-data 0x8
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0xd4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xa9t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xeet 0x36t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xa8t 0x12t 0x1t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x51t 0x25t 0x2t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xa2t 0x4at 0x4t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private decodeC2DMPkg0(Ljava/lang/String;)[B
    .locals 10
    .parameter "rcvMsg"

    .prologue
    const/4 v9, 0x0

    .line 204
    const-string v5, "#D*M*C#"

    .line 207
    .local v5, sinature:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_1

    :cond_0
    move-object v7, v9

    .line 231
    :goto_0
    return-object v7

    .line 211
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, tempByte:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 214
    .local v3, length:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v1, v7, 0x2

    .line 216
    .local v1, headerIndex:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 217
    const-string v7, "C2DMReceiver"

    const-string v8, "DMIntializeOverSMS parse failed!! "

    invoke-static {v7, v8}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v9

    .line 218
    goto :goto_0

    .line 221
    :cond_2
    new-array v4, v3, [B

    .line 223
    .local v4, ni_data:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 224
    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v1

    mul-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 225
    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v4, v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v7, v4

    .line 228
    goto :goto_0

    .line 229
    .end local v1           #headerIndex:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #ni_data:[B
    .end local v6           #tempByte:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 230
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v7, "C2DMReceiver"

    const-string v8, "Error DMIntializeOverSMS parse: "

    invoke-static {v7, v8, v0}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v9

    .line 231
    goto :goto_0
.end method

.method private getGoogleAccounts(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v1, accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 192
    .local v2, accounts:[Landroid/accounts/Account;
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 193
    .local v0, account:Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.google"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 194
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 198
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 199
    .local v6, result:[Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 200
    return-object v6
.end method

.method private handleMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "pack0"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, rcvMsg:Ljava/lang/String;
    const-string v3, "C2DMReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pack0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, v2}, Lcom/asus/dm/c2dm/C2DMReceiver;->decodeC2DMPkg0(Ljava/lang/String;)[B

    move-result-object v1

    .line 164
    .local v1, niData:[B
    if-eqz v1, :cond_0

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/asus/dm/DMService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, myIntent:Landroid/content/Intent;
    const-string v3, "NIParams"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 167
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 169
    .end local v0           #myIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 63
    const-string v8, "registration_id"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, registrationId:Ljava/lang/String;
    const-string v8, "error"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, error:Ljava/lang/String;
    const-string v8, "unregistered"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, removed:Ljava/lang/String;
    const-string v8, "C2DMReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dmControl: registrationId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", removed = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-eqz v4, :cond_1

    .line 72
    invoke-static {p1}, Lcom/asus/dm/c2dm/C2DMessaging;->clearRegistrationId(Landroid/content/Context;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/asus/dm/c2dm/C2DMReceiver;->onUnregistered(Landroid/content/Context;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    if-eqz v2, :cond_4

    .line 102
    invoke-static {p1}, Lcom/asus/dm/c2dm/C2DMessaging;->clearRegistrationId(Landroid/content/Context;)V

    .line 104
    const-string v8, "C2DMReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "C2DM Registration error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p1, v2}, Lcom/asus/dm/c2dm/C2DMReceiver;->onError(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    const-string v8, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "PHONE_REGISTRATION_ERROR"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 108
    :cond_2
    const-string v8, "C2DMReceiver"

    const-string v9, "Register fail and schedule retrying."

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcom/asus/dm/c2dm/C2DMessaging;->getRegisterRetryCount(Landroid/content/Context;)I

    move-result v5

    .line 112
    .local v5, retryCount:I
    invoke-static {p1, v12}, Lcom/asus/dm/c2dm/C2DMessaging;->setC2dmSendRegIdStatus(Landroid/content/Context;Z)V

    .line 114
    sget-object v8, Lcom/asus/dm/c2dm/C2DMReceiver;->RETRY_INTERVAL:[J

    array-length v8, v8

    if-ge v5, v8, :cond_0

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v10, Lcom/asus/dm/c2dm/C2DMReceiver;->RETRY_INTERVAL:[J

    aget-wide v10, v10, v5

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 117
    .local v1, backoffTimeMs:Ljava/lang/Long;
    const-string v8, "C2DMReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scheduling registration retry, backoff = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/asus/dm/c2dm/C2DMReceiver;

    invoke-direct {v6, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v6, retryIntent:Landroid/content/Intent;
    const-string v8, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-static {p1, v12, v6, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 127
    .local v7, retryPIntent:Landroid/app/PendingIntent;
    const-string v8, "alarm"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 129
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v0, v8, v9, v10, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 131
    add-int/lit8 v5, v5, 0x1

    invoke-static {p1, v5}, Lcom/asus/dm/c2dm/C2DMessaging;->setRegisterRetryCount(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 133
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #backoffTimeMs:Ljava/lang/Long;
    .end local v5           #retryCount:I
    .end local v6           #retryIntent:Landroid/content/Intent;
    .end local v7           #retryPIntent:Landroid/app/PendingIntent;
    :cond_3
    const-string v8, "ACCOUNT_MISSING"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 135
    const-string v8, "AUTHENTICATION_FAILED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 137
    const-string v8, "INVALID_SENDER"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 139
    const-string v8, "TOO_MANY_REGISTRATIONS"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_0

    .line 142
    :cond_4
    if-eqz v3, :cond_0

    .line 143
    invoke-static {p1, v12}, Lcom/asus/dm/c2dm/C2DMessaging;->setResendIdCount(Landroid/content/Context;I)V

    .line 144
    invoke-static {p1, v12}, Lcom/asus/dm/c2dm/C2DMessaging;->setRegisterRetryCount(Landroid/content/Context;I)V

    .line 147
    invoke-static {p1}, Lcom/asus/dm/c2dm/RegC2dmIdInitiator$RetryBroadcastReceiver;->cancelRetryAlarm(Landroid/content/Context;)V

    .line 150
    invoke-direct {p0, p1, v3}, Lcom/asus/dm/c2dm/C2DMReceiver;->sendRegIdToServer(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    const-string v8, "C2DMReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Registered ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.ctp.UPDATE_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method private onUnregistered(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 174
    return-void
.end method

.method private sendRegIdToServer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "regID"

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/dm/DMService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v0, i:Landroid/content/Intent;
    const-string v1, "registration_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "registration_app_name"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "com.asus.dm.DMService.sendRegID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 186
    invoke-static {p1, p2}, Lcom/asus/dm/c2dm/C2DMessaging;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 43
    const-string v0, "C2DMReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/asus/dm/c2dm/C2DMReceiver;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/asus/dm/c2dm/C2DMReceiver;->handleMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "C2DMReceiver"

    const-string v1, "=========== LOGIN_ACCOUNTS_CHANGED_ACTION ============"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/asus/dm/c2dm/C2DMReceiver;->getGoogleAccounts(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p1, v3}, Lcom/asus/dm/c2dm/C2DMessaging;->setResendIdCount(Landroid/content/Context;I)V

    .line 56
    invoke-static {p1, v3}, Lcom/asus/dm/c2dm/C2DMessaging;->setRegisterRetryCount(Landroid/content/Context;I)V

    .line 57
    const-string v0, "mdm.admasus@gmail.com"

    invoke-static {p1, v0}, Lcom/asus/dm/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
