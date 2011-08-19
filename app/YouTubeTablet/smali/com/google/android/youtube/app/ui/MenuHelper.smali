.class public final Lcom/google/android/youtube/app/ui/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final navigation:Lcom/google/android/youtube/app/Navigation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;)V
    .locals 0
    .parameter "activity"
    .parameter "navigation"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/MenuHelper;->activity:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/MenuHelper;->navigation:Lcom/google/android/youtube/app/Navigation;

    .line 27
    return-void
.end method


# virtual methods
.method public onCreateMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/MenuHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/MenuHelper;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->isUploadAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const v0, 0x7f080089

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 40
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/MenuHelper;->navigation:Lcom/google/android/youtube/app/Navigation;

    invoke-interface {v0}, Lcom/google/android/youtube/app/Navigation;->toHome()V

    move v0, v3

    .line 53
    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/MenuHelper;->navigation:Lcom/google/android/youtube/app/Navigation;

    invoke-interface {v0}, Lcom/google/android/youtube/app/Navigation;->toBrowse()V

    move v0, v3

    .line 57
    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/MenuHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    move v0, v3

    .line 61
    goto :goto_0

    .line 64
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/MenuHelper;->navigation:Lcom/google/android/youtube/app/Navigation;

    invoke-interface {v0}, Lcom/google/android/youtube/app/Navigation;->toMyChannel()V

    move v0, v3

    .line 65
    goto :goto_0

    .line 68
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/MenuHelper;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startVideoPickerForUpload(Landroid/app/Activity;)V

    move v0, v3

    .line 69
    goto :goto_0

    .line 72
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/MenuHelper;->navigation:Lcom/google/android/youtube/app/Navigation;

    invoke-interface {v0}, Lcom/google/android/youtube/app/Navigation;->toSettings()V

    move v0, v3

    .line 73
    goto :goto_0

    .line 76
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/MenuHelper;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/MenuHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d00ec

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->getLocalizedHelpUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    move v0, v3

    .line 78
    goto :goto_0

    .line 81
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/MenuHelper;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/MenuHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f0d00ed

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->getLocalizedHelpUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    move v0, v3

    .line 83
    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x7f080085
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
