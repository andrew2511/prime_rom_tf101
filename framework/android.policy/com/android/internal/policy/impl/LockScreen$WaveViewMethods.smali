.class Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/WaveView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaveViewMethods"
.end annotation


# static fields
.field private static final STAY_ON_WHILE_GRABBED_TIMEOUT:I = 0x7530

.field private static final WAIT_FOR_ANIMATION_TIMEOUT:I


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 5
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 240
    const/16 v0, 0xa

    if-ne p2, v0, :cond_f

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 243
    :cond_f
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 7
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 223
    const/16 v0, 0xa

    if-ne p2, v0, :cond_10

    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    new-instance v1, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods$1;-><init>(Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :cond_10
    return-void
.end method
