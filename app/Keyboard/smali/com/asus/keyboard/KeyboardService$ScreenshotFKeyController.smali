.class Lcom/asus/keyboard/KeyboardService$ScreenshotFKeyController;
.super Lcom/asus/keyboard/KeyboardService$FKeyController;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/KeyboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotFKeyController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/keyboard/KeyboardService;


# direct methods
.method public constructor <init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/asus/keyboard/KeyboardService$ScreenshotFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-direct {p0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;)V

    .line 365
    iput-object p2, p0, Lcom/asus/keyboard/KeyboardService$ScreenshotFKeyController;->mContext:Landroid/content/Context;

    .line 366
    return-void
.end method


# virtual methods
.method public process(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREENSHOT"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 370
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/asus/keyboard/KeyboardService$ScreenshotFKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 371
    return-void
.end method
