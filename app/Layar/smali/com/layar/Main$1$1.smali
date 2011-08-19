.class Lcom/layar/Main$1$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/Main$1;->handleResponse(Lcom/layar/data/user/LoginResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/Main$1;


# direct methods
.method constructor <init>(Lcom/layar/Main$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/Main$1$1;->this$1:Lcom/layar/Main$1;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/layar/Main$1$1;->this$1:Lcom/layar/Main$1;

    invoke-static {v0}, Lcom/layar/Main$1;->access$0(Lcom/layar/Main$1;)Lcom/layar/Main;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/Main;->access$12(Lcom/layar/Main;)V

    .line 208
    return-void
.end method
