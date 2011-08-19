.class final Lcom/nvidia/tegrazone/builders/CapsuleBuilder$1;
.super Ljava/lang/Object;
.source "CapsuleBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/CapsuleBuilder;->buildTopCapsule(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

.field private final synthetic val$tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/CapsuleBuilder;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder$1;->this$0:Lcom/nvidia/tegrazone/builders/CapsuleBuilder;

    iput-object p2, p0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder$1;->val$game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    iput-object p3, p0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder$1;->val$tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 59
    new-instance v0, Lcom/nvidia/tegrazone/utils/NVMarketManager;

    invoke-direct {v0}, Lcom/nvidia/tegrazone/utils/NVMarketManager;-><init>()V

    .line 60
    .local v0, mgr:Lcom/nvidia/tegrazone/utils/NVMarketManager;
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder$1;->val$game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/nvidia/tegrazone/utils/NVMarketManager;->manageMarketAction(Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/app/Activity;)V

    .line 62
    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder$1;->val$tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v3

    iget-object v3, v3, Lcom/nvidia/tegrazone/model/NVModel;->deviceSize:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Clicks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    const-string v3, "Buy Button"

    .line 65
    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/CapsuleBuilder$1;->val$game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v4}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v4

    .line 66
    const/4 v5, 0x0

    .line 62
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    return-void
.end method
