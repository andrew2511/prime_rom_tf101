.class Lcom/infraware/slide/UxSlideShowActivity$ArrowFadeAnimationListener;
.super Ljava/lang/Object;
.source "UxSlideShowActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/slide/UxSlideShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrowFadeAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/slide/UxSlideShowActivity;


# direct methods
.method private constructor <init>(Lcom/infraware/slide/UxSlideShowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/infraware/slide/UxSlideShowActivity$ArrowFadeAnimationListener;->this$0:Lcom/infraware/slide/UxSlideShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/slide/UxSlideShowActivity;Lcom/infraware/slide/UxSlideShowActivity$ArrowFadeAnimationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/infraware/slide/UxSlideShowActivity$ArrowFadeAnimationListener;-><init>(Lcom/infraware/slide/UxSlideShowActivity;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/infraware/slide/UxSlideShowActivity$ArrowFadeAnimationListener;->this$0:Lcom/infraware/slide/UxSlideShowActivity;

    invoke-static {v0}, Lcom/infraware/slide/UxSlideShowActivity;->access$0(Lcom/infraware/slide/UxSlideShowActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 288
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 293
    return-void
.end method
