.class public Lnet/yostore/aws/service/AWSService$APIBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "AWSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/AWSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "APIBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/AWSService;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/service/AWSService;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lnet/yostore/aws/service/AWSService$APIBroadcastRecv;->this$0:Lnet/yostore/aws/service/AWSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 547
    return-void
.end method
