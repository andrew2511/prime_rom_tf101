.class Lcom/asus/cm/CMClient$2;
.super Ljava/lang/Object;
.source "CMClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/CMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/CMClient;


# direct methods
.method constructor <init>(Lcom/asus/cm/CMClient;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/asus/cm/CMClient$2;->this$0:Lcom/asus/cm/CMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 293
    const-string v0, "DMClient"

    const-string v1, "DMService onServiceConnected() starts.........."

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/asus/cm/CMClient$2;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {p2}, Lcom/asus/cm/IDMService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/cm/IDMService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/cm/CMClient;->access$302(Lcom/asus/cm/CMClient;Lcom/asus/cm/IDMService;)Lcom/asus/cm/IDMService;

    .line 295
    iget-object v0, p0, Lcom/asus/cm/CMClient$2;->this$0:Lcom/asus/cm/CMClient;

    invoke-static {v0}, Lcom/asus/cm/CMClient;->access$300(Lcom/asus/cm/CMClient;)Lcom/asus/cm/IDMService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected(), mService is null!"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/asus/cm/CMClient$2;->this$0:Lcom/asus/cm/CMClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/cm/CMClient;->access$302(Lcom/asus/cm/CMClient;Lcom/asus/cm/IDMService;)Lcom/asus/cm/IDMService;

    .line 303
    return-void
.end method
