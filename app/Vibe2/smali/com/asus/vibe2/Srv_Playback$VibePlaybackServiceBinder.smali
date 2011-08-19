.class public Lcom/asus/vibe2/Srv_Playback$VibePlaybackServiceBinder;
.super Landroid/os/Binder;
.source "Srv_Playback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Srv_Playback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VibePlaybackServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Srv_Playback;


# direct methods
.method public constructor <init>(Lcom/asus/vibe2/Srv_Playback;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/asus/vibe2/Srv_Playback$VibePlaybackServiceBinder;->this$0:Lcom/asus/vibe2/Srv_Playback;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/asus/vibe2/Srv_Playback;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/asus/vibe2/Srv_Playback$VibePlaybackServiceBinder;->this$0:Lcom/asus/vibe2/Srv_Playback;

    return-object v0
.end method
