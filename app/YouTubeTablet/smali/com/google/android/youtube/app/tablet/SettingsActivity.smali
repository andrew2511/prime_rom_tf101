.class public Lcom/google/android/youtube/app/tablet/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/tablet/SettingsActivity$AboutPrefsFragment;,
        Lcom/google/android/youtube/app/tablet/SettingsActivity$SearchPrefsFragment;,
        Lcom/google/android/youtube/app/tablet/SettingsActivity$GeneralPrefsFragment;
    }
.end annotation


# instance fields
.field private application:Lcom/google/android/youtube/app/YouTubeApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/app/tablet/SettingsActivity;)Lcom/google/android/youtube/app/YouTubeApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/SettingsActivity;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    return-object v0
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f060002

    invoke-virtual {p0, v0, p1}, Lcom/google/android/youtube/app/tablet/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 36
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 43
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v1, 0xc

    .line 44
    .local v1, displayOptions:I
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object v2, p0, Lcom/google/android/youtube/app/tablet/SettingsActivity;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    .line 47
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 57
    packed-switch p1, :pswitch_data_0

    .line 86
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/android/youtube/app/tablet/SettingsActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity$1;-><init>(Lcom/google/android/youtube/app/tablet/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0001

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/SettingsActivity;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/YouTubeApplication;->getSafeSearch()Lcom/google/android/youtube/core/utils/SafeSearch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/utils/SafeSearch;->getMode()Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/utils/SafeSearch$SafeSearchMode;->ordinal()I

    move-result v2

    new-instance v3, Lcom/google/android/youtube/app/tablet/SettingsActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity$2;-><init>(Lcom/google/android/youtube/app/tablet/SettingsActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 96
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/SettingsActivity;->finish()V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/SettingsActivity;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/YouTubeApplication;->trackPage(Ljava/lang/String;)V

    .line 53
    return-void
.end method
