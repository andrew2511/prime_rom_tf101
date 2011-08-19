.class final Lcom/nvidia/tegrazone/builders/AboutWindowBuilder$2;
.super Ljava/lang/Object;
.source "AboutWindowBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->showAboutWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder$2;->this$0:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder$2;->this$0:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    iget-object v0, v0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->callingActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->feedbackURL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchBrowser(Landroid/app/Activity;Ljava/lang/String;)V

    .line 55
    return-void
.end method
