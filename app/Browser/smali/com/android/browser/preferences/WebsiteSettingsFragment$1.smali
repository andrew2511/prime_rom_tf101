.class Lcom/android/browser/preferences/WebsiteSettingsFragment$1;
.super Ljava/lang/Object;
.source "WebsiteSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/preferences/WebsiteSettingsFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/browser/preferences/WebsiteSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$1;->this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dlg"
    .parameter "which"

    .prologue
    .line 660
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 661
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 662
    invoke-static {}, Lcom/android/browser/WebStorageSizeManager;->resetLastOutOfSpaceNotificationTime()V

    .line 663
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$1;->this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-static {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->access$700(Lcom/android/browser/preferences/WebsiteSettingsFragment;)Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->askForOrigins()V

    .line 664
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$1;->this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-static {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->access$100(Lcom/android/browser/preferences/WebsiteSettingsFragment;)V

    .line 665
    return-void
.end method
