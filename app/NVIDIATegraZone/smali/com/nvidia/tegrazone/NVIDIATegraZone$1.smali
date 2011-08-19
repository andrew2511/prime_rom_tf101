.class final Lcom/nvidia/tegrazone/NVIDIATegraZone$1;
.super Ljava/lang/Object;
.source "NVIDIATegraZone.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/NVIDIATegraZone;->initTabs()V
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
    iput-object p1, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone$1;->this$0:Lcom/nvidia/tegrazone/NVIDIATegraZone;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "tabId"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nvidia/tegrazone/NVIDIATegraZone$1;->this$0:Lcom/nvidia/tegrazone/NVIDIATegraZone;

    invoke-virtual {v0, p1}, Lcom/nvidia/tegrazone/NVIDIATegraZone;->handleTabChange(Ljava/lang/String;)V

    .line 185
    return-void
.end method
