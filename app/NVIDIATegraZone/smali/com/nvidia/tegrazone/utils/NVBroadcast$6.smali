.class final Lcom/nvidia/tegrazone/utils/NVBroadcast$6;
.super Ljava/lang/Object;
.source "NVBroadcast.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/utils/NVBroadcast;->showNoResults(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/nvidia/tegrazone/utils/NVBroadcast$6;->this$0:Lcom/nvidia/tegrazone/utils/NVBroadcast;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 111
    return-void
.end method
