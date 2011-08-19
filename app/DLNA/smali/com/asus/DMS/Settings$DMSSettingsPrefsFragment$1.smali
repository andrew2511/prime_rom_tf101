.class Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->fnCreateWaitingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;


# direct methods
.method constructor <init>(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$1;->this$0:Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$1;->this$0:Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;

    invoke-static {v0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->access$200(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "DMSSettingsFT"

    const-string v1, "press back key during showing waiting icon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$1;->this$0:Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;

    invoke-static {v0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->access$200(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 404
    iget-object v0, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$1;->this$0:Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;

    invoke-static {}, Lcom/asus/DMS/Settings;->access$300()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->startActivity(Landroid/content/Intent;)V

    .line 406
    :cond_0
    return-void
.end method
