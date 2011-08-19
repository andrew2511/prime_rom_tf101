.class Lcom/infraware/filemanager/FmSettingActivity$4;
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
    iput-object p1, p0, Lcom/infraware/filemanager/FmSettingActivity$4;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 280
    iget-object v3, p0, Lcom/infraware/filemanager/FmSettingActivity$4;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    iget-object v3, v3, Lcom/infraware/filemanager/FmSettingActivity;->m_oCheckboxPivotLock:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 281
    .local v0, bChecked:Z
    if-eqz v0, :cond_1

    .line 282
    iget-object v3, p0, Lcom/infraware/filemanager/FmSettingActivity$4;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    iget-object v3, v3, Lcom/infraware/filemanager/FmSettingActivity;->m_oCheckboxPivotLock:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 286
    :goto_1
    iget-object v3, p0, Lcom/infraware/filemanager/FmSettingActivity$4;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-static {v3}, Lcom/infraware/filemanager/FmSettingActivity;->access$0(Lcom/infraware/filemanager/FmSettingActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 287
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "fm_setting_pivot_lock"

    if-eqz v0, :cond_3

    move v4, v5

    :goto_2
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    iget-object v3, p0, Lcom/infraware/filemanager/FmSettingActivity$4;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-virtual {v3}, Lcom/infraware/filemanager/FmSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 292
    .local v1, config:Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 294
    const-string v3, "fm_setting_isLandscape"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 295
    if-nez v0, :cond_4

    .line 296
    iget-object v3, p0, Lcom/infraware/filemanager/FmSettingActivity$4;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-virtual {v3, v5}, Lcom/infraware/filemanager/FmSettingActivity;->setRequestedOrientation(I)V

    .line 309
    :goto_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 310
    return-void

    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    move v4, v6

    .line 282
    goto :goto_0

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/infraware/filemanager/FmSettingActivity$4;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    iget-object v3, v3, Lcom/infraware/filemanager/FmSettingActivity;->m_oCheckboxPivotLock:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    move v4, v5

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_4

    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    move v4, v6

    .line 287
    goto :goto_2

    .line 298
    .restart local v1       #config:Landroid/content/res/Configuration;
    :cond_4
    iget-object v3, p0, Lcom/infraware/filemanager/FmSettingActivity$4;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-virtual {v3, v7}, Lcom/infraware/filemanager/FmSettingActivity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 302
    :cond_5
    const-string v3, "fm_setting_isLandscape"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 303
    if-nez v0, :cond_6

    .line 304
    iget-object v3, p0, Lcom/infraware/filemanager/FmSettingActivity$4;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-virtual {v3, v6}, Lcom/infraware/filemanager/FmSettingActivity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 306
    :cond_6
    iget-object v3, p0, Lcom/infraware/filemanager/FmSettingActivity$4;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-virtual {v3, v7}, Lcom/infraware/filemanager/FmSettingActivity;->setRequestedOrientation(I)V

    goto :goto_3
.end method
