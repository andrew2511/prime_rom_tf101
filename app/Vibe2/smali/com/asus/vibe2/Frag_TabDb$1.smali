.class Lcom/asus/vibe2/Frag_TabDb$1;
.super Landroid/content/BroadcastReceiver;
.source "Frag_TabDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Frag_TabDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Frag_TabDb;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Frag_TabDb;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/asus/vibe2/Frag_TabDb$1;->this$0:Lcom/asus/vibe2/Frag_TabDb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/asus/vibe2/Frag_TabDb$1;->this$0:Lcom/asus/vibe2/Frag_TabDb;

    invoke-static {v0}, Lcom/asus/vibe2/Frag_TabDb;->access$000(Lcom/asus/vibe2/Frag_TabDb;)V

    .line 36
    return-void
.end method
