.class final Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$7;
.super Ljava/lang/Object;
.source "AppDetailsBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initCommentsAndRatingsViewMoreLink(Landroid/app/Activity;Lcom/nvidia/tegrazone/model/vo/LargeGameVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$7;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$7;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->showCommentsArea()V

    .line 386
    return-void
.end method
