.class Lcom/android/deskclock/DeskClock$3;
.super Landroid/database/ContentObserver;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$3;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$3;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$900(Lcom/android/deskclock/DeskClock;)V

    .line 203
    return-void
.end method
