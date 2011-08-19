.class final Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$1;
.super Ljava/lang/Object;
.source "AppDetailsBuilder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->buildPDP(Landroid/app/Activity;Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$1;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iput-object p2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$1;->val$game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$1;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$1;->val$game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-static {v0, v1, p2, v2, p3}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->access$0(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/app/Activity;Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;I)V

    .line 154
    return-void
.end method
