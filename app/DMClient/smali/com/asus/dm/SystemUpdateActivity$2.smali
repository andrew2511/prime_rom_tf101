.class Lcom/asus/dm/SystemUpdateActivity$2;
.super Ljava/lang/Object;
.source "SystemUpdateActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/SystemUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/SystemUpdateActivity;


# direct methods
.method constructor <init>(Lcom/asus/dm/SystemUpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/asus/dm/SystemUpdateActivity$2;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 182
    const-string v0, "SystemUpdateActivity"

    const-string v1, "DMService onServiceConnected() starts.........."

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity$2;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-static {p2}, Lcom/asus/dm/IDMService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/dm/IDMService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dm/SystemUpdateActivity;->access$402(Lcom/asus/dm/SystemUpdateActivity;Lcom/asus/dm/IDMService;)Lcom/asus/dm/IDMService;

    .line 184
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity$2;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-static {v0}, Lcom/asus/dm/SystemUpdateActivity;->access$400(Lcom/asus/dm/SystemUpdateActivity;)Lcom/asus/dm/IDMService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    const-string v0, "SystemUpdateActivity"

    const-string v1, "onServiceConnected(), mService is null!"

    invoke-static {v0, v1}, Lcom/asus/dm/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity$2;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/dm/SystemUpdateActivity;->access$402(Lcom/asus/dm/SystemUpdateActivity;Lcom/asus/dm/IDMService;)Lcom/asus/dm/IDMService;

    .line 192
    return-void
.end method
