.class Landroid/net/wifi/WpsStateMachine$InactiveState;
.super Lcom/android/internal/util/HierarchicalState;
.source "WpsStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WpsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WpsStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WpsStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Landroid/net/wifi/WpsStateMachine$InactiveState;->this$0:Landroid/net/wifi/WpsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 1

    .prologue
    .line 189
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter "message"

    .prologue
    .line 193
    const/4 v0, 0x1

    .line 195
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_8

    .line 200
    const/4 v0, 0x0

    .line 202
    :pswitch_7
    return v0

    .line 195
    :pswitch_data_8
    .packed-switch 0x10027
        :pswitch_7
    .end packed-switch
.end method
