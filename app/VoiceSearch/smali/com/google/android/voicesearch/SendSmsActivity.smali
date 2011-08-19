.class public Lcom/google/android/voicesearch/SendSmsActivity;
.super Landroid/app/Activity;
.source "SendSmsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_SMS_STATUS:Ljava/lang/String; = "com.google.android.voicesearch.action.SMS_STATUS"

.field private static final DBG:Z = false

.field private static final DIALOG_ERROR:I = 0x2

.field private static final DIALOG_SENDING:I = 0x1

.field private static final EXTRA_SMS_MESSAGE:Ljava/lang/String; = "com.google.android.voicesearch.extras.SMS_MESSAGE"

.field private static final EXTRA_SMS_RECIPIENTS:Ljava/lang/String; = "com.google.android.voicesearch.extras.SMS_RECIPIENTS"

.field private static final SEND_SMS_TIMEOUT_MILLIS:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "SendSmsActivity"

.field public static final URI_SCHEME_SMS:Ljava/lang/String; = "smsto"


# instance fields
.field private mStatusReceiver:Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;

.field private mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/SendSmsActivity;Ljava/lang/Exception;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/SendSmsActivity;->fireFailure(Ljava/lang/Exception;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/SendSmsActivity;)Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/SendSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/voicesearch/SendSmsActivity;->fireSuccess()V

    return-void
.end method

.method private fireFailure(Ljava/lang/Exception;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 262
    if-nez p1, :cond_1

    .line 263
    const-string v0, "SendSmsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failure sending sms, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->stop()V

    .line 270
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/SendSmsActivity;->showDialog(I)V

    .line 271
    return-void

    .line 265
    :cond_1
    const-string v0, "SendSmsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failure sending sms, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private fireSuccess()V
    .locals 2

    .prologue
    .line 253
    const v0, 0x7f090730

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 254
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/SendSmsActivity;->setResult(I)V

    .line 255
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->stop()V

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/SendSmsActivity;->finish()V

    .line 259
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/voicesearch/SendSmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 129
    const-string v0, "smsto"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    const-string v0, "SendSmsActivity"

    const-string v1, "unexpected data scheme, requires \'smsto\'"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/google/android/voicesearch/SendSmsActivity;->finish()V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/SendSmsActivity;->showDialog(I)V

    .line 137
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 139
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "smsto"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 147
    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 149
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    if-nez v1, :cond_3

    const-string v1, ""

    move-object v8, v1

    .line 151
    :goto_1
    invoke-virtual {v0, v8}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 154
    new-instance v1, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    const v2, 0xea60

    new-instance v4, Lcom/google/android/voicesearch/SendSmsActivity$1;

    invoke-direct {v4, p0}, Lcom/google/android/voicesearch/SendSmsActivity$1;-><init>(Lcom/google/android/voicesearch/SendSmsActivity;)V

    invoke-direct {v1, v2, v4}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;-><init>(ILjava/lang/Runnable;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    .line 163
    iget-object v1, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->start()V

    .line 170
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.voicesearch.action.SMS_STATUS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 171
    new-instance v2, Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;

    array-length v4, v7

    mul-int/2addr v4, v9

    invoke-direct {v2, p0, v4}, Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;-><init>(Lcom/google/android/voicesearch/SendSmsActivity;I)V

    iput-object v2, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mStatusReceiver:Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;

    .line 172
    iget-object v2, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mStatusReceiver:Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/voicesearch/SendSmsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    array-length v10, v7

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-ge v11, v10, :cond_0

    aget-object v1, v7, v11

    .line 181
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.google.android.voicesearch.action.SMS_STATUS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/google/android/voicesearch/SendSmsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v4, "com.google.android.voicesearch.extras.SMS_RECIPIENTS"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v4, "com.google.android.voicesearch.extras.SMS_MESSAGE"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v9, :cond_2

    .line 190
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {p0, v12, v2, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v1, "SendSmsActivity"

    const-string v2, "error decoding recipients"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/SendSmsActivity;->fireFailure(Ljava/lang/Exception;I)V

    goto/16 :goto_0

    .line 197
    :cond_2
    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :goto_4
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_2

    .line 199
    :catch_1
    move-exception v1

    .line 200
    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/voicesearch/SendSmsActivity;->fireFailure(Ljava/lang/Exception;I)V

    goto :goto_4

    :cond_3
    move-object v8, v1

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 219
    packed-switch p1, :pswitch_data_0

    .line 248
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 221
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 224
    const v1, 0x7f09072e

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/SendSmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09072f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/voicesearch/SendSmsActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/SendSmsActivity$3;-><init>(Lcom/google/android/voicesearch/SendSmsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09074d

    new-instance v2, Lcom/google/android/voicesearch/SendSmsActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/SendSmsActivity$2;-><init>(Lcom/google/android/voicesearch/SendSmsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mStatusReceiver:Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mStatusReceiver:Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/SendSmsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mStatusReceiver:Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity;->mTimeoutWatchdog:Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->stop()V

    .line 214
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 215
    return-void
.end method
