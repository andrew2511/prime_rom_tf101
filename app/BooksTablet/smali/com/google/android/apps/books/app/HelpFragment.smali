.class public Lcom/google/android/apps/books/app/HelpFragment;
.super Landroid/app/DialogFragment;
.source "HelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;,
        Lcom/google/android/apps/books/app/HelpFragment$Item;,
        Lcom/google/android/apps/books/app/HelpFragment$Arguments;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/app/HelpFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/books/app/HelpFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method private getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .locals 1

    .prologue
    .line 232
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/HelpFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 100
    .local v3, context:Landroid/content/Context;
    new-instance v0, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;

    invoke-direct {v0, p0, v3}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;-><init>(Lcom/google/android/apps/books/app/HelpFragment;Landroid/content/Context;)V

    .line 101
    .local v0, adapter:Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;
    invoke-static {v3}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v2

    .line 103
    .local v2, config:Lcom/google/android/apps/books/util/Config;
    const v5, 0x7f0b0050

    const v6, 0x7f0b0051

    new-instance v7, Lcom/google/android/apps/books/app/HelpFragment$1;

    invoke-direct {v7, p0, v2}, Lcom/google/android/apps/books/app/HelpFragment$1;-><init>(Lcom/google/android/apps/books/app/HelpFragment;Lcom/google/android/apps/books/util/Config;)V

    invoke-virtual {v0, v5, v6, v7}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->add(IILandroid/view/View$OnClickListener;)V

    .line 110
    const v5, 0x7f0b0054

    const v6, 0x7f0b0055

    new-instance v7, Lcom/google/android/apps/books/app/HelpFragment$2;

    invoke-direct {v7, p0, v2}, Lcom/google/android/apps/books/app/HelpFragment$2;-><init>(Lcom/google/android/apps/books/app/HelpFragment;Lcom/google/android/apps/books/util/Config;)V

    invoke-virtual {v0, v5, v6, v7}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->add(IILandroid/view/View$OnClickListener;)V

    .line 117
    const v5, 0x7f0b0056

    const v6, 0x7f0b0057

    new-instance v7, Lcom/google/android/apps/books/app/HelpFragment$3;

    invoke-direct {v7, p0, v2}, Lcom/google/android/apps/books/app/HelpFragment$3;-><init>(Lcom/google/android/apps/books/app/HelpFragment;Lcom/google/android/apps/books/util/Config;)V

    invoke-virtual {v0, v5, v6, v7}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->add(IILandroid/view/View$OnClickListener;)V

    .line 138
    const v5, 0x7f0b004c

    const v6, 0x7f0b004d

    new-instance v7, Lcom/google/android/apps/books/app/HelpFragment$4;

    invoke-direct {v7, p0, v2}, Lcom/google/android/apps/books/app/HelpFragment$4;-><init>(Lcom/google/android/apps/books/app/HelpFragment;Lcom/google/android/apps/books/util/Config;)V

    invoke-virtual {v0, v5, v6, v7}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->add(IILandroid/view/View$OnClickListener;)V

    .line 149
    const v5, 0x7f0b004e

    const v6, 0x7f0b004f

    new-instance v7, Lcom/google/android/apps/books/app/HelpFragment$5;

    invoke-direct {v7, p0, v2}, Lcom/google/android/apps/books/app/HelpFragment$5;-><init>(Lcom/google/android/apps/books/app/HelpFragment;Lcom/google/android/apps/books/util/Config;)V

    invoke-virtual {v0, v5, v6, v7}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->add(IILandroid/view/View$OnClickListener;)V

    .line 159
    const v5, 0x7f0b004a

    const v6, 0x7f0b004b

    new-instance v7, Lcom/google/android/apps/books/app/HelpFragment$6;

    invoke-direct {v7, p0}, Lcom/google/android/apps/books/app/HelpFragment$6;-><init>(Lcom/google/android/apps/books/app/HelpFragment;)V

    invoke-virtual {v0, v5, v6, v7}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->add(IILandroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {v2}, Lcom/google/android/apps/books/util/Config;->getVersionString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, versionString:Ljava/lang/CharSequence;
    const v5, 0x7f0b005b

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/app/HelpFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v4, v6}, Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;->add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 173
    const v5, 0x7f0b005a

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 175
    new-instance v5, Lcom/google/android/apps/books/app/HelpFragment$7;

    invoke-direct {v5, p0, v0}, Lcom/google/android/apps/books/app/HelpFragment$7;-><init>(Lcom/google/android/apps/books/app/HelpFragment;Lcom/google/android/apps/books/app/HelpFragment$ItemAdapter;)V

    invoke-virtual {v1, v0, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
