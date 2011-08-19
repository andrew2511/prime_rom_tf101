.class final Lcom/nvidia/tegrazone/builders/AppGalleryBuilder$1;
.super Ljava/lang/Object;
.source "AppGalleryBuilder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->buildGallery()V
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
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder$1;->this$0:Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 45
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder$1;->this$0:Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;->access$0(Lcom/nvidia/tegrazone/builders/AppGalleryBuilder;Ljava/lang/String;)V

    .line 46
    return-void
.end method
