.class public Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "QuickUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/capture/QuickUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MearBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;)Lnet/yostore/aws/view/capture/QuickUploadActivity;
    .locals 1
    .parameter

    .prologue
    .line 785
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 791
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 793
    const-string v2, "noConnectivity"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 794
    .local v0, down:Z
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 796
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 800
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;->this$0:Lnet/yostore/aws/view/capture/QuickUploadActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060034

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 801
    const v3, 0x7f060026

    new-instance v4, Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv$1;

    invoke-direct {v4, p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv$1;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 815
    .end local v0           #down:Z
    .end local v1           #ni:Landroid/net/NetworkInfo;
    :cond_1
    return-void
.end method
