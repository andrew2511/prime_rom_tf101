.class final Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$9;
.super Ljava/lang/Object;
.source "AppDetailsBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initOfficialReviewsForPhone(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$9;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iput-object p2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$9;->val$activity:Landroid/app/Activity;

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$9;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$9;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->access$4(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/app/Activity;Landroid/view/View;)V

    .line 529
    return-void
.end method
