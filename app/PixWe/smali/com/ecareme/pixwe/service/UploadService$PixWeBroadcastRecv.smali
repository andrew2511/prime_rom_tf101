.class public Lcom/ecareme/pixwe/service/UploadService$PixWeBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/service/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PixWeBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/service/UploadService;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/service/UploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/ecareme/pixwe/service/UploadService$PixWeBroadcastRecv;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 359
    return-void
.end method
