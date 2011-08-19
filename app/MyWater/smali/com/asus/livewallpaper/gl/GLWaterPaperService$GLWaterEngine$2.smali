.class Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$2;
.super Landroid/content/BroadcastReceiver;
.source "GLWaterPaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$2;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    const-string v4, "level"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 109
    .local v1, iLevel:I
    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 110
    .local v2, iScale:I
    const-string v4, "status"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 112
    .local v3, iStatus:I
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$2;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v4}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;

    move-result-object v4

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    move v5, v7

    :goto_0
    invoke-virtual {v4, v5}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->setContinueCreateChargingBubble(Z)V

    .line 113
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine$2;->this$1:Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;

    invoke-static {v4}, Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;->access$000(Lcom/asus/livewallpaper/gl/GLWaterPaperService$GLWaterEngine;)Lcom/asus/livewallpaper/gl/GLWaterDraw;

    move-result-object v4

    iget-object v4, v4, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    mul-int/lit8 v5, v1, 0x64

    div-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->onBatteryChanged(I)V

    .line 119
    .end local v1           #iLevel:I
    .end local v2           #iScale:I
    .end local v3           #iStatus:I
    :cond_0
    return-void

    .restart local v1       #iLevel:I
    .restart local v2       #iScale:I
    .restart local v3       #iStatus:I
    :cond_1
    move v5, v6

    .line 112
    goto :goto_0
.end method
