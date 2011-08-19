.class public Lcom/android/packageinstaller/UninstallerActivity;
.super Landroid/app/Activity;
.source "UninstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCancel:Landroid/widget/Button;

.field private mOk:Landroid/widget/Button;

.field mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->localLOGV:Z

    return-void
.end method

.method private startUninstallProgress()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    const-string v1, "com.android.packageinstaller.applicationInfo"

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    const-class v1, Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/UninstallerActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->finish()V

    .line 104
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->finish()V

    .line 191
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 183
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->startUninstallProgress()V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mCancel:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    .line 108
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 113
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 114
    .local v13, packageURI:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 115
    .local v12, packageName:Ljava/lang/String;
    if-nez v12, :cond_0

    .line 116
    const-string v16, "UninstallerActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid package name:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/UninstallerActivity;->showDialog(I)V

    .line 178
    .end local p1
    :goto_0
    return-void

    .line 121
    .restart local p1
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/UninstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 122
    const/4 v9, 0x0

    .line 124
    .local v9, errFlag:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    const/16 v17, 0x2000

    move-object/from16 v0, v16

    move-object v1, v12

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    invoke-virtual {v13}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, className:Ljava/lang/String;
    const/4 v3, 0x0

    .line 132
    .local v3, activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_1

    .line 134
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    new-instance v17, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    move-object v1, v12

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 140
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    if-eqz v9, :cond_3

    .line 141
    :cond_2
    const-string v16, "UninstallerActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid packageName or componentName in "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/UninstallerActivity;->showDialog(I)V

    goto :goto_0

    .line 125
    .end local v3           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #className:Ljava/lang/String;
    :catch_0
    move-exception v16

    move-object/from16 v8, v16

    .line 126
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x1

    goto :goto_1

    .line 135
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v6       #className:Ljava/lang/String;
    :catch_1
    move-exception v16

    move-object/from16 v8, v16

    .line 136
    .restart local v8       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x1

    goto :goto_2

    .line 144
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    if-eqz v16, :cond_5

    const/16 v16, 0x1

    move/from16 v11, v16

    .line 146
    .local v11, isUpdate:Z
    :goto_3
    const v16, 0x7f030004

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/UninstallerActivity;->setContentView(I)V

    .line 148
    const v16, 0x7f070014

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 149
    .local v7, confirm:Landroid/widget/TextView;
    if-eqz v11, :cond_6

    .line 150
    const v16, 0x7f05001e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/UninstallerActivity;->setTitle(I)V

    .line 151
    const v16, 0x7f050021

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    :goto_4
    if-eqz v3, :cond_4

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 161
    .local v4, activityLabel:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 162
    const v16, 0x7f070012

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 163
    .local v5, activityText:Landroid/widget/TextView;
    const v16, 0x7f05001f

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 164
    .local v15, text:Ljava/lang/CharSequence;
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const/16 v16, 0x0

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    .end local v4           #activityLabel:Ljava/lang/CharSequence;
    .end local v5           #activityText:Landroid/widget/TextView;
    .end local v15           #text:Ljava/lang/CharSequence;
    :cond_4
    const v16, 0x7f070013

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 170
    .local v14, snippetView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    invoke-static {v0, v1, v2}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/view/View;)Landroid/view/View;

    .line 173
    const v16, 0x7f070008

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/UninstallerActivity;->mOk:Landroid/widget/Button;

    .line 174
    const v16, 0x7f070009

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/packageinstaller/UninstallerActivity;->mCancel:Landroid/widget/Button;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity;->mOk:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity;->mCancel:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 144
    .end local v7           #confirm:Landroid/widget/TextView;
    .end local v11           #isUpdate:Z
    .end local v14           #snippetView:Landroid/view/View;
    .restart local p1
    :cond_5
    const/16 v16, 0x0

    move/from16 v11, v16

    goto/16 :goto_3

    .line 153
    .restart local v7       #confirm:Landroid/widget/TextView;
    .restart local v11       #isUpdate:Z
    :cond_6
    const v16, 0x7f05001d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/UninstallerActivity;->setTitle(I)V

    .line 154
    const v16, 0x7f050020

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x7f05001a

    const v6, 0x1080027

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 94
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 67
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f05001b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f05001c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/packageinstaller/UninstallerActivity$1;

    invoke-direct {v4, p0}, Lcom/android/packageinstaller/UninstallerActivity$1;-><init>(Lcom/android/packageinstaller/UninstallerActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 80
    .local v0, appTitle:Ljava/lang/CharSequence;
    const v2, 0x7f050027

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, dlgText:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f050024

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/packageinstaller/UninstallerActivity$2;

    invoke-direct {v4, p0}, Lcom/android/packageinstaller/UninstallerActivity$2;-><init>(Lcom/android/packageinstaller/UninstallerActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
