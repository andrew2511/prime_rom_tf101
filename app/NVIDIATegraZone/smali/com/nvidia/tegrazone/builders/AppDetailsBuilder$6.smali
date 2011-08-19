.class final Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$6;
.super Ljava/lang/Object;
.source "AppDetailsBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initCommentsAndRatingsTopArea(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

.field private final synthetic val$ratingHelper:Lcom/nvidia/tegrazone/utils/RatingHelper;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Lcom/nvidia/tegrazone/utils/RatingHelper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$6;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iput-object p2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$6;->val$ratingHelper:Lcom/nvidia/tegrazone/utils/RatingHelper;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$6;->val$ratingHelper:Lcom/nvidia/tegrazone/utils/RatingHelper;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/utils/RatingHelper;->handleRateThis(Ljava/lang/Boolean;)V

    .line 350
    return-void
.end method
