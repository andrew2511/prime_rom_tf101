.class Lcom/google/android/finsky/layout/PromoStrip$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PromoStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/PromoStrip;->createScrollAnimation(FJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/PromoStrip;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/PromoStrip;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/android/finsky/layout/PromoStrip$2;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$2;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/PromoStrip;->access$602(Lcom/google/android/finsky/layout/PromoStrip;Z)Z

    .line 396
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$2;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    invoke-static {v0}, Lcom/google/android/finsky/layout/PromoStrip;->access$700(Lcom/google/android/finsky/layout/PromoStrip;)V

    .line 397
    return-void
.end method
