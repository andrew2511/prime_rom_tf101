.class Lcom/asus/Viewer/MovieView$3;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/Viewer/MovieView;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/MovieView;


# direct methods
.method constructor <init>(Lcom/asus/Viewer/MovieView;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/asus/Viewer/MovieView$3;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$3;->this$0:Lcom/asus/Viewer/MovieView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/Viewer/MovieView;->access$402(Lcom/asus/Viewer/MovieView;Z)Z

    .line 416
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$3;->this$0:Lcom/asus/Viewer/MovieView;

    const/16 v1, 0x33

    invoke-static {v0, v1}, Lcom/asus/Viewer/MovieView;->access$502(Lcom/asus/Viewer/MovieView;I)I

    .line 417
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 418
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 419
    return-void
.end method
