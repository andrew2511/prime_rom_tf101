.class Lcom/asus/Viewer/ViewImage$2;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/Viewer/ViewImage;->hide(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/ViewImage;


# direct methods
.method constructor <init>(Lcom/asus/Viewer/ViewImage;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/asus/Viewer/ViewImage$2;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$2;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$100(Lcom/asus/Viewer/ViewImage;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$2;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-static {v0}, Lcom/asus/Viewer/ViewImage;->access$200(Lcom/asus/Viewer/ViewImage;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$2;->this$0:Lcom/asus/Viewer/ViewImage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/Viewer/ViewImage;->access$302(Lcom/asus/Viewer/ViewImage;Z)Z

    .line 182
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$2;->this$0:Lcom/asus/Viewer/ViewImage;

    const/16 v1, 0x33

    invoke-static {v0, v1}, Lcom/asus/Viewer/ViewImage;->access$402(Lcom/asus/Viewer/ViewImage;I)I

    .line 183
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 184
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 185
    return-void
.end method
