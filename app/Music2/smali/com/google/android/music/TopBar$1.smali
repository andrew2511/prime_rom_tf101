.class Lcom/google/android/music/TopBar$1;
.super Ljava/lang/Object;
.source "TopBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TopBar;->setVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TopBar;


# direct methods
.method constructor <init>(Lcom/google/android/music/TopBar;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/music/TopBar$1;->this$0:Lcom/google/android/music/TopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/android/music/TopBar$1;->this$0:Lcom/google/android/music/TopBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/music/TopBar;->access$400(Lcom/google/android/music/TopBar;I)V

    .line 339
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 341
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 342
    return-void
.end method
