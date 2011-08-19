.class final Lcom/nvidia/tegrazone/NVIDIATegraZone$3;
.super Ljava/lang/Object;
.source "NVIDIATegraZone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/NVIDIATegraZone;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/NVIDIATegraZone;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/NVIDIATegraZone;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone$3;->this$0:Lcom/nvidia/tegrazone/NVIDIATegraZone;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone$3;->this$0:Lcom/nvidia/tegrazone/NVIDIATegraZone;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->refresh()V

    .line 440
    return-void
.end method
