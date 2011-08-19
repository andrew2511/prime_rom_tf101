.class Lcom/asus/cm/handler/EmailPrefsHandler$3;
.super Ljava/lang/Object;
.source "EmailPrefsHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/handler/EmailPrefsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/handler/EmailPrefsHandler;


# direct methods
.method constructor <init>(Lcom/asus/cm/handler/EmailPrefsHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/asus/cm/handler/EmailPrefsHandler$3;->this$0:Lcom/asus/cm/handler/EmailPrefsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 307
    const-string v0, "onServiceConnected() starts.........."

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/asus/cm/handler/EmailPrefsHandler$3;->this$0:Lcom/asus/cm/handler/EmailPrefsHandler;

    invoke-static {p2}, Lcom/asus/dm/IManageEMail$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/dm/IManageEMail;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/cm/handler/EmailPrefsHandler;->access$302(Lcom/asus/cm/handler/EmailPrefsHandler;Lcom/asus/dm/IManageEMail;)Lcom/asus/dm/IManageEMail;

    .line 309
    iget-object v0, p0, Lcom/asus/cm/handler/EmailPrefsHandler$3;->this$0:Lcom/asus/cm/handler/EmailPrefsHandler;

    invoke-static {v0}, Lcom/asus/cm/handler/EmailPrefsHandler;->access$300(Lcom/asus/cm/handler/EmailPrefsHandler;)Lcom/asus/dm/IManageEMail;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected(), mService is null!"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/asus/cm/handler/EmailPrefsHandler$3;->this$0:Lcom/asus/cm/handler/EmailPrefsHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/cm/handler/EmailPrefsHandler;->access$302(Lcom/asus/cm/handler/EmailPrefsHandler;Lcom/asus/dm/IManageEMail;)Lcom/asus/dm/IManageEMail;

    .line 317
    return-void
.end method
