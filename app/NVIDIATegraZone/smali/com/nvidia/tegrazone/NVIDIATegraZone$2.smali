.class final Lcom/nvidia/tegrazone/NVIDIATegraZone$2;
.super Ljava/lang/Object;
.source "NVIDIATegraZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/NVIDIATegraZone;->initMasthead()V
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
    iput-object p1, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone$2;->this$0:Lcom/nvidia/tegrazone/NVIDIATegraZone;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone$2;->this$0:Lcom/nvidia/tegrazone/NVIDIATegraZone;

    iget-object v0, v0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone$2;->this$0:Lcom/nvidia/tegrazone/NVIDIATegraZone;

    iget-object v0, v0, Lcom/nvidia/tegrazone/NVIDIATegraZone;->tabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone$2;->this$0:Lcom/nvidia/tegrazone/NVIDIATegraZone;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->showAboutMenu()V

    goto :goto_0
.end method
