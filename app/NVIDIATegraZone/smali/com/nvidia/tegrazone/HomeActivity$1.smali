.class final Lcom/nvidia/tegrazone/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/HomeActivity;->buildNews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/HomeActivity;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/HomeActivity$1;->this$0:Lcom/nvidia/tegrazone/HomeActivity;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nvidia/tegrazone/HomeActivity$1;->this$0:Lcom/nvidia/tegrazone/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/nvidia/tegrazone/HomeActivity;->onNewsClick(Landroid/view/View;)V

    .line 155
    return-void
.end method
