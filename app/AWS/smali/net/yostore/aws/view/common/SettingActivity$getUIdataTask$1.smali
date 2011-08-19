.class Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$1;->this$1:Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v3, 0x1

    .line 238
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$1;->this$1:Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;

    invoke-static {v0}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->access$4(Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)Lnet/yostore/aws/view/common/SettingActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/view/common/SettingActivity;->access$3(Lnet/yostore/aws/view/common/SettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 239
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$1;->this$1:Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;

    invoke-static {v0}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->access$4(Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)Lnet/yostore/aws/view/common/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$1;->this$1:Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->access$4(Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)Lnet/yostore/aws/view/common/SettingActivity;

    move-result-object v1

    invoke-static {v1}, Lnet/yostore/aws/view/common/SettingActivity;->access$1(Lnet/yostore/aws/view/common/SettingActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Lnet/yostore/aws/view/common/SettingActivity;->access$4(Lnet/yostore/aws/view/common/SettingActivity;Ljava/lang/String;II)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$1;->this$1:Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;

    invoke-static {v0}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->access$4(Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)Lnet/yostore/aws/view/common/SettingActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/view/common/SettingActivity;->access$5(Lnet/yostore/aws/view/common/SettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 241
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$1;->this$1:Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;

    invoke-static {v0}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->access$4(Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)Lnet/yostore/aws/view/common/SettingActivity;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$1;->this$1:Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->access$4(Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)Lnet/yostore/aws/view/common/SettingActivity;

    move-result-object v1

    invoke-static {v1}, Lnet/yostore/aws/view/common/SettingActivity;->access$1(Lnet/yostore/aws/view/common/SettingActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Lnet/yostore/aws/view/common/SettingActivity;->access$4(Lnet/yostore/aws/view/common/SettingActivity;Ljava/lang/String;II)V

    goto :goto_0
.end method
