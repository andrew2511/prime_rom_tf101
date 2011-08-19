.class final Lcom/zinio/mobile/android/a/b/x;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/a/b/l;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/a/b/l;)V
    .locals 0
    .parameter

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/zinio/mobile/android/a/b/x;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/x;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->k()V

    .line 1169
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b/x;->a:Lcom/zinio/mobile/android/a/b/l;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/l;->f()V

    .line 1170
    return-void
.end method
