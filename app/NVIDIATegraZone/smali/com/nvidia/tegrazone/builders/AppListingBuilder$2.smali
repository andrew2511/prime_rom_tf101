.class final Lcom/nvidia/tegrazone/builders/AppListingBuilder$2;
.super Ljava/lang/Object;
.source "AppListingBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/AppListingBuilder;->buildGameList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

.field private final synthetic val$customView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/AppListingBuilder;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder$2;->this$0:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    iput-object p2, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder$2;->val$customView:Landroid/view/View;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder$2;->val$customView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 77
    return-void
.end method
