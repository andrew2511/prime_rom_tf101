.class public Lcom/asus/DMS/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;
    }
.end annotation


# static fields
.field private static final KEY_DEVNAME_ED_PREFERENCE:Ljava/lang/String; = "editTextFriendlyname"

.field private static final KEY_DMS_CBX_PREFERENCE:Ljava/lang/String; = "enableServer"

.field private static final KEY_MUSIC_CBX_PREFERENCE:Ljava/lang/String; = "checkMusic"

.field private static final KEY_PHOTO_CBX_PREFERENCE:Ljava/lang/String; = "checkPicture"

.field private static final KEY_SHAREFOLDER_PREFERENCE:Ljava/lang/String; = "pref_sharefolder"

.field private static final KEY_VIDEO_CBX_PREFERENCE:Ljava/lang/String; = "checkVideo"

.field private static final STR_DEFAULT_INTERNAL_STORAGE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DMS_Settings"

.field private static intent_go_home:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/asus/DMS/Settings;->STR_DEFAULT_INTERNAL_STORAGE:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/DMS/Settings;->intent_go_home:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 87
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/asus/DMS/Settings;->STR_DEFAULT_INTERNAL_STORAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/asus/DMS/Settings;->intent_go_home:Landroid/content/Intent;

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
    .line 83
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f050001

    invoke-virtual {p0, v0, p1}, Lcom/asus/DMS/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/asus/DMS/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 59
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/asus/DLNA/DLNA;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v1, Lcom/asus/DMS/Settings;->intent_go_home:Landroid/content/Intent;

    .line 61
    sget-object v1, Lcom/asus/DMS/Settings;->intent_go_home:Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 69
    :pswitch_0
    sget-object v0, Lcom/asus/DMS/Settings;->intent_go_home:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/asus/DMS/Settings;->startActivity(Landroid/content/Intent;)V

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
