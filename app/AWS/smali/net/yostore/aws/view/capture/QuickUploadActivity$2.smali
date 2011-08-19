.class Lnet/yostore/aws/view/capture/QuickUploadActivity$2;
.super Ljava/lang/Object;
.source "QuickUploadActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/capture/QuickUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$2;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 840
    invoke-static {p2}, Lnet/yostore/aws/service/AWSServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lnet/yostore/aws/service/AWSServiceInterface;

    move-result-object v0

    sput-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    .line 841
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$2;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->access$1(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V

    .line 842
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 845
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    .line 846
    return-void
.end method
