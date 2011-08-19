.class Lcom/infraware/filemanager/FmSettingActivity$8;
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
    iput-object p1, p0, Lcom/infraware/filemanager/FmSettingActivity$8;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/infraware/filemanager/FmSettingActivity$8;->this$0:Lcom/infraware/filemanager/FmSettingActivity;

    invoke-static {v1}, Lcom/infraware/filemanager/FmSettingActivity;->access$0(Lcom/infraware/filemanager/FmSettingActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 433
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "fm_setting_file_extension"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 434
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 435
    return-void
.end method
