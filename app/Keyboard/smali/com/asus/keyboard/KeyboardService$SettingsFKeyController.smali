.class Lcom/asus/keyboard/KeyboardService$SettingsFKeyController;
.super Lcom/asus/keyboard/KeyboardService$FKeyController;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/KeyboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsFKeyController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/keyboard/KeyboardService;


# direct methods
.method public constructor <init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 488
    iput-object p1, p0, Lcom/asus/keyboard/KeyboardService$SettingsFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-direct {p0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;)V

    .line 489
    iput-object p2, p0, Lcom/asus/keyboard/KeyboardService$SettingsFKeyController;->mContext:Landroid/content/Context;

    .line 490
    return-void
.end method


# virtual methods
.method public process(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 494
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 496
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$SettingsFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-virtual {v2, v1}, Lcom/asus/keyboard/KeyboardService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 498
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
