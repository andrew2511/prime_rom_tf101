.class final Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$12;
.super Ljava/lang/Object;
.source "AppDetailsBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initDescriptionSection(Landroid/app/Activity;Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

.field private final synthetic val$descriptionArea:Landroid/view/ViewGroup;

.field private final synthetic val$descriptionMoreLinkArea:Landroid/view/ViewGroup;

.field private final synthetic val$descriptionText:Landroid/widget/TextView;

.field private final synthetic val$featuresArea:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$12;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iput-object p2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$12;->val$descriptionMoreLinkArea:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$12;->val$featuresArea:Landroid/view/View;

    iput-object p4, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$12;->val$descriptionText:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$12;->val$descriptionArea:Landroid/view/ViewGroup;

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$12;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$12;->val$descriptionMoreLinkArea:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$12;->val$featuresArea:Landroid/view/View;

    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$12;->val$descriptionText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$12;->val$descriptionArea:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->access$5(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    .line 640
    return-void
.end method
