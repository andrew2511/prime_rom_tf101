.class Lcom/nuance/xt9/input/DockWarningActivity$2;
.super Ljava/lang/Object;
.source "DockWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/DockWarningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/DockWarningActivity;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/DockWarningActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/nuance/xt9/input/DockWarningActivity$2;->this$0:Lcom/nuance/xt9/input/DockWarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/xt9/input/DockWarningActivity$2;->this$0:Lcom/nuance/xt9/input/DockWarningActivity;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/DockWarningActivity;->finish()V

    .line 64
    return-void
.end method
