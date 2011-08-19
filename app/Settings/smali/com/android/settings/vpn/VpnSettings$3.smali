.class Lcom/android/settings/vpn/VpnSettings$3;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn/VpnSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn/VpnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$3;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings$3;->this$0:Lcom/android/settings/vpn/VpnSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/vpn/VpnSettings;->access$502(Lcom/android/settings/vpn/VpnSettings;Z)Z

    .line 282
    return-void
.end method
