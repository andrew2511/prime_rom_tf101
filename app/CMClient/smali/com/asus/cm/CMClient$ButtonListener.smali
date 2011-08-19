.class Lcom/asus/cm/CMClient$ButtonListener;
.super Ljava/lang/Object;
.source "CMClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/CMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/CMClient;


# direct methods
.method constructor <init>(Lcom/asus/cm/CMClient;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "pView"

    .prologue
    const/4 v7, 0x1

    .line 322
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v5}, Lcom/asus/cm/CMClient;->access$300(Lcom/asus/cm/CMClient;)Lcom/asus/cm/IDMService;

    move-result-object v5

    if-nez v5, :cond_0

    .line 323
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    const-string v6, "No Service exists"

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 324
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/asus/cm/CMClient;->finishActivity(I)V

    .line 326
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 383
    :goto_0
    return-void

    .line 329
    :pswitch_0
    :try_start_0
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v5}, Lcom/asus/cm/CMClient;->access$400(Lcom/asus/cm/CMClient;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/cm/CMCRegistryManager;->isDMDebugable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 330
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v5}, Lcom/asus/cm/CMClient;->access$300(Lcom/asus/cm/CMClient;)Lcom/asus/cm/IDMService;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/asus/cm/IDMService;->setDMEngineDebugable(Z)V

    .line 332
    :cond_1
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v5}, Lcom/asus/cm/CMClient;->access$300(Lcom/asus/cm/CMClient;)Lcom/asus/cm/IDMService;

    move-result-object v5

    invoke-interface {v5}, Lcom/asus/cm/IDMService;->doDMSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 334
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 341
    .end local v0           #ex:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v5}, Lcom/asus/cm/CMClient;->access$500(Lcom/asus/cm/CMClient;)Lcom/asus/cm/IStatusNotifyRegister;

    move-result-object v5

    invoke-interface {v5}, Lcom/asus/cm/IStatusNotifyRegister;->cancelDMSession()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 345
    :goto_1
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    const v6, 0x7f0b003a

    invoke-virtual {v5, v6}, Lcom/asus/cm/CMClient;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 346
    .local v4, tv:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nCanceling...\nit takes about 3 minutes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v5}, Lcom/asus/cm/CMClient;->access$600(Lcom/asus/cm/CMClient;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 342
    .end local v4           #tv:Landroid/widget/TextView;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 343
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 351
    .end local v0           #ex:Ljava/lang/Exception;
    :pswitch_2
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v5}, Lcom/asus/cm/CMClient;->access$700(Lcom/asus/cm/CMClient;)V

    goto :goto_0

    .line 355
    :pswitch_3
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v5}, Lcom/asus/cm/CMClient;->access$800(Lcom/asus/cm/CMClient;)V

    goto :goto_0

    .line 360
    :pswitch_4
    :try_start_2
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v5}, Lcom/asus/cm/CMClient;->access$300(Lcom/asus/cm/CMClient;)Lcom/asus/cm/IDMService;

    move-result-object v5

    invoke-interface {v5}, Lcom/asus/cm/IDMService;->showLockScreen()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 361
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 362
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 367
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_5
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Lcom/asus/cm/CMClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 368
    .local v3, keyguardManager:Landroid/app/KeyguardManager;
    const-string v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v2

    .line 369
    .local v2, keyLock:Landroid/app/KeyguardManager$KeyguardLock;
    invoke-virtual {v2}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 371
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    const-string v6, "enable original lock screen"

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 374
    .end local v2           #keyLock:Landroid/app/KeyguardManager$KeyguardLock;
    .end local v3           #keyguardManager:Landroid/app/KeyguardManager;
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 375
    .local v1, i:Landroid/content/Intent;
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    const-class v6, Lcom/asus/cm/location/LocationService;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 376
    const-string v5, "com.asus.cm.location.oneshot"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    invoke-virtual {v5, v1}, Lcom/asus/cm/CMClient;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 380
    .end local v1           #i:Landroid/content/Intent;
    :pswitch_7
    iget-object v5, p0, Lcom/asus/cm/CMClient$ButtonListener;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v5}, Lcom/asus/cm/CMClient;->access$900(Lcom/asus/cm/CMClient;)V

    goto/16 :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0032
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
