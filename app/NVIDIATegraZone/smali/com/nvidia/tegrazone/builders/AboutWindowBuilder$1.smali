.class final Lcom/nvidia/tegrazone/builders/AboutWindowBuilder$1;
.super Ljava/lang/Object;
.source "AboutWindowBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->showAboutWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder$1;->this$0:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder$1;->this$0:Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->dismissPopup()V

    .line 46
    return-void
.end method
