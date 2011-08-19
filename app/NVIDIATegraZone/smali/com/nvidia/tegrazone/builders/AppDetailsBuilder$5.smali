.class final Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$5;
.super Ljava/lang/Object;
.source "AppDetailsBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->initRelatedNewsAndGamesForPhone([Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;Landroid/widget/LinearLayout;)V
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
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$5;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$5;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    iget-object v1, p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$5;->this$0:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;

    invoke-static {v1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->access$1(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;->access$2(Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;Landroid/app/Activity;Landroid/view/View;)V

    .line 269
    return-void
.end method
