.class Lcom/asus/vibe2/Frag_Panel$1;
.super Landroid/content/BroadcastReceiver;
.source "Frag_Panel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/vibe2/Frag_Panel;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Frag_Panel;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Frag_Panel;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/asus/vibe2/Frag_Panel$1;->this$0:Lcom/asus/vibe2/Frag_Panel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/asus/vibe2/Frag_Panel$1;->this$0:Lcom/asus/vibe2/Frag_Panel;

    invoke-static {v0}, Lcom/asus/vibe2/Frag_Panel;->access$000(Lcom/asus/vibe2/Frag_Panel;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/asus/vibe2/Utils_SrvPlayback;->updateNowPlaying(Landroid/content/Context;Landroid/view/View;)V

    .line 39
    return-void
.end method
