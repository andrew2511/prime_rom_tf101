.class Lcom/infraware/filemanager/FmUpdateService$1;
.super Ljava/lang/Object;
.source "FmUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FmUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmUpdateService;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmUpdateService$1;->this$0:Lcom/infraware/filemanager/FmUpdateService;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/infraware/filemanager/FmUpdateService$1;->this$0:Lcom/infraware/filemanager/FmUpdateService;

    invoke-virtual {v2}, Lcom/infraware/filemanager/FmUpdateService;->onUpdateApk()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 106
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.infraware.polaris.office.ACTION_NETWORK_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/infraware/filemanager/FmUpdateService$1;->this$0:Lcom/infraware/filemanager/FmUpdateService;

    invoke-virtual {v2, v1}, Lcom/infraware/filemanager/FmUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    iget-object v2, p0, Lcom/infraware/filemanager/FmUpdateService$1;->this$0:Lcom/infraware/filemanager/FmUpdateService;

    invoke-virtual {v2}, Lcom/infraware/filemanager/FmUpdateService;->stopSelf()V

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/net/MalformedURLException;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 110
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.infraware.polaris.office.ACTION_NETWORK_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/infraware/filemanager/FmUpdateService$1;->this$0:Lcom/infraware/filemanager/FmUpdateService;

    invoke-virtual {v2, v1}, Lcom/infraware/filemanager/FmUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    iget-object v2, p0, Lcom/infraware/filemanager/FmUpdateService$1;->this$0:Lcom/infraware/filemanager/FmUpdateService;

    invoke-virtual {v2}, Lcom/infraware/filemanager/FmUpdateService;->stopSelf()V

    .line 113
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
