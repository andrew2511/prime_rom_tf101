.class Lcom/google/android/music/menu/ManageMusicMenu$1;
.super Ljava/lang/Object;
.source "ManageMusicMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/menu/ManageMusicMenu;->setVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/menu/ManageMusicMenu;

.field final synthetic val$newVisibility:I


# direct methods
.method constructor <init>(Lcom/google/android/music/menu/ManageMusicMenu;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/music/menu/ManageMusicMenu$1;->this$0:Lcom/google/android/music/menu/ManageMusicMenu;

    iput p2, p0, Lcom/google/android/music/menu/ManageMusicMenu$1;->val$newVisibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 103
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 101
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu$1;->this$0:Lcom/google/android/music/menu/ManageMusicMenu;

    iget v1, p0, Lcom/google/android/music/menu/ManageMusicMenu$1;->val$newVisibility:I

    invoke-static {v0, v1}, Lcom/google/android/music/menu/ManageMusicMenu;->access$000(Lcom/google/android/music/menu/ManageMusicMenu;I)V

    .line 99
    return-void
.end method
