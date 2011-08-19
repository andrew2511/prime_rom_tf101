.class Lcom/layar/TwitterEmailActivity$2;
.super Ljava/lang/Object;
.source "TwitterEmailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/TwitterEmailActivity;->doneListner()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/TwitterEmailActivity;


# direct methods
.method constructor <init>(Lcom/layar/TwitterEmailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/TwitterEmailActivity$2;->this$0:Lcom/layar/TwitterEmailActivity;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/layar/TwitterEmailActivity$2;->this$0:Lcom/layar/TwitterEmailActivity;

    invoke-static {v0}, Lcom/layar/TwitterEmailActivity;->access$0(Lcom/layar/TwitterEmailActivity;)V

    .line 58
    return-void
.end method
