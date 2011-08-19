.class public Lcom/asus/vibe2/Srv_QueryMainList$VibePlaybackServiceBinder;
.super Landroid/os/Binder;
.source "Srv_QueryMainList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Srv_QueryMainList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VibePlaybackServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Srv_QueryMainList;


# direct methods
.method public constructor <init>(Lcom/asus/vibe2/Srv_QueryMainList;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/asus/vibe2/Srv_QueryMainList$VibePlaybackServiceBinder;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
