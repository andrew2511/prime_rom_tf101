.class Lcom/android/settings/vpn/VpnSettings$12;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->deleteProfile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;

.field final synthetic val$position:I

.field final synthetic val$target:Landroid/net/vpn/VpnProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnSettings;ILandroid/net/vpn/VpnProfile;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$12;->this$0:Lcom/android/settings/vpn/VpnSettings;

    iput p2, p0, Lcom/android/settings/vpn/VpnSettings$12;->val$position:I

    iput-object p3, p0, Lcom/android/settings/vpn/VpnSettings$12;->val$target:Landroid/net/vpn/VpnProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 600
    invoke-static {}, Lcom/android/settings/vpn/VpnSettings;->access$900()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/vpn/VpnSettings$12;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vpn/VpnProfile;

    .line 601
    .local v0, p:Landroid/net/vpn/VpnProfile;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$12;->val$target:Landroid/net/vpn/VpnProfile;

    if-eq v0, v2, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 603
    invoke-static {}, Lcom/android/settings/vpn/VpnSettings;->access$900()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/vpn/VpnSettings$12;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 604
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$12;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v2}, Lcom/android/settings/vpn/VpnSettings;->access$1000(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 606
    .local v1, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$12;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v2}, Lcom/android/settings/vpn/VpnSettings;->access$1100(Lcom/android/settings/vpn/VpnSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 607
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$12;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v2, v0}, Lcom/android/settings/vpn/VpnSettings;->access$1200(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    goto :goto_0
.end method
