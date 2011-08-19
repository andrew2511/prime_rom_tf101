.class Lcom/layar/TermsActivity$3;
.super Ljava/lang/Object;
.source "TermsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/TermsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/TermsActivity;


# direct methods
.method constructor <init>(Lcom/layar/TermsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/TermsActivity$3;->this$0:Lcom/layar/TermsActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/layar/TermsActivity$3;->this$0:Lcom/layar/TermsActivity;

    invoke-virtual {v0}, Lcom/layar/TermsActivity;->finish()V

    .line 68
    return-void
.end method
