.class Lcom/infraware/filemanager/FmSettingActivity$3;
.super Ljava/lang/Object;
.source "FmSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/FmSettingActivity;->setEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmSettingActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmSettingActivity$3;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    iget-object v2, p0, Lcom/infraware/filemanager/FmSettingActivity$3;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    iget-object v2, v2, Lcom/infraware/filemanager/FmSettingActivity;->m_oCheckboxDisplayExtention:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 263
    .local v0, bChecked:Z
    if-eqz v0, :cond_1

    .line 264
    iget-object v2, p0, Lcom/infraware/filemanager/FmSettingActivity$3;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    iget-object v2, v2, Lcom/infraware/filemanager/FmSettingActivity;->m_oCheckboxDisplayExtention:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 268
    :goto_1
    iget-object v2, p0, Lcom/infraware/filemanager/FmSettingActivity$3;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-static {v2}, Lcom/infraware/filemanager/FmSettingActivity;->access$0(Lcom/infraware/filemanager/FmSettingActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 269
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "fm_setting_file_extension"

    if-eqz v0, :cond_3

    move v3, v4

    :goto_2
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    return-void

    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    move v3, v5

    .line 264
    goto :goto_0

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/infraware/filemanager/FmSettingActivity$3;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    iget-object v2, v2, Lcom/infraware/filemanager/FmSettingActivity;->m_oCheckboxDisplayExtention:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_3

    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    move v3, v5

    .line 269
    goto :goto_2
.end method
