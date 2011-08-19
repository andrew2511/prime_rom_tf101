.class final Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$10;
.super Ljava/lang/Object;
.source "AppDetailsBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initOfficialReviewsForTablet(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

.field private final synthetic val$firstOfficialReview:Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$10;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iput-object p2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$10;->val$firstOfficialReview:Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$10;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$10;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-static {v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->access$1(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$10;->val$firstOfficialReview:Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;

    invoke-virtual {v0, v1, v2}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->openFullArticle(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/OfficialReviewVO;)V

    .line 554
    return-void
.end method
