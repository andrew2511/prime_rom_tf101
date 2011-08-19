.class Lcom/layar/Main$3;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/Main;->updateMessageText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/Main;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/Main;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/Main$3;->this$0:Lcom/layar/Main;

    iput-object p2, p0, Lcom/layar/Main$3;->val$text:Ljava/lang/String;

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/layar/Main$3;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$14(Lcom/layar/Main;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/Main$3;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/layar/Main$3;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$14(Lcom/layar/Main;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 431
    return-void
.end method
