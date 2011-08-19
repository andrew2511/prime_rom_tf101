.class Lcom/layar/data/event/EventsManager$1;
.super Landroid/os/Handler;
.source "EventsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/event/EventsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/event/EventsManager;


# direct methods
.method constructor <init>(Lcom/layar/data/event/EventsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/event/EventsManager$1;->this$0:Lcom/layar/data/event/EventsManager;

    .line 126
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 131
    iget-object v0, p0, Lcom/layar/data/event/EventsManager$1;->this$0:Lcom/layar/data/event/EventsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/layar/data/event/EventsManager;->postEvents(Z)Z

    .line 132
    return-void
.end method
