.class public Lcom/google/android/gm/SuppressNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuppressNotificationReceiver.java"


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public activate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "label"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mAccount:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mLabel:Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, filter:Landroid/content/IntentFilter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 45
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 46
    const-string v1, "gmail-ls"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "/unread/"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, action:Ljava/lang/String;
    const-string v4, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v4, "account"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, account:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mAccount:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, label:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mLabel:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    const-string v4, "count"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 79
    .local v2, count:I
    if-eqz v2, :cond_0

    .line 82
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aborting broadcast of intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLabel is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gm/SuppressNotificationReceiver;->abortBroadcast()V

    goto :goto_0
.end method
