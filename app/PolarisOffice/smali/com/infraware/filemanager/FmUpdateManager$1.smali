.class Lcom/infraware/filemanager/FmUpdateManager$1;
.super Ljava/lang/Object;
.source "FmUpdateManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FmUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmUpdateManager;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmUpdateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmUpdateManager$1;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/infraware/filemanager/FmUpdateManager$1;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    check-cast p2, Lcom/infraware/filemanager/FmUpdateService$UpdateBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/infraware/filemanager/FmUpdateService$UpdateBinder;->getService()Lcom/infraware/filemanager/FmUpdateService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/filemanager/FmUpdateManager;->access$0(Lcom/infraware/filemanager/FmUpdateManager;Lcom/infraware/filemanager/FmUpdateService;)V

    .line 134
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/infraware/filemanager/FmUpdateManager$1;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/infraware/filemanager/FmUpdateManager;->access$0(Lcom/infraware/filemanager/FmUpdateManager;Lcom/infraware/filemanager/FmUpdateService;)V

    .line 138
    return-void
.end method
