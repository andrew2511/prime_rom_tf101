.class Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;
.super Ljava/lang/Object;
.source "WebsiteSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;


# direct methods
.method constructor <init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;->this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dlg"
    .parameter "which"

    .prologue
    .line 561
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;->this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-static {v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->access$600(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebStorage;->deleteOrigin(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;->this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-static {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->access$600(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->removeFeature(I)V

    .line 565
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;->this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-static {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->access$600(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getFeatureCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;->this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    iget-object v0, v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-static {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->access$100(Lcom/android/browser/preferences/WebsiteSettingsFragment;)V

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;->this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-virtual {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->askForOrigins()V

    .line 569
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;->this$1:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-virtual {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->notifyDataSetChanged()V

    .line 570
    return-void
.end method
