.class Lcom/asus/keyboard/KeyboardService$BrowserFKeyController;
.super Lcom/asus/keyboard/KeyboardService$FKeyController;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/KeyboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowserFKeyController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/keyboard/KeyboardService;


# direct methods
.method public constructor <init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/asus/keyboard/KeyboardService$BrowserFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-direct {p0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;)V

    .line 472
    iput-object p2, p0, Lcom/asus/keyboard/KeyboardService$BrowserFKeyController;->mContext:Landroid/content/Context;

    .line 473
    return-void
.end method


# virtual methods
.method public process(I)V
    .locals 5
    .parameter "keyCode"

    .prologue
    .line 477
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 478
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.browser"

    const-string v4, "com.android.browser.BrowserActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 479
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 480
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$BrowserFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-virtual {v2, v1}, Lcom/asus/keyboard/KeyboardService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 482
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
