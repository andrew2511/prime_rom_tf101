.class Lnet/yostore/aws/view/common/SplashActivity$Worker;
.super Ljava/util/TimerTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/SplashActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lnet/yostore/aws/view/common/SplashActivity$Worker;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity$Worker;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/SplashActivity;->access$0(Lnet/yostore/aws/view/common/SplashActivity;)Lnet/yostore/aws/ansytask/BackGroundLoginTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/BackGroundLoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    return-void
.end method
