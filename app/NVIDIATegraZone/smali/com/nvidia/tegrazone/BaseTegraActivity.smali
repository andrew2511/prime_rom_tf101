.class public Lcom/nvidia/tegrazone/BaseTegraActivity;
.super Landroid/app/Activity;
.source "BaseTegraActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nvidia/tegrazone/NoInternetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .local v0, myIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/BaseTegraActivity;->startActivity(Landroid/content/Intent;)V

    .line 11
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/BaseTegraActivity;->finish()V

    .line 12
    return-void
.end method
