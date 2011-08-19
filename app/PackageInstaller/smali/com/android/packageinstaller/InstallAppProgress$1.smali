.class Lcom/android/packageinstaller/InstallAppProgress$1;
.super Landroid/os/Handler;
.source "InstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/InstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/InstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/InstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 75
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$000(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    const/4 v0, -0x1

    .line 82
    .local v0, centerExplanationLabel:I
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v5}, Lcom/android/packageinstaller/InstallAppProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LevelListDrawable;

    .line 84
    .local v1, centerTextDrawable:Landroid/graphics/drawable/LevelListDrawable;
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v7, :cond_3

    .line 85
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$100(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 87
    const v2, 0x7f050007

    .line 89
    .local v2, centerTextLabel:I
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v6}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v7}, Lcom/android/packageinstaller/InstallAppProgress;->access$300(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/packageinstaller/InstallAppProgress;->access$202(Lcom/android/packageinstaller/InstallAppProgress;Landroid/content/Intent;)Landroid/content/Intent;

    .line 91
    const/4 v3, 0x0

    .line 92
    .local v3, enabled:Z
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 93
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v5}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v6}, Lcom/android/packageinstaller/InstallAppProgress;->access$200(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 95
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 96
    const/4 v3, 0x1

    .line 99
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    if-eqz v3, :cond_2

    .line 100
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$100(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .end local v3           #enabled:Z
    :goto_1
    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {v1}, Landroid/graphics/drawable/LevelListDrawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/LevelListDrawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v8, v8, v5, v6}, Landroid/graphics/drawable/LevelListDrawable;->setBounds(IIII)V

    .line 118
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$600(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_1
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$600(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 121
    const/4 v5, -0x1

    if-eq v0, v5, :cond_5

    .line 122
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$700(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 123
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$700(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :goto_2
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$800(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$900(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 102
    .restart local v3       #enabled:Z
    :cond_2
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$100(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 104
    .end local v2           #centerTextLabel:I
    .end local v3           #enabled:Z
    :cond_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    const/4 v6, -0x4

    if-ne v5, v6, :cond_4

    .line 105
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5, v7}, Lcom/android/packageinstaller/InstallAppProgress;->access$400(Lcom/android/packageinstaller/InstallAppProgress;I)V

    goto/16 :goto_0

    .line 109
    :cond_4
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 110
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5, v6}, Lcom/android/packageinstaller/InstallAppProgress;->access$500(Lcom/android/packageinstaller/InstallAppProgress;I)I

    move-result v0

    .line 111
    const v2, 0x7f050009

    .line 112
    .restart local v2       #centerTextLabel:I
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$100(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 125
    :cond_5
    iget-object v5, p0, Lcom/android/packageinstaller/InstallAppProgress$1;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v5}, Lcom/android/packageinstaller/InstallAppProgress;->access$700(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
