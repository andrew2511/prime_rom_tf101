.class Lcom/layar/Main$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/Main;->updateMessageText(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/Main;

.field private final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/layar/Main;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/Main$2;->this$0:Lcom/layar/Main;

    iput p2, p0, Lcom/layar/Main$2;->val$resId:I

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/layar/Main$2;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$14(Lcom/layar/Main;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/layar/Main$2;->val$resId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 421
    iget-object v0, p0, Lcom/layar/Main$2;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$14(Lcom/layar/Main;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 422
    return-void
.end method
