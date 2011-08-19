.class Lcom/asus/DMS/DLNAServerService$3;
.super Landroid/content/BroadcastReceiver;
.source "DLNAServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DMS/DLNAServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DMS/DLNAServerService;


# direct methods
.method constructor <init>(Lcom/asus/DMS/DLNAServerService;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/asus/DMS/DLNAServerService$3;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, act:Ljava/lang/String;
    const-string v1, "android.intent.action.EPAD_EXTERNAL_MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const-string v1, "DMS"

    const-string v2, "broadcast -> ACTION_EPAD_EXTERNAL_MEDIA_MOUNTED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService$3;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-virtual {v1}, Lcom/asus/DMS/DLNAServerService;->doforceUpdate()V

    .line 227
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string v1, "android.intent.action.EPAD_EXTERNAL_MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 215
    const-string v1, "DMS"

    const-string v2, "broadcast -> ACTION_EPAD_EXTERNAL_MEDIA_UNMOUNTED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_1
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 218
    const-string v1, "DMS"

    const-string v2, "broadcast -> ACTION_MEDIA_EJECT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :cond_2
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 220
    const-string v1, "DMS"

    const-string v2, "broadcast -> ACTION_MEDIA_MOUNTED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_3
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 222
    const-string v1, "DMS"

    const-string v2, "broadcast -> ACTION_MEDIA_REMOVED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    :cond_4
    const-string v1, "DMS"

    const-string v2, "Error! no this broadcast event! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
