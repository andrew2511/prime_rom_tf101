.class public Lcom/android/asus/modemupdate/ModemUpdateService$Reciver;
.super Landroid/content/BroadcastReceiver;
.source "ModemUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/asus/modemupdate/ModemUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reciver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/asus/modemupdate/ModemUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/asus/modemupdate/ModemUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/asus/modemupdate/ModemUpdateService$Reciver;->this$0:Lcom/android/asus/modemupdate/ModemUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, s:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 202
    const-string v3, "level"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 203
    .local v0, level:I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 205
    .local v2, scale:I
    iget-object v3, p0, Lcom/android/asus/modemupdate/ModemUpdateService$Reciver;->this$0:Lcom/android/asus/modemupdate/ModemUpdateService;

    const-string v4, "status"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/asus/modemupdate/ModemUpdateService;->access$002(Lcom/android/asus/modemupdate/ModemUpdateService;I)I

    .line 206
    iget-object v3, p0, Lcom/android/asus/modemupdate/ModemUpdateService$Reciver;->this$0:Lcom/android/asus/modemupdate/ModemUpdateService;

    mul-int/lit8 v4, v0, 0x64

    div-int/2addr v4, v2

    invoke-static {v3, v4}, Lcom/android/asus/modemupdate/ModemUpdateService;->access$102(Lcom/android/asus/modemupdate/ModemUpdateService;I)I

    .line 212
    .end local v0           #level:I
    .end local v2           #scale:I
    :goto_0
    return-void

    .line 211
    :cond_0
    const-string v3, "ModemUpdateService"

    const-string v4, "unknow action!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
