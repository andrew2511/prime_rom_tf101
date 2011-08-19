.class public Lcom/nuance/xt9/input/DockWarningActivity;
.super Landroid/app/Activity;
.source "DockWarningActivity.java"


# static fields
.field public static final PREF_FILENAME:Ljava/lang/String; = "dockwarning.pref"

.field public static final PREF_SHOW_WARNING:Ljava/lang/String; = "show_dockwarning"

.field private static final WARNING_DIALOG_ID:I = 0x1


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field public mDlgOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mDlgOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Lcom/nuance/xt9/input/DockWarningActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/DockWarningActivity$1;-><init>(Lcom/nuance/xt9/input/DockWarningActivity;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/DockWarningActivity;->mDlgOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 61
    new-instance v0, Lcom/nuance/xt9/input/DockWarningActivity$2;

    invoke-direct {v0, p0}, Lcom/nuance/xt9/input/DockWarningActivity$2;-><init>(Lcom/nuance/xt9/input/DockWarningActivity;)V

    iput-object v0, p0, Lcom/nuance/xt9/input/DockWarningActivity;->mDlgOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/xt9/input/DockWarningActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nuance/xt9/input/DockWarningActivity;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/DockWarningActivity;->setVisible(Z)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/xt9/input/DockWarningActivity;->showDialog(I)V

    .line 28
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    move-object v3, v4

    .line 44
    :goto_0
    return-object v3

    .line 35
    :pswitch_0
    const v3, 0x7f080059

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 36
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/nuance/xt9/input/DockWarningActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 37
    .local v2, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030011

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, content:Landroid/view/View;
    const v3, 0x7f09002b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/nuance/xt9/input/DockWarningActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 39
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 40
    const v3, 0x104000a

    iget-object v4, p0, Lcom/nuance/xt9/input/DockWarningActivity;->mDlgOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    iget-object v3, p0, Lcom/nuance/xt9/input/DockWarningActivity;->mDlgOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 42
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
