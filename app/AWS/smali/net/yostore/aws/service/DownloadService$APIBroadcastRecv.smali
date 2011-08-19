.class public Lnet/yostore/aws/service/DownloadService$APIBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "APIBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/DownloadService;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/service/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lnet/yostore/aws/service/DownloadService$APIBroadcastRecv;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 292
    return-void
.end method
