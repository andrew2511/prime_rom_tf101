.class final Lcom/nvidia/tegrazone/AppActivity$1;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/AppActivity;->initMasthead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/AppActivity;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/AppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/AppActivity$1;->this$0:Lcom/nvidia/tegrazone/AppActivity;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/nvidia/tegrazone/AppActivity$1;->this$0:Lcom/nvidia/tegrazone/AppActivity;

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchSpotlight(Landroid/app/Activity;)V

    .line 413
    return-void
.end method
