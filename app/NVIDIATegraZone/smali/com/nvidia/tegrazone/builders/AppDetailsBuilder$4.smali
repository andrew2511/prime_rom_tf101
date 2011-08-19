.class final Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$4;
.super Ljava/lang/Object;
.source "AppDetailsBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initShareThisViewForTablet(Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

.field private final synthetic val$game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$4;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iput-object p2, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$4;->val$game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$4;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-static {v0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->access$1(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$4;->val$game:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-static {v0, p1, v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->shareThis(Landroid/app/Activity;Landroid/view/View;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V

    .line 234
    return-void
.end method
