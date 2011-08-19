.class Lcom/android/settings/SettingsGeoNamesCcByActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SettingsGeoNamesCcByActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsGeoNamesCcByActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsGeoNamesCcByActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsGeoNamesCcByActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/SettingsGeoNamesCcByActivity$1;->this$0:Lcom/android/settings/SettingsGeoNamesCcByActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/SettingsGeoNamesCcByActivity$1;->this$0:Lcom/android/settings/SettingsGeoNamesCcByActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsGeoNamesCcByActivity;->access$000(Lcom/android/settings/SettingsGeoNamesCcByActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsGeoNamesCcByActivity$1;->this$0:Lcom/android/settings/SettingsGeoNamesCcByActivity;

    const v2, 0x7f080010

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsGeoNamesCcByActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method
