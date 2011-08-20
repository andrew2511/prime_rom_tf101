.class Lcom/android/internal/policy/impl/PhoneWindowManager$PassFunctionKey;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PassFunctionKey"
.end annotation


# instance fields
.field mKeyEvent:Landroid/view/KeyEvent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .registers 3
    .parameter
    .parameter "keyEvent"

    .prologue
    .line 2727
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassFunctionKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2728
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassFunctionKey;->mKeyEvent:Landroid/view/KeyEvent;

    .line 2729
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 2732
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2733
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.asus.keyboard.action.FUNCTION_KEY"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2734
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2735
    const-string v0, "android.intent.extra.KEY_EVENT"

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassFunctionKey;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2736
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassFunctionKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassFunctionKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassFunctionKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v5, -0x1

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2739
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2c
    return-void
.end method
