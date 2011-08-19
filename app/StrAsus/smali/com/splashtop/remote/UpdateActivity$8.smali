.class Lcom/splashtop/remote/UpdateActivity$8;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/splashtop/remote/UpdateActivity;->showHelpDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/UpdateActivity;

.field final synthetic val$cbNeverShow:Landroid/widget/CheckBox;

.field final synthetic val$settings:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/UpdateActivity;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/splashtop/remote/UpdateActivity$8;->this$0:Lcom/splashtop/remote/UpdateActivity;

    iput-object p2, p0, Lcom/splashtop/remote/UpdateActivity$8;->val$settings:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/splashtop/remote/UpdateActivity$8;->val$cbNeverShow:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity$8;->val$settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "never_show_help"

    iget-object v2, p0, Lcom/splashtop/remote/UpdateActivity$8;->val$cbNeverShow:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    iget-object v0, p0, Lcom/splashtop/remote/UpdateActivity$8;->val$settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_first_help"

    iget-object v2, p0, Lcom/splashtop/remote/UpdateActivity$8;->val$cbNeverShow:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    return-void
.end method
