.class Lcom/nuance/xt9/input/DockWarningActivity$1;
.super Ljava/lang/Object;
.source "DockWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 47
    iput-object p1, p0, Lcom/nuance/xt9/input/DockWarningActivity$1;->this$0:Lcom/nuance/xt9/input/DockWarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dailog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 49
    const/4 v2, -0x2

    if-ne p2, v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/nuance/xt9/input/DockWarningActivity$1;->this$0:Lcom/nuance/xt9/input/DockWarningActivity;

    invoke-static {v2}, Lcom/nuance/xt9/input/DockWarningActivity;->access$000(Lcom/nuance/xt9/input/DockWarningActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/xt9/input/DockWarningActivity$1;->this$0:Lcom/nuance/xt9/input/DockWarningActivity;

    invoke-static {v2}, Lcom/nuance/xt9/input/DockWarningActivity;->access$000(Lcom/nuance/xt9/input/DockWarningActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/nuance/xt9/input/DockWarningActivity$1;->this$0:Lcom/nuance/xt9/input/DockWarningActivity;

    const-string v3, "dockwarning.pref"

    invoke-virtual {v2, v3, v4}, Lcom/nuance/xt9/input/DockWarningActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    .local v1, preference:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "show_dockwarning"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preference:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/DockWarningActivity$1;->this$0:Lcom/nuance/xt9/input/DockWarningActivity;

    invoke-virtual {v2}, Lcom/nuance/xt9/input/DockWarningActivity;->finish()V

    .line 58
    :cond_1
    return-void
.end method
