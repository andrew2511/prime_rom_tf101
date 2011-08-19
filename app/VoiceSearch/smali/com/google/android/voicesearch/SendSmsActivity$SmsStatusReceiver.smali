.class Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SendSmsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/SendSmsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsStatusReceiver"
.end annotation


# instance fields
.field private mNumMessages:I

.field final synthetic this$0:Lcom/google/android/voicesearch/SendSmsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/SendSmsActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;->this$0:Lcom/google/android/voicesearch/SendSmsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 92
    iput p2, p0, Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;->mNumMessages:I

    .line 93
    return-void
.end method

.method private declared-synchronized registerSuccessfulMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 109
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;->mNumMessages:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;->mNumMessages:I

    .line 111
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;->this$0:Lcom/google/android/voicesearch/SendSmsActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/SendSmsActivity;->access$100(Lcom/google/android/voicesearch/SendSmsActivity;)Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/watchdog/TimeoutWatchdog;->extend()V

    .line 112
    iget v0, p0, Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;->mNumMessages:I

    if-ge v0, v1, :cond_0

    .line 115
    const-string v0, "com.google.android.voicesearch.extras.SMS_RECIPIENTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    const-string v1, "com.google.android.voicesearch.extras.SMS_MESSAGE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {p1, v1, v0}, Lcom/google/android/voicesearch/SmsUtils;->insertSentSmsIntoDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;->this$0:Lcom/google/android/voicesearch/SendSmsActivity;

    invoke-static {v0}, Lcom/google/android/voicesearch/SendSmsActivity;->access$200(Lcom/google/android/voicesearch/SendSmsActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 98
    const-string v0, "com.google.android.voicesearch.action.SMS_STATUS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;->getResultCode()I

    move-result v0

    .line 101
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;->this$0:Lcom/google/android/voicesearch/SendSmsActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/android/voicesearch/SendSmsActivity;->access$000(Lcom/google/android/voicesearch/SendSmsActivity;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/SendSmsActivity$SmsStatusReceiver;->registerSuccessfulMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
