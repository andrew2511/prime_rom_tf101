.class Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods$1;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;->onTrigger(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods$1;->this$1:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods$1;->this$1:Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$300(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 228
    return-void
.end method
