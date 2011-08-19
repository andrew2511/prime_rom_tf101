.class Lcom/android/launcher2/Launcher$RenameFolder;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameFolder"
.end annotation


# instance fields
.field private mInput:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 2531
    iput-object p1, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2531
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$RenameFolder;-><init>(Lcom/android/launcher2/Launcher;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Launcher$RenameFolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2531
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$RenameFolder;->cleanup()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Launcher$RenameFolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2531
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$RenameFolder;->changeFolderName()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher2/Launcher$RenameFolder;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/android/launcher2/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;

    return-object v0
.end method

.method private changeFolderName()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2578
    iget-object v2, p0, Lcom/android/launcher2/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2579
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2581
    iget-object v3, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {}, Lcom/android/launcher2/Launcher;->access$2100()Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->access$2000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/FolderInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderInfo;

    invoke-static {v3, v2}, Lcom/android/launcher2/Launcher;->access$2002(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderInfo;

    .line 2582
    iget-object v2, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$2000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/FolderInfo;

    move-result-object v2

    iput-object v1, v2, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 2583
    iget-object v2, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$2000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/FolderInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 2585
    iget-object v2, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$2200(Lcom/android/launcher2/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2586
    iget-object v2, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->lockAllApps()V

    .line 2587
    iget-object v2, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$2300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v3, v6}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 2601
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher$RenameFolder;->cleanup()V

    .line 2602
    return-void

    .line 2589
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$1300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$2000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/FolderInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIcon;

    .line 2591
    .local v0, folderIcon:Lcom/android/launcher2/FolderIcon;
    if-eqz v0, :cond_2

    .line 2592
    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 2593
    iget-object v2, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->requestLayout()V

    goto :goto_0

    .line 2595
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->lockAllApps()V

    .line 2596
    iget-object v2, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/launcher2/Launcher;->access$2202(Lcom/android/launcher2/Launcher;Z)Z

    .line 2597
    iget-object v2, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$2300(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v3, v6}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->dismissDialog(I)V

    .line 2606
    iget-object v0, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$1802(Lcom/android/launcher2/Launcher;Z)Z

    .line 2607
    iget-object v0, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$2002(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/FolderInfo;)Lcom/android/launcher2/FolderInfo;

    .line 2608
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 2535
    iget-object v3, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    const v4, 0x7f03001c

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2536
    .local v2, layout:Landroid/view/View;
    const v3, 0x7f080035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/launcher2/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;

    .line 2538
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2539
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2540
    iget-object v3, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    const v4, 0x7f0e001c

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2541
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2542
    new-instance v3, Lcom/android/launcher2/Launcher$RenameFolder$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Launcher$RenameFolder$1;-><init>(Lcom/android/launcher2/Launcher$RenameFolder;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2547
    iget-object v3, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    const v4, 0x7f0e001e

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/Launcher$RenameFolder$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Launcher$RenameFolder$2;-><init>(Lcom/android/launcher2/Launcher$RenameFolder;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2554
    iget-object v3, p0, Lcom/android/launcher2/Launcher$RenameFolder;->this$0:Lcom/android/launcher2/Launcher;

    const v4, 0x7f0e001d

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/Launcher$RenameFolder$3;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Launcher$RenameFolder$3;-><init>(Lcom/android/launcher2/Launcher$RenameFolder;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2561
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2563
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2564
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/launcher2/Launcher$RenameFolder$4;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Launcher$RenameFolder$4;-><init>(Lcom/android/launcher2/Launcher$RenameFolder;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2574
    return-object v1
.end method
