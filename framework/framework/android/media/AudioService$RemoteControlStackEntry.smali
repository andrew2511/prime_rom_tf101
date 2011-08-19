.class Landroid/media/AudioService$RemoteControlStackEntry;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteControlStackEntry"
.end annotation


# instance fields
.field public mReceiverComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2678
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 2680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2681
    iput-object p1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    .line 2682
    return-void
.end method
