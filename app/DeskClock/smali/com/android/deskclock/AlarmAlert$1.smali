.class Lcom/android/deskclock/AlarmAlert$1;
.super Landroid/os/Handler;
.source "AlarmAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/deskclock/AlarmAlert$1;->this$0:Lcom/android/deskclock/AlarmAlert;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlert$1;->this$0:Lcom/android/deskclock/AlarmAlert;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/app/KeyguardManager;

    invoke-static {v0, p0}, Lcom/android/deskclock/AlarmAlert;->access$000(Lcom/android/deskclock/AlarmAlert;Landroid/app/KeyguardManager;)V

    .line 43
    return-void
.end method
