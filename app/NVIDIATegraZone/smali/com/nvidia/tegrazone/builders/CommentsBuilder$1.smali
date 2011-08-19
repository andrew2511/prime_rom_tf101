.class final Lcom/nvidia/tegrazone/builders/CommentsBuilder$1;
.super Ljava/lang/Object;
.source "CommentsBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/CommentsBuilder;->buildComments()V
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
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder$1;->this$0:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/CommentsBuilder$1;->this$0:Lcom/nvidia/tegrazone/builders/CommentsBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/CommentsBuilder;->handleMoreClicked()V

    .line 118
    return-void
.end method
