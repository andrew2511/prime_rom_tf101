.class Lcom/asus/dm/DMClient$ButtonListener;
.super Ljava/lang/Object;
.source "DMClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/DMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/DMClient;


# direct methods
.method constructor <init>(Lcom/asus/dm/DMClient;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/asus/dm/DMClient$ButtonListener;->this$0:Lcom/asus/dm/DMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "pView"

    .prologue
    const/4 v4, 0x1

    .line 312
    iget-object v2, p0, Lcom/asus/dm/DMClient$ButtonListener;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v2}, Lcom/asus/dm/DMClient;->access$300(Lcom/asus/dm/DMClient;)Lcom/asus/dm/IDMService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/asus/dm/DMClient$ButtonListener;->this$0:Lcom/asus/dm/DMClient;

    const-string v3, "No Service exists"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 314
    iget-object v2, p0, Lcom/asus/dm/DMClient$ButtonListener;->this$0:Lcom/asus/dm/DMClient;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMClient;->finishActivity(I)V

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 349
    :goto_0
    return-void

    .line 319
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/asus/dm/DMClient$ButtonListener;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v2}, Lcom/asus/dm/DMClient;->access$400(Lcom/asus/dm/DMClient;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/dm/DMCRegistryManager;->isDMDebugable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/asus/dm/DMClient$ButtonListener;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v2}, Lcom/asus/dm/DMClient;->access$300(Lcom/asus/dm/DMClient;)Lcom/asus/dm/IDMService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/asus/dm/IDMService;->setDMEngineDebugable(Z)V

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/asus/dm/DMClient$ButtonListener;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v2}, Lcom/asus/dm/DMClient;->access$300(Lcom/asus/dm/DMClient;)Lcom/asus/dm/IDMService;

    move-result-object v2

    invoke-interface {v2}, Lcom/asus/dm/IDMService;->doDMSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 324
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 331
    .end local v0           #ex:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/asus/dm/DMClient$ButtonListener;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v2}, Lcom/asus/dm/DMClient;->access$500(Lcom/asus/dm/DMClient;)Lcom/asus/dm/IStatusNotifyRegister;

    move-result-object v2

    invoke-interface {v2}, Lcom/asus/dm/IStatusNotifyRegister;->cancelDMSession()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    :goto_1
    iget-object v2, p0, Lcom/asus/dm/DMClient$ButtonListener;->this$0:Lcom/asus/dm/DMClient;

    const v3, 0x7f080028

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 336
    .local v1, tv:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nCanceling...\nit takes about 3 minutes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v2, p0, Lcom/asus/dm/DMClient$ButtonListener;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v2}, Lcom/asus/dm/DMClient;->access$600(Lcom/asus/dm/DMClient;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 332
    .end local v1           #tv:Landroid/widget/TextView;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 333
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 341
    .end local v0           #ex:Ljava/lang/Exception;
    :pswitch_2
    iget-object v2, p0, Lcom/asus/dm/DMClient$ButtonListener;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v2}, Lcom/asus/dm/DMClient;->access$700(Lcom/asus/dm/DMClient;)V

    goto :goto_0

    .line 345
    :pswitch_3
    iget-object v2, p0, Lcom/asus/dm/DMClient$ButtonListener;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v2}, Lcom/asus/dm/DMClient;->access$800(Lcom/asus/dm/DMClient;)V

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x7f080024
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
