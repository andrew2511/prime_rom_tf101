.class Lcom/asus/Viewer/ViewImage$5;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/Viewer/ViewImage;->show(IZ)V
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
    .line 260
    iput-object p1, p0, Lcom/asus/Viewer/ViewImage$5;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$5;->this$0:Lcom/asus/Viewer/ViewImage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/Viewer/ViewImage;->access$302(Lcom/asus/Viewer/ViewImage;Z)Z

    .line 263
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$5;->this$0:Lcom/asus/Viewer/ViewImage;

    const/16 v1, 0x34

    invoke-static {v0, v1}, Lcom/asus/Viewer/ViewImage;->access$402(Lcom/asus/Viewer/ViewImage;I)I

    .line 264
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 265
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 266
    return-void
.end method
