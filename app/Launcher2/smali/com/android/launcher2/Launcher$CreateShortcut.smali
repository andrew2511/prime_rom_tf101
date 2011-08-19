.class Lcom/android/launcher2/Launcher$CreateShortcut;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateShortcut"
.end annotation


# instance fields
.field private mAdapter:Lcom/android/launcher2/AddAdapter;

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 3263
    iput-object p1, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3263
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$CreateShortcut;-><init>(Lcom/android/launcher2/Launcher;)V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 3296
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3300
    :goto_0
    return-void

    .line 3297
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 3270
    new-instance v2, Lcom/android/launcher2/AddAdapter;

    iget-object v3, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {v2, v3}, Lcom/android/launcher2/AddAdapter;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->mAdapter:Lcom/android/launcher2/AddAdapter;

    .line 3272
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3273
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const v3, 0x7f0e001f

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3274
    iget-object v2, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->mAdapter:Lcom/android/launcher2/AddAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3276
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 3278
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3279
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3280
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3281
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 3283
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3287
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$1802(Lcom/android/launcher2/Launcher;Z)Z

    .line 3288
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$CreateShortcut;->cleanup()V

    .line 3289
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3306
    iget-object v6, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3307
    .local v3, res:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$CreateShortcut;->cleanup()V

    .line 3309
    packed-switch p2, :pswitch_data_0

    .line 3355
    :goto_0
    return-void

    .line 3311
    :pswitch_0
    iget-object v6, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v6}, Lcom/android/launcher2/Launcher;->access$2700(Lcom/android/launcher2/Launcher;)V

    goto :goto_0

    .line 3316
    :pswitch_1
    iget-object v6, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v6}, Lcom/android/launcher2/Launcher;->access$700(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 3318
    .local v0, appWidgetId:I
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3319
    .local v2, pickIntent:Landroid/content/Intent;
    const-string v6, "appWidgetId"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3321
    iget-object v6, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/16 v7, 0x9

    invoke-virtual {v6, v2, v7}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3327
    .end local v0           #appWidgetId:I
    .end local v2           #pickIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3329
    .local v1, bundle:Landroid/os/Bundle;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3330
    .local v5, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v6, 0x7f0e0022

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3331
    const-string v6, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3333
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3335
    .local v4, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    iget-object v6, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const v7, 0x7f020066

    invoke-static {v6, v7}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3337
    const-string v6, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3339
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3340
    .restart local v2       #pickIntent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.INTENT"

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3342
    const-string v6, "android.intent.extra.TITLE"

    iget-object v7, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const v8, 0x7f0e002f

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 3344
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3346
    iget-object v6, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/16 v7, 0x8

    invoke-virtual {v6, v2, v7}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 3351
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #pickIntent:Landroid/content/Intent;
    .end local v4           #shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    .end local v5           #shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_3
    iget-object v6, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v6}, Lcom/android/launcher2/Launcher;->access$2800(Lcom/android/launcher2/Launcher;)V

    goto/16 :goto_0

    .line 3309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 3292
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3358
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CreateShortcut;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$1802(Lcom/android/launcher2/Launcher;Z)Z

    .line 3359
    return-void
.end method
