.class Lcom/layar/WelcomeSequenceActivity$2;
.super Ljava/lang/Object;
.source "WelcomeSequenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/WelcomeSequenceActivity;->onSkipClick()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/WelcomeSequenceActivity;


# direct methods
.method constructor <init>(Lcom/layar/WelcomeSequenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/WelcomeSequenceActivity$2;->this$0:Lcom/layar/WelcomeSequenceActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/layar/WelcomeSequenceActivity$2;->this$0:Lcom/layar/WelcomeSequenceActivity;

    invoke-static {v0}, Lcom/layar/WelcomeSequenceActivity;->access$2(Lcom/layar/WelcomeSequenceActivity;)V

    .line 90
    iget-object v0, p0, Lcom/layar/WelcomeSequenceActivity$2;->this$0:Lcom/layar/WelcomeSequenceActivity;

    invoke-virtual {v0}, Lcom/layar/WelcomeSequenceActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/layar/WelcomeSequenceActivity$2;->this$0:Lcom/layar/WelcomeSequenceActivity;

    invoke-virtual {v0}, Lcom/layar/WelcomeSequenceActivity;->finish()V

    .line 92
    :cond_0
    return-void
.end method
