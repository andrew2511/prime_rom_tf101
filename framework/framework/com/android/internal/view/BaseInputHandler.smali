.class public abstract Lcom/android/internal/view/BaseInputHandler;
.super Ljava/lang/Object;
.source "BaseInputHandler.java"

# interfaces
.implements Landroid/view/InputHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleKey(Landroid/view/KeyEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 4
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 31
    return-void
.end method

.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 4
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 35
    return-void
.end method
