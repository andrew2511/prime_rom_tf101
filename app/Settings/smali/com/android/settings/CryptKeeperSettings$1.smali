.class Lcom/android/settings/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    const-string v5, "level"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, level:I
    const-string v5, "plugged"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 76
    .local v3, plugged:I
    const/16 v5, 0x50

    if-lt v1, v5, :cond_1

    move v2, v6

    .line 77
    .local v2, levelOk:Z
    :goto_0
    if-ne v3, v6, :cond_2

    move v4, v6

    .line 79
    .local v4, pluggedOk:Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v5}, Lcom/android/settings/CryptKeeperSettings;->access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v5

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v5}, Lcom/android/settings/CryptKeeperSettings;->access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v5

    if-eqz v4, :cond_4

    move v6, v8

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings$1;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-static {v5}, Lcom/android/settings/CryptKeeperSettings;->access$200(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;

    move-result-object v5

    if-eqz v2, :cond_5

    move v6, v8

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .end local v1           #level:I
    .end local v2           #levelOk:Z
    .end local v3           #plugged:I
    .end local v4           #pluggedOk:Z
    :cond_0
    return-void

    .restart local v1       #level:I
    .restart local v3       #plugged:I
    :cond_1
    move v2, v7

    .line 76
    goto :goto_0

    .restart local v2       #levelOk:Z
    :cond_2
    move v4, v7

    .line 77
    goto :goto_1

    .restart local v4       #pluggedOk:Z
    :cond_3
    move v6, v7

    .line 79
    goto :goto_2

    :cond_4
    move v6, v7

    .line 80
    goto :goto_3

    :cond_5
    move v6, v7

    .line 81
    goto :goto_4
.end method
