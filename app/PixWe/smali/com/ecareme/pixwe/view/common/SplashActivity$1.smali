.class Lcom/ecareme/pixwe/view/common/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/common/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/SplashActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/SplashActivity;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 513
    invoke-static {p2}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecareme/pixwe/service/UploadServiceInterface;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    .line 514
    sget-object v0, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->goHome(Landroid/content/Context;)V

    .line 515
    sget-object p0, Lcom/ecareme/pixwe/view/common/SplashActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 517
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 520
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/PixWe;->uploadInterface:Lcom/ecareme/pixwe/service/UploadServiceInterface;

    .line 521
    return-void
.end method
