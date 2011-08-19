.class Lnet/yostore/aws/view/test/TestActivity$3;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/test/TestActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lnet/yostore/aws/view/test/TestActivity$3;->this$0:Lnet/yostore/aws/view/test/TestActivity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 63
    const-wide/16 v0, -0x64

    .line 64
    .local v0, chgseq:J
    iget-object v3, p0, Lnet/yostore/aws/view/test/TestActivity$3;->this$0:Lnet/yostore/aws/view/test/TestActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/test/TestActivity;->access$1(Lnet/yostore/aws/view/test/TestActivity;)J

    move-result-wide v0

    .line 65
    const-wide/16 v3, -0x2

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 66
    iget-object v3, p0, Lnet/yostore/aws/view/test/TestActivity$3;->this$0:Lnet/yostore/aws/view/test/TestActivity;

    invoke-static {v3, v0, v1}, Lnet/yostore/aws/view/test/TestActivity;->access$2(Lnet/yostore/aws/view/test/TestActivity;J)Z

    .line 69
    :cond_0
    :try_start_0
    sget-object v3, Lnet/yostore/aws/view/test/TestActivity;->mpInterface:Lnet/yostore/aws/service/PlayListServiceInterface;

    iget-object v4, p0, Lnet/yostore/aws/view/test/TestActivity$3;->this$0:Lnet/yostore/aws/view/test/TestActivity;

    invoke-static {v4}, Lnet/yostore/aws/view/test/TestActivity;->access$3(Lnet/yostore/aws/view/test/TestActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-interface {v3, v4, v0, v1}, Lnet/yostore/aws/service/PlayListServiceInterface;->RenewPlayList(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 71
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
