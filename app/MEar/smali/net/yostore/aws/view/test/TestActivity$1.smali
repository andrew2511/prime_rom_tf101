.class Lnet/yostore/aws/view/test/TestActivity$1;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/test/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/test/TestActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/test/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/test/TestActivity$1;->this$0:Lnet/yostore/aws/view/test/TestActivity;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 175
    invoke-static {p2}, Lnet/yostore/aws/service/PlayListServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lnet/yostore/aws/service/PlayListServiceInterface;

    move-result-object v0

    sput-object v0, Lnet/yostore/aws/view/test/TestActivity;->mpInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    .line 176
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 179
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/test/TestActivity;->mpInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    .line 180
    return-void
.end method
