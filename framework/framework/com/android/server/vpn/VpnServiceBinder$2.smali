.class Lcom/android/server/vpn/VpnServiceBinder$2;
.super Ljava/lang/Object;
.source "VpnServiceBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vpn/VpnServiceBinder;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vpn/VpnServiceBinder;

.field final synthetic val$s:Lcom/android/server/vpn/VpnService;


# direct methods
.method constructor <init>(Lcom/android/server/vpn/VpnServiceBinder;Lcom/android/server/vpn/VpnService;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/vpn/VpnServiceBinder$2;->this$0:Lcom/android/server/vpn/VpnServiceBinder;

    iput-object p2, p0, Lcom/android/server/vpn/VpnServiceBinder$2;->val$s:Lcom/android/server/vpn/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder$2;->val$s:Lcom/android/server/vpn/VpnService;

    invoke-virtual {v0}, Lcom/android/server/vpn/VpnService;->onDisconnect()V

    .line 72
    return-void
.end method
