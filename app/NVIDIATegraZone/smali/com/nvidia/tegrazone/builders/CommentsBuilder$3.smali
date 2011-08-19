.class final Lcom/nvidia/tegrazone/builders/CommentsBuilder$3;
.super Ljava/lang/Object;
.source "CommentsBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/CommentsBuilder;->buildRateThis()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/CommentsBuilder;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/CommentsBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder$3;->this$0:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder$3;->this$0:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    invoke-static {v0}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->access$0(Lcom/nvidia/tegrazone/builders/CommentsBuilder;)Lcom/nvidia/tegrazone/utils/RatingHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/utils/RatingHelper;->handleRateThis(Ljava/lang/Boolean;)V

    .line 166
    return-void
.end method
