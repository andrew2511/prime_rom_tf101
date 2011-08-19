.class Lcom/amazon/kcp/settings/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/settings/SettingsActivity;->buildLogoutDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/settings/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/amazon/kcp/settings/SettingsActivity$4;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity$4;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/settings/SettingsActivity;->showDialog(I)V

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/settings/SettingsActivity$4;->this$0:Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-static {v0}, Lcom/amazon/kcp/settings/SettingsActivity;->access$900(Lcom/amazon/kcp/settings/SettingsActivity;)Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->deregister(Z)V

    .line 194
    return-void
.end method
