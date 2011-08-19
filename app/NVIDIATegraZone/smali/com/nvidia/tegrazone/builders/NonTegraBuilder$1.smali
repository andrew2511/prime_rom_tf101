.class final Lcom/nvidia/tegrazone/builders/NonTegraBuilder$1;
.super Ljava/lang/Object;
.source "NonTegraBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->showWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/NonTegraBuilder;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/NonTegraBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder$1;->this$0:Lcom/nvidia/tegrazone/builders/NonTegraBuilder;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder$1;->this$0:Lcom/nvidia/tegrazone/builders/NonTegraBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->dismissPopup()V

    .line 38
    return-void
.end method
