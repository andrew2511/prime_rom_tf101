.class final Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder$2;
.super Ljava/lang/Object;
.source "RelatedItemsBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;->buildRelatedItems([Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder$2;->this$0:Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder$2;->this$0:Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;

    invoke-virtual {v0, p1}, Lcom/nvidia/tegrazone/builders/RelatedItemsBuilder;->onNewsClick(Landroid/view/View;)V

    .line 52
    return-void
.end method
