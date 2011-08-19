.class Lcom/android/server/vpn/VpnServiceBinder$1;
.super Ljava/lang/Object;
.source "VpnServiceBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vpn/VpnServiceBinder;->connect(Landroid/net/vpn/VpnProfile;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vpn/VpnServiceBinder;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$s:Lcom/android/server/vpn/VpnService;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/vpn/VpnServiceBinder;Lcom/android/server/vpn/VpnService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/vpn/VpnServiceBinder$1;->this$0:Lcom/android/server/vpn/VpnServiceBinder;

    iput-object p2, p0, Lcom/android/server/vpn/VpnServiceBinder$1;->val$s:Lcom/android/server/vpn/VpnService;

    iput-object p3, p0, Lcom/android/server/vpn/VpnServiceBinder$1;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/vpn/VpnServiceBinder$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/vpn/VpnServiceBinder$1;->val$s:Lcom/android/server/vpn/VpnService;

    iget-object v1, p0, Lcom/android/server/vpn/VpnServiceBinder$1;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/vpn/VpnServiceBinder$1;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vpn/VpnService;->onConnect(Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    return-void
.end method
