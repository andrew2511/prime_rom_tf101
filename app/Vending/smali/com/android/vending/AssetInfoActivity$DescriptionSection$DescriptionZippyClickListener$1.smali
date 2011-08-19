.class Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener$1;
.super Lcom/android/vending/compat/animation/AnimatorListenerAdapter;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener$1;->this$2:Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;

    invoke-direct {p0}, Lcom/android/vending/compat/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/vending/compat/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener$1;->this$2:Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;->access$3902(Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;Z)Z

    .line 1516
    return-void
.end method
