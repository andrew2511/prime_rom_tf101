.class Lcom/layar/TwitterEmailActivity$1;
.super Ljava/lang/Object;
.source "TwitterEmailActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/TwitterEmailActivity;->softDone()Landroid/widget/TextView$OnEditorActionListener;
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
    iput-object p1, p0, Lcom/layar/TwitterEmailActivity$1;->this$0:Lcom/layar/TwitterEmailActivity;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 45
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/layar/TwitterEmailActivity$1;->this$0:Lcom/layar/TwitterEmailActivity;

    invoke-static {v0}, Lcom/layar/TwitterEmailActivity;->access$0(Lcom/layar/TwitterEmailActivity;)V

    .line 48
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
