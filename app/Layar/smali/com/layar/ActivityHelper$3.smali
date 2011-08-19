.class Lcom/layar/ActivityHelper$3;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ActivityHelper;->showLoginPromtDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ActivityHelper;

.field private final synthetic val$messageId:I


# direct methods
.method constructor <init>(Lcom/layar/ActivityHelper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ActivityHelper$3;->this$0:Lcom/layar/ActivityHelper;

    iput p2, p0, Lcom/layar/ActivityHelper$3;->val$messageId:I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/layar/ActivityHelper$3;->this$0:Lcom/layar/ActivityHelper;

    iget v1, p0, Lcom/layar/ActivityHelper$3;->val$messageId:I

    invoke-virtual {v0, v1}, Lcom/layar/ActivityHelper;->loginPrompt(I)V

    .line 120
    return-void
.end method
