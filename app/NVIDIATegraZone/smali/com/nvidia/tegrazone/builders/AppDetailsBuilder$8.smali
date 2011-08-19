.class final Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$8;
.super Ljava/lang/Object;
.source "AppDetailsBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initCommentsAndRatingsForPhone(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$8;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iput-object p2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$8;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$8;->val$game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$8;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$8;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$8;->val$game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    const-string v3, "Developer Name"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->access$3(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/app/Activity;Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Ljava/lang/String;)V

    .line 464
    return-void
.end method
