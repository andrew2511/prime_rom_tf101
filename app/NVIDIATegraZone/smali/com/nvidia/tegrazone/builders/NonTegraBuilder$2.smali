.class final Lcom/nvidia/tegrazone/builders/NonTegraBuilder$2;
.super Ljava/lang/Object;
.source "NonTegraBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->showWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/NonTegraBuilder;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/NonTegraBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder$2;->this$0:Lcom/nvidia/tegrazone/builders/NonTegraBuilder;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder$2;->this$0:Lcom/nvidia/tegrazone/builders/NonTegraBuilder;

    iget-object v0, v0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->callingActivity:Landroid/app/Activity;

    const-string v1, "http://www.nvidia.com/tegra"

    invoke-static {v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 46
    return-void
.end method
