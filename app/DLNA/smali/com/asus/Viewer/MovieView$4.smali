.class Lcom/asus/Viewer/MovieView$4;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/Viewer/MovieView;->hide(I)V
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
    .line 452
    iput-object p1, p0, Lcom/asus/Viewer/MovieView$4;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$4;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v0}, Lcom/asus/Viewer/MovieView;->access$600(Lcom/asus/Viewer/MovieView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 455
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$4;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v0}, Lcom/asus/Viewer/MovieView;->access$700(Lcom/asus/Viewer/MovieView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$4;->this$0:Lcom/asus/Viewer/MovieView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/Viewer/MovieView;->access$402(Lcom/asus/Viewer/MovieView;Z)Z

    .line 457
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$4;->this$0:Lcom/asus/Viewer/MovieView;

    const/16 v1, 0x33

    invoke-static {v0, v1}, Lcom/asus/Viewer/MovieView;->access$502(Lcom/asus/Viewer/MovieView;I)I

    .line 458
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 459
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 460
    return-void
.end method
