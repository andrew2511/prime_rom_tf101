.class final Lcom/nvidia/tegrazone/utils/NVBroadcast$4;
.super Ljava/lang/Object;
.source "NVBroadcast.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/utils/NVBroadcast;->showUpdateApp(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/utils/NVBroadcast;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/utils/NVBroadcast;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/utils/NVBroadcast$4;->this$0:Lcom/nvidia/tegrazone/utils/NVBroadcast;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/NVBroadcast$4;->this$0:Lcom/nvidia/tegrazone/utils/NVBroadcast;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/utils/NVBroadcast;->updateApp()V

    .line 76
    return-void
.end method
