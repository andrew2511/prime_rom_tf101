.class Lcom/infraware/filemanager/FmSettingActivity$9;
.super Ljava/lang/Object;
.source "FmSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/infraware/filemanager/FmSettingActivity$9;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 446
    iget-object v2, p0, Lcom/infraware/filemanager/FmSettingActivity$9;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-static {v2}, Lcom/infraware/filemanager/FmSettingActivity;->access$0(Lcom/infraware/filemanager/FmSettingActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 447
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "fm_setting_pivot_lock"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 450
    iget-object v2, p0, Lcom/infraware/filemanager/FmSettingActivity$9;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-virtual {v2}, Lcom/infraware/filemanager/FmSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 452
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 454
    const-string v2, "fm_setting_isLandscape"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 455
    if-eqz p2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/infraware/filemanager/FmSettingActivity$9;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-virtual {v2, v5}, Lcom/infraware/filemanager/FmSettingActivity;->setRequestedOrientation(I)V

    .line 469
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 470
    return-void

    .line 458
    :cond_0
    iget-object v2, p0, Lcom/infraware/filemanager/FmSettingActivity$9;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-virtual {v2, v4}, Lcom/infraware/filemanager/FmSettingActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 462
    :cond_1
    const-string v2, "fm_setting_isLandscape"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 463
    if-eqz p2, :cond_2

    .line 464
    iget-object v2, p0, Lcom/infraware/filemanager/FmSettingActivity$9;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-virtual {v2, v6}, Lcom/infraware/filemanager/FmSettingActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 466
    :cond_2
    iget-object v2, p0, Lcom/infraware/filemanager/FmSettingActivity$9;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-virtual {v2, v4}, Lcom/infraware/filemanager/FmSettingActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
