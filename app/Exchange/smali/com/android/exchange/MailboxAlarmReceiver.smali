.class public Lcom/android/exchange/MailboxAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MailboxAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 32
    const-string v0, "mailbox"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 34
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/ExchangeService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/android/exchange/ExchangeService;->alert(Landroid/content/Context;J)V

    goto :goto_0
.end method
