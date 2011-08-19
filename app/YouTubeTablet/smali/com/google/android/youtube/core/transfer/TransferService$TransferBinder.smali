.class public Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;
.super Landroid/os/Binder;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransferBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/TransferService;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
