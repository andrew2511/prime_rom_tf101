.class Lcom/amazon/kcp/redding/AlertActivity$4;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/redding/AlertActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/AlertActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/AlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$4;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity$4;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/AlertActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/redding/AlertActivity$4;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-static {v1}, Lcom/amazon/kcp/redding/AlertActivity;->access$100(Lcom/amazon/kcp/redding/AlertActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startSettingsActivity(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity$4;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/AlertActivity;->finish()V

    .line 199
    return-void
.end method
