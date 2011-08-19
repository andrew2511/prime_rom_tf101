.class final Lcom/nvidia/tegrazone/builders/AppListingBuilder$1;
.super Ljava/lang/Object;
.source "AppListingBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/AppListingBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder$1;->this$0:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AppListingBuilder$1;->this$0:Lcom/nvidia/tegrazone/builders/AppListingBuilder;

    invoke-static {v0, p1}, Lcom/nvidia/tegrazone/builders/AppListingBuilder;->access$0(Lcom/nvidia/tegrazone/builders/AppListingBuilder;Landroid/view/View;)V

    .line 53
    return-void
.end method
