.class Lcom/google/android/music/BackgroundView$1;
.super Ljava/lang/Object;
.source "BackgroundView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/BackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/BackgroundView;


# direct methods
.method constructor <init>(Lcom/google/android/music/BackgroundView;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/music/BackgroundView$1;->this$0:Lcom/google/android/music/BackgroundView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/music/BackgroundView$1;->this$0:Lcom/google/android/music/BackgroundView;

    iget-object v1, p0, Lcom/google/android/music/BackgroundView$1;->this$0:Lcom/google/android/music/BackgroundView;

    iget-object v1, v1, Lcom/google/android/music/BackgroundView;->mAnimation:Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;

    invoke-virtual {v0, v1}, Lcom/google/android/music/BackgroundView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    return-void
.end method
