.class Lcom/google/android/music/TopBar$2;
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

.field final synthetic val$newVisibility:I


# direct methods
.method constructor <init>(Lcom/google/android/music/TopBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/google/android/music/TopBar$2;->this$0:Lcom/google/android/music/TopBar;

    iput p2, p0, Lcom/google/android/music/TopBar$2;->val$newVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 353
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 354
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/music/TopBar$2;->this$0:Lcom/google/android/music/TopBar;

    iget v1, p0, Lcom/google/android/music/TopBar$2;->val$newVisibility:I

    invoke-static {v0, v1}, Lcom/google/android/music/TopBar;->access$400(Lcom/google/android/music/TopBar;I)V

    .line 358
    return-void
.end method
